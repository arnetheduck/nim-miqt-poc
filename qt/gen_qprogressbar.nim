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
{.compile("gen_qprogressbar.cpp", cflags).}


type QProgressBarDirection* = cint
const
  QProgressBarTopToBottom* = 0
  QProgressBarBottomToTop* = 1



import gen_qprogressbar_types
export gen_qprogressbar_types

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

type cQProgressBar*{.exportc: "QProgressBar", incompleteStruct.} = object

proc fcQProgressBar_new(parent: pointer): ptr cQProgressBar {.importc: "QProgressBar_new".}
proc fcQProgressBar_new2(): ptr cQProgressBar {.importc: "QProgressBar_new2".}
proc fcQProgressBar_metaObject(self: pointer, ): pointer {.importc: "QProgressBar_metaObject".}
proc fcQProgressBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressBar_metacast".}
proc fcQProgressBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressBar_metacall".}
proc fcQProgressBar_tr(s: cstring): struct_miqt_string {.importc: "QProgressBar_tr".}
proc fcQProgressBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QProgressBar_trUtf8".}
proc fcQProgressBar_minimum(self: pointer, ): cint {.importc: "QProgressBar_minimum".}
proc fcQProgressBar_maximum(self: pointer, ): cint {.importc: "QProgressBar_maximum".}
proc fcQProgressBar_value(self: pointer, ): cint {.importc: "QProgressBar_value".}
proc fcQProgressBar_text(self: pointer, ): struct_miqt_string {.importc: "QProgressBar_text".}
proc fcQProgressBar_setTextVisible(self: pointer, visible: bool): void {.importc: "QProgressBar_setTextVisible".}
proc fcQProgressBar_isTextVisible(self: pointer, ): bool {.importc: "QProgressBar_isTextVisible".}
proc fcQProgressBar_alignment(self: pointer, ): cint {.importc: "QProgressBar_alignment".}
proc fcQProgressBar_setAlignment(self: pointer, alignment: cint): void {.importc: "QProgressBar_setAlignment".}
proc fcQProgressBar_sizeHint(self: pointer, ): pointer {.importc: "QProgressBar_sizeHint".}
proc fcQProgressBar_minimumSizeHint(self: pointer, ): pointer {.importc: "QProgressBar_minimumSizeHint".}
proc fcQProgressBar_orientation(self: pointer, ): cint {.importc: "QProgressBar_orientation".}
proc fcQProgressBar_setInvertedAppearance(self: pointer, invert: bool): void {.importc: "QProgressBar_setInvertedAppearance".}
proc fcQProgressBar_invertedAppearance(self: pointer, ): bool {.importc: "QProgressBar_invertedAppearance".}
proc fcQProgressBar_setTextDirection(self: pointer, textDirection: cint): void {.importc: "QProgressBar_setTextDirection".}
proc fcQProgressBar_textDirection(self: pointer, ): cint {.importc: "QProgressBar_textDirection".}
proc fcQProgressBar_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QProgressBar_setFormat".}
proc fcQProgressBar_resetFormat(self: pointer, ): void {.importc: "QProgressBar_resetFormat".}
proc fcQProgressBar_format(self: pointer, ): struct_miqt_string {.importc: "QProgressBar_format".}
proc fcQProgressBar_reset(self: pointer, ): void {.importc: "QProgressBar_reset".}
proc fcQProgressBar_setRange(self: pointer, minimum: cint, maximum: cint): void {.importc: "QProgressBar_setRange".}
proc fcQProgressBar_setMinimum(self: pointer, minimum: cint): void {.importc: "QProgressBar_setMinimum".}
proc fcQProgressBar_setMaximum(self: pointer, maximum: cint): void {.importc: "QProgressBar_setMaximum".}
proc fcQProgressBar_setValue(self: pointer, value: cint): void {.importc: "QProgressBar_setValue".}
proc fcQProgressBar_setOrientation(self: pointer, orientation: cint): void {.importc: "QProgressBar_setOrientation".}
proc fcQProgressBar_valueChanged(self: pointer, value: cint): void {.importc: "QProgressBar_valueChanged".}
proc fQProgressBar_connect_valueChanged(self: pointer, slot: int) {.importc: "QProgressBar_connect_valueChanged".}
proc fcQProgressBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressBar_tr2".}
proc fcQProgressBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressBar_tr3".}
proc fcQProgressBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressBar_trUtf82".}
proc fcQProgressBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressBar_trUtf83".}
proc fQProgressBar_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QProgressBar_virtualbase_metaObject".}
proc fcQProgressBar_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_metaObject".}
proc fQProgressBar_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QProgressBar_virtualbase_metacast".}
proc fcQProgressBar_override_virtual_metacast(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_metacast".}
proc fQProgressBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QProgressBar_virtualbase_metacall".}
proc fcQProgressBar_override_virtual_metacall(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_metacall".}
proc fQProgressBar_virtualbase_text(self: pointer, ): struct_miqt_string{.importc: "QProgressBar_virtualbase_text".}
proc fcQProgressBar_override_virtual_text(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_text".}
proc fQProgressBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QProgressBar_virtualbase_sizeHint".}
proc fcQProgressBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_sizeHint".}
proc fQProgressBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QProgressBar_virtualbase_minimumSizeHint".}
proc fcQProgressBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_minimumSizeHint".}
proc fQProgressBar_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QProgressBar_virtualbase_event".}
proc fcQProgressBar_override_virtual_event(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_event".}
proc fQProgressBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QProgressBar_virtualbase_paintEvent".}
proc fcQProgressBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_paintEvent".}
proc fQProgressBar_virtualbase_devType(self: pointer, ): cint{.importc: "QProgressBar_virtualbase_devType".}
proc fcQProgressBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_devType".}
proc fQProgressBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QProgressBar_virtualbase_setVisible".}
proc fcQProgressBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_setVisible".}
proc fQProgressBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QProgressBar_virtualbase_heightForWidth".}
proc fcQProgressBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_heightForWidth".}
proc fQProgressBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QProgressBar_virtualbase_hasHeightForWidth".}
proc fcQProgressBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_hasHeightForWidth".}
proc fQProgressBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QProgressBar_virtualbase_paintEngine".}
proc fcQProgressBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_paintEngine".}
proc fQProgressBar_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_mousePressEvent".}
proc fcQProgressBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_mousePressEvent".}
proc fQProgressBar_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_mouseReleaseEvent".}
proc fcQProgressBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_mouseReleaseEvent".}
proc fQProgressBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_mouseDoubleClickEvent".}
proc fcQProgressBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_mouseDoubleClickEvent".}
proc fQProgressBar_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_mouseMoveEvent".}
proc fcQProgressBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_mouseMoveEvent".}
proc fQProgressBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_wheelEvent".}
proc fcQProgressBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_wheelEvent".}
proc fQProgressBar_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_keyPressEvent".}
proc fcQProgressBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_keyPressEvent".}
proc fQProgressBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_keyReleaseEvent".}
proc fcQProgressBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_keyReleaseEvent".}
proc fQProgressBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_focusInEvent".}
proc fcQProgressBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_focusInEvent".}
proc fQProgressBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_focusOutEvent".}
proc fcQProgressBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_focusOutEvent".}
proc fQProgressBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_enterEvent".}
proc fcQProgressBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_enterEvent".}
proc fQProgressBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_leaveEvent".}
proc fcQProgressBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_leaveEvent".}
proc fQProgressBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_moveEvent".}
proc fcQProgressBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_moveEvent".}
proc fQProgressBar_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_resizeEvent".}
proc fcQProgressBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_resizeEvent".}
proc fQProgressBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_closeEvent".}
proc fcQProgressBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_closeEvent".}
proc fQProgressBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_contextMenuEvent".}
proc fcQProgressBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_contextMenuEvent".}
proc fQProgressBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_tabletEvent".}
proc fcQProgressBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_tabletEvent".}
proc fQProgressBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_actionEvent".}
proc fcQProgressBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_actionEvent".}
proc fQProgressBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_dragEnterEvent".}
proc fcQProgressBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_dragEnterEvent".}
proc fQProgressBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_dragMoveEvent".}
proc fcQProgressBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_dragMoveEvent".}
proc fQProgressBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_dragLeaveEvent".}
proc fcQProgressBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_dragLeaveEvent".}
proc fQProgressBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_dropEvent".}
proc fcQProgressBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_dropEvent".}
proc fQProgressBar_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_showEvent".}
proc fcQProgressBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_showEvent".}
proc fQProgressBar_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_hideEvent".}
proc fcQProgressBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_hideEvent".}
proc fQProgressBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QProgressBar_virtualbase_nativeEvent".}
proc fcQProgressBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_nativeEvent".}
proc fQProgressBar_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QProgressBar_virtualbase_changeEvent".}
proc fcQProgressBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_changeEvent".}
proc fQProgressBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QProgressBar_virtualbase_metric".}
proc fcQProgressBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_metric".}
proc fQProgressBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QProgressBar_virtualbase_initPainter".}
proc fcQProgressBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_initPainter".}
proc fQProgressBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QProgressBar_virtualbase_redirected".}
proc fcQProgressBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_redirected".}
proc fQProgressBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QProgressBar_virtualbase_sharedPainter".}
proc fcQProgressBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_sharedPainter".}
proc fQProgressBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QProgressBar_virtualbase_inputMethodEvent".}
proc fcQProgressBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_inputMethodEvent".}
proc fQProgressBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QProgressBar_virtualbase_inputMethodQuery".}
proc fcQProgressBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_inputMethodQuery".}
proc fQProgressBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QProgressBar_virtualbase_focusNextPrevChild".}
proc fcQProgressBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_focusNextPrevChild".}
proc fQProgressBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QProgressBar_virtualbase_eventFilter".}
proc fcQProgressBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_eventFilter".}
proc fQProgressBar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_timerEvent".}
proc fcQProgressBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_timerEvent".}
proc fQProgressBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_childEvent".}
proc fcQProgressBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_childEvent".}
proc fQProgressBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_customEvent".}
proc fcQProgressBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_customEvent".}
proc fQProgressBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QProgressBar_virtualbase_connectNotify".}
proc fcQProgressBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_connectNotify".}
proc fQProgressBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QProgressBar_virtualbase_disconnectNotify".}
proc fcQProgressBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_disconnectNotify".}
proc fcQProgressBar_staticMetaObject(): pointer {.importc: "QProgressBar_staticMetaObject".}
proc fcQProgressBar_delete(self: pointer) {.importc: "QProgressBar_delete".}


func init*(T: type QProgressBar, h: ptr cQProgressBar): QProgressBar =
  T(h: h)
proc create*(T: type QProgressBar, parent: gen_qwidget.QWidget): QProgressBar =

  QProgressBar.init(fcQProgressBar_new(parent.h))
proc create*(T: type QProgressBar, ): QProgressBar =

  QProgressBar.init(fcQProgressBar_new2())
proc metaObject*(self: QProgressBar, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQProgressBar_metaObject(self.h))

proc metacast*(self: QProgressBar, param1: cstring): pointer =

  fcQProgressBar_metacast(self.h, param1)

proc metacall*(self: QProgressBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQProgressBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QProgressBar, s: cstring): string =

  let v_ms = fcQProgressBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QProgressBar, s: cstring): string =

  let v_ms = fcQProgressBar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc minimum*(self: QProgressBar, ): cint =

  fcQProgressBar_minimum(self.h)

proc maximum*(self: QProgressBar, ): cint =

  fcQProgressBar_maximum(self.h)

proc value*(self: QProgressBar, ): cint =

  fcQProgressBar_value(self.h)

proc text*(self: QProgressBar, ): string =

  let v_ms = fcQProgressBar_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextVisible*(self: QProgressBar, visible: bool): void =

  fcQProgressBar_setTextVisible(self.h, visible)

proc isTextVisible*(self: QProgressBar, ): bool =

  fcQProgressBar_isTextVisible(self.h)

proc alignment*(self: QProgressBar, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQProgressBar_alignment(self.h))

proc setAlignment*(self: QProgressBar, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQProgressBar_setAlignment(self.h, cint(alignment))

proc sizeHint*(self: QProgressBar, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQProgressBar_sizeHint(self.h))

proc minimumSizeHint*(self: QProgressBar, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQProgressBar_minimumSizeHint(self.h))

proc orientation*(self: QProgressBar, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQProgressBar_orientation(self.h))

proc setInvertedAppearance*(self: QProgressBar, invert: bool): void =

  fcQProgressBar_setInvertedAppearance(self.h, invert)

proc invertedAppearance*(self: QProgressBar, ): bool =

  fcQProgressBar_invertedAppearance(self.h)

proc setTextDirection*(self: QProgressBar, textDirection: QProgressBarDirection): void =

  fcQProgressBar_setTextDirection(self.h, cint(textDirection))

proc textDirection*(self: QProgressBar, ): QProgressBarDirection =

  QProgressBarDirection(fcQProgressBar_textDirection(self.h))

proc setFormat*(self: QProgressBar, format: string): void =

  fcQProgressBar_setFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))

proc resetFormat*(self: QProgressBar, ): void =

  fcQProgressBar_resetFormat(self.h)

proc format*(self: QProgressBar, ): string =

  let v_ms = fcQProgressBar_format(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc reset*(self: QProgressBar, ): void =

  fcQProgressBar_reset(self.h)

proc setRange*(self: QProgressBar, minimum: cint, maximum: cint): void =

  fcQProgressBar_setRange(self.h, minimum, maximum)

proc setMinimum*(self: QProgressBar, minimum: cint): void =

  fcQProgressBar_setMinimum(self.h, minimum)

proc setMaximum*(self: QProgressBar, maximum: cint): void =

  fcQProgressBar_setMaximum(self.h, maximum)

proc setValue*(self: QProgressBar, value: cint): void =

  fcQProgressBar_setValue(self.h, value)

proc setOrientation*(self: QProgressBar, orientation: gen_qnamespace.Orientation): void =

  fcQProgressBar_setOrientation(self.h, cint(orientation))

proc valueChanged*(self: QProgressBar, value: cint): void =

  fcQProgressBar_valueChanged(self.h, value)

proc miqt_exec_callback_QProgressBar_valueChanged(slot: int, value: cint) {.exportc.} =
  type Cb = proc(value: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = value


  nimfunc[](slotval1)

proc onvalueChanged*(self: QProgressBar, slot: proc(value: cint)) =
  type Cb = proc(value: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQProgressBar_connect_valueChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QProgressBar, s: cstring, c: cstring): string =

  let v_ms = fcQProgressBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QProgressBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQProgressBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QProgressBar, s: cstring, c: cstring): string =

  let v_ms = fcQProgressBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QProgressBar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQProgressBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QProgressBar, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQProgressBar_virtualbase_metaObject(self.h))

type QProgressBarmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QProgressBar, slot: proc(super: QProgressBarmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_metaObject(self: ptr cQProgressBar, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressBar_metaObject ".} =
  type Cb = proc(super: QProgressBarmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QProgressBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QProgressBar, param1: cstring): pointer =


  fQProgressBar_virtualbase_metacast(self.h, param1)

type QProgressBarmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QProgressBar, slot: proc(super: QProgressBarmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_metacast(self: ptr cQProgressBar, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QProgressBar_metacast ".} =
  type Cb = proc(super: QProgressBarmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QProgressBar(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QProgressBar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQProgressBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QProgressBarmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QProgressBar, slot: proc(super: QProgressBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_metacall(self: ptr cQProgressBar, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QProgressBar_metacall ".} =
  type Cb = proc(super: QProgressBarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QProgressBar(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_text(self: QProgressBar, ): string =


  let v_ms = fQProgressBar_virtualbase_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QProgressBartextBase* = proc(): string
proc ontext*(self: QProgressBar, slot: proc(super: QProgressBartextBase): string) =
  # TODO check subclass
  type Cb = proc(super: QProgressBartextBase): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_text(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_text(self: ptr cQProgressBar, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QProgressBar_text ".} =
  type Cb = proc(super: QProgressBartextBase): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_text(QProgressBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_sizeHint(self: QProgressBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQProgressBar_virtualbase_sizeHint(self.h))

type QProgressBarsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QProgressBar, slot: proc(super: QProgressBarsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_sizeHint(self: ptr cQProgressBar, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressBar_sizeHint ".} =
  type Cb = proc(super: QProgressBarsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QProgressBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QProgressBar, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQProgressBar_virtualbase_minimumSizeHint(self.h))

type QProgressBarminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QProgressBar, slot: proc(super: QProgressBarminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_minimumSizeHint(self: ptr cQProgressBar, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressBar_minimumSizeHint ".} =
  type Cb = proc(super: QProgressBarminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QProgressBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QProgressBar, e: gen_qcoreevent.QEvent): bool =


  fQProgressBar_virtualbase_event(self.h, e.h)

type QProgressBareventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QProgressBar, slot: proc(super: QProgressBareventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressBareventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_event(self: ptr cQProgressBar, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QProgressBar_event ".} =
  type Cb = proc(super: QProgressBareventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QProgressBar(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QProgressBar, param1: gen_qevent.QPaintEvent): void =


  fQProgressBar_virtualbase_paintEvent(self.h, param1.h)

type QProgressBarpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QProgressBar, slot: proc(super: QProgressBarpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_paintEvent(self: ptr cQProgressBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_paintEvent ".} =
  type Cb = proc(super: QProgressBarpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QProgressBar(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QProgressBar, ): cint =


  fQProgressBar_virtualbase_devType(self.h)

type QProgressBardevTypeBase* = proc(): cint
proc ondevType*(self: QProgressBar, slot: proc(super: QProgressBardevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QProgressBardevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_devType(self: ptr cQProgressBar, slot: int): cint {.exportc: "miqt_exec_callback_QProgressBar_devType ".} =
  type Cb = proc(super: QProgressBardevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QProgressBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QProgressBar, visible: bool): void =


  fQProgressBar_virtualbase_setVisible(self.h, visible)

type QProgressBarsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QProgressBar, slot: proc(super: QProgressBarsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_setVisible(self: ptr cQProgressBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QProgressBar_setVisible ".} =
  type Cb = proc(super: QProgressBarsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QProgressBar(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QProgressBar, param1: cint): cint =


  fQProgressBar_virtualbase_heightForWidth(self.h, param1)

type QProgressBarheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QProgressBar, slot: proc(super: QProgressBarheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_heightForWidth(self: ptr cQProgressBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QProgressBar_heightForWidth ".} =
  type Cb = proc(super: QProgressBarheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QProgressBar(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QProgressBar, ): bool =


  fQProgressBar_virtualbase_hasHeightForWidth(self.h)

type QProgressBarhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QProgressBar, slot: proc(super: QProgressBarhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_hasHeightForWidth(self: ptr cQProgressBar, slot: int): bool {.exportc: "miqt_exec_callback_QProgressBar_hasHeightForWidth ".} =
  type Cb = proc(super: QProgressBarhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QProgressBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QProgressBar, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQProgressBar_virtualbase_paintEngine(self.h))

type QProgressBarpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QProgressBar, slot: proc(super: QProgressBarpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_paintEngine(self: ptr cQProgressBar, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressBar_paintEngine ".} =
  type Cb = proc(super: QProgressBarpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QProgressBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QProgressBar, event: gen_qevent.QMouseEvent): void =


  fQProgressBar_virtualbase_mousePressEvent(self.h, event.h)

type QProgressBarmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QProgressBar, slot: proc(super: QProgressBarmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_mousePressEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_mousePressEvent ".} =
  type Cb = proc(super: QProgressBarmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QProgressBar, event: gen_qevent.QMouseEvent): void =


  fQProgressBar_virtualbase_mouseReleaseEvent(self.h, event.h)

type QProgressBarmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QProgressBar, slot: proc(super: QProgressBarmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_mouseReleaseEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_mouseReleaseEvent ".} =
  type Cb = proc(super: QProgressBarmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QProgressBar, event: gen_qevent.QMouseEvent): void =


  fQProgressBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QProgressBarmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QProgressBar, slot: proc(super: QProgressBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_mouseDoubleClickEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QProgressBarmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QProgressBar, event: gen_qevent.QMouseEvent): void =


  fQProgressBar_virtualbase_mouseMoveEvent(self.h, event.h)

type QProgressBarmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QProgressBar, slot: proc(super: QProgressBarmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_mouseMoveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_mouseMoveEvent ".} =
  type Cb = proc(super: QProgressBarmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QProgressBar, event: gen_qevent.QWheelEvent): void =


  fQProgressBar_virtualbase_wheelEvent(self.h, event.h)

type QProgressBarwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QProgressBar, slot: proc(super: QProgressBarwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_wheelEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_wheelEvent ".} =
  type Cb = proc(super: QProgressBarwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QProgressBar, event: gen_qevent.QKeyEvent): void =


  fQProgressBar_virtualbase_keyPressEvent(self.h, event.h)

type QProgressBarkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QProgressBar, slot: proc(super: QProgressBarkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_keyPressEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_keyPressEvent ".} =
  type Cb = proc(super: QProgressBarkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QProgressBar, event: gen_qevent.QKeyEvent): void =


  fQProgressBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QProgressBarkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QProgressBar, slot: proc(super: QProgressBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_keyReleaseEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_keyReleaseEvent ".} =
  type Cb = proc(super: QProgressBarkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QProgressBar, event: gen_qevent.QFocusEvent): void =


  fQProgressBar_virtualbase_focusInEvent(self.h, event.h)

type QProgressBarfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QProgressBar, slot: proc(super: QProgressBarfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_focusInEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_focusInEvent ".} =
  type Cb = proc(super: QProgressBarfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QProgressBar, event: gen_qevent.QFocusEvent): void =


  fQProgressBar_virtualbase_focusOutEvent(self.h, event.h)

type QProgressBarfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QProgressBar, slot: proc(super: QProgressBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_focusOutEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_focusOutEvent ".} =
  type Cb = proc(super: QProgressBarfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QProgressBar, event: gen_qcoreevent.QEvent): void =


  fQProgressBar_virtualbase_enterEvent(self.h, event.h)

type QProgressBarenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QProgressBar, slot: proc(super: QProgressBarenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_enterEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_enterEvent ".} =
  type Cb = proc(super: QProgressBarenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QProgressBar, event: gen_qcoreevent.QEvent): void =


  fQProgressBar_virtualbase_leaveEvent(self.h, event.h)

type QProgressBarleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QProgressBar, slot: proc(super: QProgressBarleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_leaveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_leaveEvent ".} =
  type Cb = proc(super: QProgressBarleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QProgressBar, event: gen_qevent.QMoveEvent): void =


  fQProgressBar_virtualbase_moveEvent(self.h, event.h)

type QProgressBarmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QProgressBar, slot: proc(super: QProgressBarmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_moveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_moveEvent ".} =
  type Cb = proc(super: QProgressBarmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QProgressBar, event: gen_qevent.QResizeEvent): void =


  fQProgressBar_virtualbase_resizeEvent(self.h, event.h)

type QProgressBarresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QProgressBar, slot: proc(super: QProgressBarresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_resizeEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_resizeEvent ".} =
  type Cb = proc(super: QProgressBarresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QProgressBar, event: gen_qevent.QCloseEvent): void =


  fQProgressBar_virtualbase_closeEvent(self.h, event.h)

type QProgressBarcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QProgressBar, slot: proc(super: QProgressBarcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_closeEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_closeEvent ".} =
  type Cb = proc(super: QProgressBarcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QProgressBar, event: gen_qevent.QContextMenuEvent): void =


  fQProgressBar_virtualbase_contextMenuEvent(self.h, event.h)

type QProgressBarcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QProgressBar, slot: proc(super: QProgressBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_contextMenuEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_contextMenuEvent ".} =
  type Cb = proc(super: QProgressBarcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QProgressBar, event: gen_qevent.QTabletEvent): void =


  fQProgressBar_virtualbase_tabletEvent(self.h, event.h)

type QProgressBartabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QProgressBar, slot: proc(super: QProgressBartabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_tabletEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_tabletEvent ".} =
  type Cb = proc(super: QProgressBartabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QProgressBar, event: gen_qevent.QActionEvent): void =


  fQProgressBar_virtualbase_actionEvent(self.h, event.h)

type QProgressBaractionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QProgressBar, slot: proc(super: QProgressBaractionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBaractionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_actionEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_actionEvent ".} =
  type Cb = proc(super: QProgressBaractionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QProgressBar, event: gen_qevent.QDragEnterEvent): void =


  fQProgressBar_virtualbase_dragEnterEvent(self.h, event.h)

type QProgressBardragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QProgressBar, slot: proc(super: QProgressBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_dragEnterEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_dragEnterEvent ".} =
  type Cb = proc(super: QProgressBardragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QProgressBar, event: gen_qevent.QDragMoveEvent): void =


  fQProgressBar_virtualbase_dragMoveEvent(self.h, event.h)

type QProgressBardragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QProgressBar, slot: proc(super: QProgressBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_dragMoveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_dragMoveEvent ".} =
  type Cb = proc(super: QProgressBardragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QProgressBar, event: gen_qevent.QDragLeaveEvent): void =


  fQProgressBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QProgressBardragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QProgressBar, slot: proc(super: QProgressBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_dragLeaveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_dragLeaveEvent ".} =
  type Cb = proc(super: QProgressBardragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QProgressBar, event: gen_qevent.QDropEvent): void =


  fQProgressBar_virtualbase_dropEvent(self.h, event.h)

type QProgressBardropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QProgressBar, slot: proc(super: QProgressBardropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBardropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_dropEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_dropEvent ".} =
  type Cb = proc(super: QProgressBardropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QProgressBar, event: gen_qevent.QShowEvent): void =


  fQProgressBar_virtualbase_showEvent(self.h, event.h)

type QProgressBarshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QProgressBar, slot: proc(super: QProgressBarshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_showEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_showEvent ".} =
  type Cb = proc(super: QProgressBarshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QProgressBar, event: gen_qevent.QHideEvent): void =


  fQProgressBar_virtualbase_hideEvent(self.h, event.h)

type QProgressBarhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QProgressBar, slot: proc(super: QProgressBarhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_hideEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_hideEvent ".} =
  type Cb = proc(super: QProgressBarhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QProgressBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQProgressBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QProgressBarnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QProgressBar, slot: proc(super: QProgressBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_nativeEvent(self: ptr cQProgressBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QProgressBar_nativeEvent ".} =
  type Cb = proc(super: QProgressBarnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QProgressBar(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QProgressBar, param1: gen_qcoreevent.QEvent): void =


  fQProgressBar_virtualbase_changeEvent(self.h, param1.h)

type QProgressBarchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QProgressBar, slot: proc(super: QProgressBarchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_changeEvent(self: ptr cQProgressBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_changeEvent ".} =
  type Cb = proc(super: QProgressBarchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QProgressBar(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QProgressBar, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQProgressBar_virtualbase_metric(self.h, cint(param1))

type QProgressBarmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QProgressBar, slot: proc(super: QProgressBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_metric(self: ptr cQProgressBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QProgressBar_metric ".} =
  type Cb = proc(super: QProgressBarmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QProgressBar(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QProgressBar, painter: gen_qpainter.QPainter): void =


  fQProgressBar_virtualbase_initPainter(self.h, painter.h)

type QProgressBarinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QProgressBar, slot: proc(super: QProgressBarinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_initPainter(self: ptr cQProgressBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_initPainter ".} =
  type Cb = proc(super: QProgressBarinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QProgressBar(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QProgressBar, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQProgressBar_virtualbase_redirected(self.h, offset.h))

type QProgressBarredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QProgressBar, slot: proc(super: QProgressBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_redirected(self: ptr cQProgressBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QProgressBar_redirected ".} =
  type Cb = proc(super: QProgressBarredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QProgressBar(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QProgressBar, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQProgressBar_virtualbase_sharedPainter(self.h))

type QProgressBarsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QProgressBar, slot: proc(super: QProgressBarsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_sharedPainter(self: ptr cQProgressBar, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressBar_sharedPainter ".} =
  type Cb = proc(super: QProgressBarsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QProgressBar(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QProgressBar, param1: gen_qevent.QInputMethodEvent): void =


  fQProgressBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QProgressBarinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QProgressBar, slot: proc(super: QProgressBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_inputMethodEvent(self: ptr cQProgressBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_inputMethodEvent ".} =
  type Cb = proc(super: QProgressBarinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QProgressBar(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QProgressBar, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQProgressBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QProgressBarinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QProgressBar, slot: proc(super: QProgressBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_inputMethodQuery(self: ptr cQProgressBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QProgressBar_inputMethodQuery ".} =
  type Cb = proc(super: QProgressBarinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QProgressBar(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QProgressBar, next: bool): bool =


  fQProgressBar_virtualbase_focusNextPrevChild(self.h, next)

type QProgressBarfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QProgressBar, slot: proc(super: QProgressBarfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_focusNextPrevChild(self: ptr cQProgressBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QProgressBar_focusNextPrevChild ".} =
  type Cb = proc(super: QProgressBarfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QProgressBar(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QProgressBar, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQProgressBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QProgressBareventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QProgressBar, slot: proc(super: QProgressBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QProgressBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_eventFilter(self: ptr cQProgressBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QProgressBar_eventFilter ".} =
  type Cb = proc(super: QProgressBareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QProgressBar(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QProgressBar, event: gen_qcoreevent.QTimerEvent): void =


  fQProgressBar_virtualbase_timerEvent(self.h, event.h)

type QProgressBartimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QProgressBar, slot: proc(super: QProgressBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_timerEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_timerEvent ".} =
  type Cb = proc(super: QProgressBartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QProgressBar, event: gen_qcoreevent.QChildEvent): void =


  fQProgressBar_virtualbase_childEvent(self.h, event.h)

type QProgressBarchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QProgressBar, slot: proc(super: QProgressBarchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_childEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_childEvent ".} =
  type Cb = proc(super: QProgressBarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QProgressBar, event: gen_qcoreevent.QEvent): void =


  fQProgressBar_virtualbase_customEvent(self.h, event.h)

type QProgressBarcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QProgressBar, slot: proc(super: QProgressBarcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_customEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_customEvent ".} =
  type Cb = proc(super: QProgressBarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QProgressBar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QProgressBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQProgressBar_virtualbase_connectNotify(self.h, signal.h)

type QProgressBarconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QProgressBar, slot: proc(super: QProgressBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_connectNotify(self: ptr cQProgressBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_connectNotify ".} =
  type Cb = proc(super: QProgressBarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QProgressBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QProgressBar, signal: gen_qmetaobject.QMetaMethod): void =


  fQProgressBar_virtualbase_disconnectNotify(self.h, signal.h)

type QProgressBardisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QProgressBar, slot: proc(super: QProgressBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QProgressBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_disconnectNotify(self: ptr cQProgressBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_disconnectNotify ".} =
  type Cb = proc(super: QProgressBardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QProgressBar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QProgressBar): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQProgressBar_staticMetaObject())
proc delete*(self: QProgressBar) =
  fcQProgressBar_delete(self.h)
