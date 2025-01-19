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
{.compile("gen_qcolordialog.cpp", cflags).}


type QColorDialogColorDialogOption* = cint
const
  QColorDialogShowAlphaChannel* = 1
  QColorDialogNoButtons* = 2
  QColorDialogDontUseNativeDialog* = 4



import gen_qcolordialog_types
export gen_qcolordialog_types

import
  gen_qcolor,
  gen_qcoreevent,
  gen_qdialog,
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
  gen_qcolor,
  gen_qcoreevent,
  gen_qdialog,
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

type cQColorDialog*{.exportc: "QColorDialog", incompleteStruct.} = object

proc fcQColorDialog_new(parent: pointer): ptr cQColorDialog {.importc: "QColorDialog_new".}
proc fcQColorDialog_new2(): ptr cQColorDialog {.importc: "QColorDialog_new2".}
proc fcQColorDialog_new3(initial: pointer): ptr cQColorDialog {.importc: "QColorDialog_new3".}
proc fcQColorDialog_new4(initial: pointer, parent: pointer): ptr cQColorDialog {.importc: "QColorDialog_new4".}
proc fcQColorDialog_metaObject(self: pointer, ): pointer {.importc: "QColorDialog_metaObject".}
proc fcQColorDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QColorDialog_metacast".}
proc fcQColorDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColorDialog_metacall".}
proc fcQColorDialog_tr(s: cstring): struct_miqt_string {.importc: "QColorDialog_tr".}
proc fcQColorDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QColorDialog_trUtf8".}
proc fcQColorDialog_setCurrentColor(self: pointer, color: pointer): void {.importc: "QColorDialog_setCurrentColor".}
proc fcQColorDialog_currentColor(self: pointer, ): pointer {.importc: "QColorDialog_currentColor".}
proc fcQColorDialog_selectedColor(self: pointer, ): pointer {.importc: "QColorDialog_selectedColor".}
proc fcQColorDialog_setOption(self: pointer, option: cint): void {.importc: "QColorDialog_setOption".}
proc fcQColorDialog_testOption(self: pointer, option: cint): bool {.importc: "QColorDialog_testOption".}
proc fcQColorDialog_setOptions(self: pointer, options: cint): void {.importc: "QColorDialog_setOptions".}
proc fcQColorDialog_options(self: pointer, ): cint {.importc: "QColorDialog_options".}
proc fcQColorDialog_setVisible(self: pointer, visible: bool): void {.importc: "QColorDialog_setVisible".}
proc fcQColorDialog_getColor(): pointer {.importc: "QColorDialog_getColor".}
proc fcQColorDialog_getRgba(): cuint {.importc: "QColorDialog_getRgba".}
proc fcQColorDialog_customCount(): cint {.importc: "QColorDialog_customCount".}
proc fcQColorDialog_customColor(index: cint): pointer {.importc: "QColorDialog_customColor".}
proc fcQColorDialog_setCustomColor(index: cint, color: pointer): void {.importc: "QColorDialog_setCustomColor".}
proc fcQColorDialog_standardColor(index: cint): pointer {.importc: "QColorDialog_standardColor".}
proc fcQColorDialog_setStandardColor(index: cint, color: pointer): void {.importc: "QColorDialog_setStandardColor".}
proc fcQColorDialog_currentColorChanged(self: pointer, color: pointer): void {.importc: "QColorDialog_currentColorChanged".}
proc fQColorDialog_connect_currentColorChanged(self: pointer, slot: int) {.importc: "QColorDialog_connect_currentColorChanged".}
proc fcQColorDialog_colorSelected(self: pointer, color: pointer): void {.importc: "QColorDialog_colorSelected".}
proc fQColorDialog_connect_colorSelected(self: pointer, slot: int) {.importc: "QColorDialog_connect_colorSelected".}
proc fcQColorDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QColorDialog_tr2".}
proc fcQColorDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColorDialog_tr3".}
proc fcQColorDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QColorDialog_trUtf82".}
proc fcQColorDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColorDialog_trUtf83".}
proc fcQColorDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QColorDialog_setOption2".}
proc fcQColorDialog_getColor1(initial: pointer): pointer {.importc: "QColorDialog_getColor1".}
proc fcQColorDialog_getColor2(initial: pointer, parent: pointer): pointer {.importc: "QColorDialog_getColor2".}
proc fcQColorDialog_getColor3(initial: pointer, parent: pointer, title: struct_miqt_string): pointer {.importc: "QColorDialog_getColor3".}
proc fcQColorDialog_getColor4(initial: pointer, parent: pointer, title: struct_miqt_string, options: cint): pointer {.importc: "QColorDialog_getColor4".}
proc fcQColorDialog_getRgba1(rgba: cuint): cuint {.importc: "QColorDialog_getRgba1".}
proc fcQColorDialog_getRgba2(rgba: cuint, ok: ptr bool): cuint {.importc: "QColorDialog_getRgba2".}
proc fcQColorDialog_getRgba3(rgba: cuint, ok: ptr bool, parent: pointer): cuint {.importc: "QColorDialog_getRgba3".}
proc fQColorDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QColorDialog_virtualbase_metacall".}
proc fcQColorDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_metacall".}
proc fQColorDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QColorDialog_virtualbase_setVisible".}
proc fcQColorDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_setVisible".}
proc fQColorDialog_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_changeEvent".}
proc fcQColorDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_changeEvent".}
proc fQColorDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QColorDialog_virtualbase_done".}
proc fcQColorDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_done".}
proc fQColorDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QColorDialog_virtualbase_sizeHint".}
proc fcQColorDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_sizeHint".}
proc fQColorDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QColorDialog_virtualbase_minimumSizeHint".}
proc fcQColorDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_minimumSizeHint".}
proc fQColorDialog_virtualbase_open(self: pointer, ): void{.importc: "QColorDialog_virtualbase_open".}
proc fcQColorDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_open".}
proc fQColorDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QColorDialog_virtualbase_exec".}
proc fcQColorDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_exec".}
proc fQColorDialog_virtualbase_accept(self: pointer, ): void{.importc: "QColorDialog_virtualbase_accept".}
proc fcQColorDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_accept".}
proc fQColorDialog_virtualbase_reject(self: pointer, ): void{.importc: "QColorDialog_virtualbase_reject".}
proc fcQColorDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_reject".}
proc fQColorDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_keyPressEvent".}
proc fcQColorDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_keyPressEvent".}
proc fQColorDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_closeEvent".}
proc fcQColorDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_closeEvent".}
proc fQColorDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_showEvent".}
proc fcQColorDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_showEvent".}
proc fQColorDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_resizeEvent".}
proc fcQColorDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_resizeEvent".}
proc fQColorDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_contextMenuEvent".}
proc fcQColorDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_contextMenuEvent".}
proc fQColorDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QColorDialog_virtualbase_eventFilter".}
proc fcQColorDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_eventFilter".}
proc fQColorDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QColorDialog_virtualbase_devType".}
proc fcQColorDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_devType".}
proc fQColorDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QColorDialog_virtualbase_heightForWidth".}
proc fcQColorDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_heightForWidth".}
proc fQColorDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QColorDialog_virtualbase_hasHeightForWidth".}
proc fcQColorDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_hasHeightForWidth".}
proc fQColorDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QColorDialog_virtualbase_paintEngine".}
proc fcQColorDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_paintEngine".}
proc fQColorDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QColorDialog_virtualbase_event".}
proc fcQColorDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_event".}
proc fQColorDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_mousePressEvent".}
proc fcQColorDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_mousePressEvent".}
proc fQColorDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_mouseReleaseEvent".}
proc fcQColorDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_mouseReleaseEvent".}
proc fQColorDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQColorDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_mouseDoubleClickEvent".}
proc fQColorDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_mouseMoveEvent".}
proc fcQColorDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_mouseMoveEvent".}
proc fQColorDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_wheelEvent".}
proc fcQColorDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_wheelEvent".}
proc fQColorDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_keyReleaseEvent".}
proc fcQColorDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_keyReleaseEvent".}
proc fQColorDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_focusInEvent".}
proc fcQColorDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_focusInEvent".}
proc fQColorDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_focusOutEvent".}
proc fcQColorDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_focusOutEvent".}
proc fQColorDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_enterEvent".}
proc fcQColorDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_enterEvent".}
proc fQColorDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_leaveEvent".}
proc fcQColorDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_leaveEvent".}
proc fQColorDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_paintEvent".}
proc fcQColorDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_paintEvent".}
proc fQColorDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_moveEvent".}
proc fcQColorDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_moveEvent".}
proc fQColorDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_tabletEvent".}
proc fcQColorDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_tabletEvent".}
proc fQColorDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_actionEvent".}
proc fcQColorDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_actionEvent".}
proc fQColorDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_dragEnterEvent".}
proc fcQColorDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_dragEnterEvent".}
proc fQColorDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_dragMoveEvent".}
proc fcQColorDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_dragMoveEvent".}
proc fQColorDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_dragLeaveEvent".}
proc fcQColorDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_dragLeaveEvent".}
proc fQColorDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_dropEvent".}
proc fcQColorDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_dropEvent".}
proc fQColorDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_hideEvent".}
proc fcQColorDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_hideEvent".}
proc fQColorDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QColorDialog_virtualbase_nativeEvent".}
proc fcQColorDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_nativeEvent".}
proc fQColorDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QColorDialog_virtualbase_metric".}
proc fcQColorDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_metric".}
proc fQColorDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QColorDialog_virtualbase_initPainter".}
proc fcQColorDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_initPainter".}
proc fQColorDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QColorDialog_virtualbase_redirected".}
proc fcQColorDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_redirected".}
proc fQColorDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QColorDialog_virtualbase_sharedPainter".}
proc fcQColorDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_sharedPainter".}
proc fQColorDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_inputMethodEvent".}
proc fcQColorDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_inputMethodEvent".}
proc fQColorDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QColorDialog_virtualbase_inputMethodQuery".}
proc fcQColorDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_inputMethodQuery".}
proc fQColorDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QColorDialog_virtualbase_focusNextPrevChild".}
proc fcQColorDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_focusNextPrevChild".}
proc fQColorDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_timerEvent".}
proc fcQColorDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_timerEvent".}
proc fQColorDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_childEvent".}
proc fcQColorDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_childEvent".}
proc fQColorDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_customEvent".}
proc fcQColorDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_customEvent".}
proc fQColorDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QColorDialog_virtualbase_connectNotify".}
proc fcQColorDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_connectNotify".}
proc fQColorDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QColorDialog_virtualbase_disconnectNotify".}
proc fcQColorDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_disconnectNotify".}
proc fcQColorDialog_staticMetaObject(): pointer {.importc: "QColorDialog_staticMetaObject".}
proc fcQColorDialog_delete(self: pointer) {.importc: "QColorDialog_delete".}


func init*(T: type QColorDialog, h: ptr cQColorDialog): QColorDialog =
  T(h: h)
proc create*(T: type QColorDialog, parent: gen_qwidget.QWidget): QColorDialog =

  QColorDialog.init(fcQColorDialog_new(parent.h))
proc create*(T: type QColorDialog, ): QColorDialog =

  QColorDialog.init(fcQColorDialog_new2())
proc create2*(T: type QColorDialog, initial: gen_qcolor.QColor): QColorDialog =

  QColorDialog.init(fcQColorDialog_new3(initial.h))
proc create*(T: type QColorDialog, initial: gen_qcolor.QColor, parent: gen_qwidget.QWidget): QColorDialog =

  QColorDialog.init(fcQColorDialog_new4(initial.h, parent.h))
proc metaObject*(self: QColorDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQColorDialog_metaObject(self.h))

proc metacast*(self: QColorDialog, param1: cstring): pointer =

  fcQColorDialog_metacast(self.h, param1)

proc metacall*(self: QColorDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQColorDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QColorDialog, s: cstring): string =

  let v_ms = fcQColorDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QColorDialog, s: cstring): string =

  let v_ms = fcQColorDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCurrentColor*(self: QColorDialog, color: gen_qcolor.QColor): void =

  fcQColorDialog_setCurrentColor(self.h, color.h)

proc currentColor*(self: QColorDialog, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorDialog_currentColor(self.h))

proc selectedColor*(self: QColorDialog, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorDialog_selectedColor(self.h))

proc setOption*(self: QColorDialog, option: QColorDialogColorDialogOption): void =

  fcQColorDialog_setOption(self.h, cint(option))

proc testOption*(self: QColorDialog, option: QColorDialogColorDialogOption): bool =

  fcQColorDialog_testOption(self.h, cint(option))

proc setOptions*(self: QColorDialog, options: QColorDialogColorDialogOption): void =

  fcQColorDialog_setOptions(self.h, cint(options))

proc options*(self: QColorDialog, ): QColorDialogColorDialogOption =

  QColorDialogColorDialogOption(fcQColorDialog_options(self.h))

proc setVisible*(self: QColorDialog, visible: bool): void =

  fcQColorDialog_setVisible(self.h, visible)

proc getColor*(_: type QColorDialog, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorDialog_getColor())

proc getRgba*(_: type QColorDialog, ): cuint =

  fcQColorDialog_getRgba()

proc customCount*(_: type QColorDialog, ): cint =

  fcQColorDialog_customCount()

proc customColor*(_: type QColorDialog, index: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorDialog_customColor(index))

proc setCustomColor*(_: type QColorDialog, index: cint, color: gen_qcolor.QColor): void =

  fcQColorDialog_setCustomColor(index, color.h)

proc standardColor*(_: type QColorDialog, index: cint): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorDialog_standardColor(index))

proc setStandardColor*(_: type QColorDialog, index: cint, color: gen_qcolor.QColor): void =

  fcQColorDialog_setStandardColor(index, color.h)

proc currentColorChanged*(self: QColorDialog, color: gen_qcolor.QColor): void =

  fcQColorDialog_currentColorChanged(self.h, color.h)

proc miqt_exec_callback_QColorDialog_currentColorChanged(slot: int, color: pointer) {.exportc.} =
  type Cb = proc(color: gen_qcolor.QColor)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: color)


  nimfunc[](slotval1)

proc oncurrentColorChanged*(self: QColorDialog, slot: proc(color: gen_qcolor.QColor)) =
  type Cb = proc(color: gen_qcolor.QColor)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQColorDialog_connect_currentColorChanged(self.h, cast[int](addr tmp[]))
proc colorSelected*(self: QColorDialog, color: gen_qcolor.QColor): void =

  fcQColorDialog_colorSelected(self.h, color.h)

proc miqt_exec_callback_QColorDialog_colorSelected(slot: int, color: pointer) {.exportc.} =
  type Cb = proc(color: gen_qcolor.QColor)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: color)


  nimfunc[](slotval1)

proc oncolorSelected*(self: QColorDialog, slot: proc(color: gen_qcolor.QColor)) =
  type Cb = proc(color: gen_qcolor.QColor)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQColorDialog_connect_colorSelected(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QColorDialog, s: cstring, c: cstring): string =

  let v_ms = fcQColorDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QColorDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQColorDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QColorDialog, s: cstring, c: cstring): string =

  let v_ms = fcQColorDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QColorDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQColorDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption2*(self: QColorDialog, option: QColorDialogColorDialogOption, on: bool): void =

  fcQColorDialog_setOption2(self.h, cint(option), on)

proc getColor1*(_: type QColorDialog, initial: gen_qcolor.QColor): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorDialog_getColor1(initial.h))

proc getColor2*(_: type QColorDialog, initial: gen_qcolor.QColor, parent: gen_qwidget.QWidget): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorDialog_getColor2(initial.h, parent.h))

proc getColor3*(_: type QColorDialog, initial: gen_qcolor.QColor, parent: gen_qwidget.QWidget, title: string): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorDialog_getColor3(initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc getColor4*(_: type QColorDialog, initial: gen_qcolor.QColor, parent: gen_qwidget.QWidget, title: string, options: QColorDialogColorDialogOption): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQColorDialog_getColor4(initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), cint(options)))

proc getRgba1*(_: type QColorDialog, rgba: cuint): cuint =

  fcQColorDialog_getRgba1(rgba)

proc getRgba2*(_: type QColorDialog, rgba: cuint, ok: ptr bool): cuint =

  fcQColorDialog_getRgba2(rgba, ok)

proc getRgba3*(_: type QColorDialog, rgba: cuint, ok: ptr bool, parent: gen_qwidget.QWidget): cuint =

  fcQColorDialog_getRgba3(rgba, ok, parent.h)

proc callVirtualBase_metacall(self: QColorDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQColorDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QColorDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QColorDialog, slot: proc(super: QColorDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_metacall(self: ptr cQColorDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QColorDialog_metacall ".} =
  type Cb = proc(super: QColorDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QColorDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setVisible(self: QColorDialog, visible: bool): void =


  fQColorDialog_virtualbase_setVisible(self.h, visible)

type QColorDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QColorDialog, slot: proc(super: QColorDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_setVisible(self: ptr cQColorDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QColorDialog_setVisible ".} =
  type Cb = proc(super: QColorDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QColorDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QColorDialog, event: gen_qcoreevent.QEvent): void =


  fQColorDialog_virtualbase_changeEvent(self.h, event.h)

type QColorDialogchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QColorDialog, slot: proc(super: QColorDialogchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_changeEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_changeEvent ".} =
  type Cb = proc(super: QColorDialogchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_done(self: QColorDialog, resultVal: cint): void =


  fQColorDialog_virtualbase_done(self.h, resultVal)

type QColorDialogdoneBase* = proc(resultVal: cint): void
proc ondone*(self: QColorDialog, slot: proc(super: QColorDialogdoneBase, resultVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogdoneBase, resultVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_done(self: ptr cQColorDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QColorDialog_done ".} =
  type Cb = proc(super: QColorDialogdoneBase, resultVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resultVal: cint): auto =
    callVirtualBase_done(QColorDialog(h: self), resultVal)
  let slotval1 = resultVal


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QColorDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQColorDialog_virtualbase_sizeHint(self.h))

type QColorDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QColorDialog, slot: proc(super: QColorDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_sizeHint(self: ptr cQColorDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QColorDialog_sizeHint ".} =
  type Cb = proc(super: QColorDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QColorDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QColorDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQColorDialog_virtualbase_minimumSizeHint(self.h))

type QColorDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QColorDialog, slot: proc(super: QColorDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_minimumSizeHint(self: ptr cQColorDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QColorDialog_minimumSizeHint ".} =
  type Cb = proc(super: QColorDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QColorDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QColorDialog, ): void =


  fQColorDialog_virtualbase_open(self.h)

type QColorDialogopenBase* = proc(): void
proc onopen*(self: QColorDialog, slot: proc(super: QColorDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_open(self: ptr cQColorDialog, slot: int): void {.exportc: "miqt_exec_callback_QColorDialog_open ".} =
  type Cb = proc(super: QColorDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QColorDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QColorDialog, ): cint =


  fQColorDialog_virtualbase_exec(self.h)

type QColorDialogexecBase* = proc(): cint
proc onexec*(self: QColorDialog, slot: proc(super: QColorDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_exec(self: ptr cQColorDialog, slot: int): cint {.exportc: "miqt_exec_callback_QColorDialog_exec ".} =
  type Cb = proc(super: QColorDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QColorDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_accept(self: QColorDialog, ): void =


  fQColorDialog_virtualbase_accept(self.h)

type QColorDialogacceptBase* = proc(): void
proc onaccept*(self: QColorDialog, slot: proc(super: QColorDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_accept(self: ptr cQColorDialog, slot: int): void {.exportc: "miqt_exec_callback_QColorDialog_accept ".} =
  type Cb = proc(super: QColorDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QColorDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QColorDialog, ): void =


  fQColorDialog_virtualbase_reject(self.h)

type QColorDialogrejectBase* = proc(): void
proc onreject*(self: QColorDialog, slot: proc(super: QColorDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_reject(self: ptr cQColorDialog, slot: int): void {.exportc: "miqt_exec_callback_QColorDialog_reject ".} =
  type Cb = proc(super: QColorDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QColorDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QColorDialog, param1: gen_qevent.QKeyEvent): void =


  fQColorDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QColorDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QColorDialog, slot: proc(super: QColorDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_keyPressEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_keyPressEvent ".} =
  type Cb = proc(super: QColorDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QColorDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QColorDialog, param1: gen_qevent.QCloseEvent): void =


  fQColorDialog_virtualbase_closeEvent(self.h, param1.h)

type QColorDialogcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QColorDialog, slot: proc(super: QColorDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_closeEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_closeEvent ".} =
  type Cb = proc(super: QColorDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QColorDialog(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QColorDialog, param1: gen_qevent.QShowEvent): void =


  fQColorDialog_virtualbase_showEvent(self.h, param1.h)

type QColorDialogshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QColorDialog, slot: proc(super: QColorDialogshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_showEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_showEvent ".} =
  type Cb = proc(super: QColorDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QColorDialog(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QColorDialog, param1: gen_qevent.QResizeEvent): void =


  fQColorDialog_virtualbase_resizeEvent(self.h, param1.h)

type QColorDialogresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QColorDialog, slot: proc(super: QColorDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_resizeEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_resizeEvent ".} =
  type Cb = proc(super: QColorDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QColorDialog(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QColorDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQColorDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QColorDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QColorDialog, slot: proc(super: QColorDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_contextMenuEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_contextMenuEvent ".} =
  type Cb = proc(super: QColorDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QColorDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QColorDialog, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQColorDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QColorDialogeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QColorDialog, slot: proc(super: QColorDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_eventFilter(self: ptr cQColorDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QColorDialog_eventFilter ".} =
  type Cb = proc(super: QColorDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QColorDialog(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QColorDialog, ): cint =


  fQColorDialog_virtualbase_devType(self.h)

type QColorDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QColorDialog, slot: proc(super: QColorDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_devType(self: ptr cQColorDialog, slot: int): cint {.exportc: "miqt_exec_callback_QColorDialog_devType ".} =
  type Cb = proc(super: QColorDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QColorDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QColorDialog, param1: cint): cint =


  fQColorDialog_virtualbase_heightForWidth(self.h, param1)

type QColorDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QColorDialog, slot: proc(super: QColorDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_heightForWidth(self: ptr cQColorDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QColorDialog_heightForWidth ".} =
  type Cb = proc(super: QColorDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QColorDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QColorDialog, ): bool =


  fQColorDialog_virtualbase_hasHeightForWidth(self.h)

type QColorDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QColorDialog, slot: proc(super: QColorDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QColorDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_hasHeightForWidth(self: ptr cQColorDialog, slot: int): bool {.exportc: "miqt_exec_callback_QColorDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QColorDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QColorDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QColorDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQColorDialog_virtualbase_paintEngine(self.h))

type QColorDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QColorDialog, slot: proc(super: QColorDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_paintEngine(self: ptr cQColorDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QColorDialog_paintEngine ".} =
  type Cb = proc(super: QColorDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QColorDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QColorDialog, event: gen_qcoreevent.QEvent): bool =


  fQColorDialog_virtualbase_event(self.h, event.h)

type QColorDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QColorDialog, slot: proc(super: QColorDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_event(self: ptr cQColorDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QColorDialog_event ".} =
  type Cb = proc(super: QColorDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QColorDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QColorDialog, event: gen_qevent.QMouseEvent): void =


  fQColorDialog_virtualbase_mousePressEvent(self.h, event.h)

type QColorDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QColorDialog, slot: proc(super: QColorDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_mousePressEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_mousePressEvent ".} =
  type Cb = proc(super: QColorDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QColorDialog, event: gen_qevent.QMouseEvent): void =


  fQColorDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QColorDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QColorDialog, slot: proc(super: QColorDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_mouseReleaseEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QColorDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QColorDialog, event: gen_qevent.QMouseEvent): void =


  fQColorDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QColorDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QColorDialog, slot: proc(super: QColorDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_mouseDoubleClickEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QColorDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QColorDialog, event: gen_qevent.QMouseEvent): void =


  fQColorDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QColorDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QColorDialog, slot: proc(super: QColorDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_mouseMoveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QColorDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QColorDialog, event: gen_qevent.QWheelEvent): void =


  fQColorDialog_virtualbase_wheelEvent(self.h, event.h)

type QColorDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QColorDialog, slot: proc(super: QColorDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_wheelEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_wheelEvent ".} =
  type Cb = proc(super: QColorDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QColorDialog, event: gen_qevent.QKeyEvent): void =


  fQColorDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QColorDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QColorDialog, slot: proc(super: QColorDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_keyReleaseEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QColorDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QColorDialog, event: gen_qevent.QFocusEvent): void =


  fQColorDialog_virtualbase_focusInEvent(self.h, event.h)

type QColorDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QColorDialog, slot: proc(super: QColorDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_focusInEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_focusInEvent ".} =
  type Cb = proc(super: QColorDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QColorDialog, event: gen_qevent.QFocusEvent): void =


  fQColorDialog_virtualbase_focusOutEvent(self.h, event.h)

type QColorDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QColorDialog, slot: proc(super: QColorDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_focusOutEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_focusOutEvent ".} =
  type Cb = proc(super: QColorDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QColorDialog, event: gen_qcoreevent.QEvent): void =


  fQColorDialog_virtualbase_enterEvent(self.h, event.h)

type QColorDialogenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QColorDialog, slot: proc(super: QColorDialogenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_enterEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_enterEvent ".} =
  type Cb = proc(super: QColorDialogenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QColorDialog, event: gen_qcoreevent.QEvent): void =


  fQColorDialog_virtualbase_leaveEvent(self.h, event.h)

type QColorDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QColorDialog, slot: proc(super: QColorDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_leaveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_leaveEvent ".} =
  type Cb = proc(super: QColorDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QColorDialog, event: gen_qevent.QPaintEvent): void =


  fQColorDialog_virtualbase_paintEvent(self.h, event.h)

type QColorDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QColorDialog, slot: proc(super: QColorDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_paintEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_paintEvent ".} =
  type Cb = proc(super: QColorDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QColorDialog, event: gen_qevent.QMoveEvent): void =


  fQColorDialog_virtualbase_moveEvent(self.h, event.h)

type QColorDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QColorDialog, slot: proc(super: QColorDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_moveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_moveEvent ".} =
  type Cb = proc(super: QColorDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QColorDialog, event: gen_qevent.QTabletEvent): void =


  fQColorDialog_virtualbase_tabletEvent(self.h, event.h)

type QColorDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QColorDialog, slot: proc(super: QColorDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_tabletEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_tabletEvent ".} =
  type Cb = proc(super: QColorDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QColorDialog, event: gen_qevent.QActionEvent): void =


  fQColorDialog_virtualbase_actionEvent(self.h, event.h)

type QColorDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QColorDialog, slot: proc(super: QColorDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_actionEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_actionEvent ".} =
  type Cb = proc(super: QColorDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QColorDialog, event: gen_qevent.QDragEnterEvent): void =


  fQColorDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QColorDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QColorDialog, slot: proc(super: QColorDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_dragEnterEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_dragEnterEvent ".} =
  type Cb = proc(super: QColorDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QColorDialog, event: gen_qevent.QDragMoveEvent): void =


  fQColorDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QColorDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QColorDialog, slot: proc(super: QColorDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_dragMoveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_dragMoveEvent ".} =
  type Cb = proc(super: QColorDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QColorDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQColorDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QColorDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QColorDialog, slot: proc(super: QColorDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_dragLeaveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QColorDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QColorDialog, event: gen_qevent.QDropEvent): void =


  fQColorDialog_virtualbase_dropEvent(self.h, event.h)

type QColorDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QColorDialog, slot: proc(super: QColorDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_dropEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_dropEvent ".} =
  type Cb = proc(super: QColorDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QColorDialog, event: gen_qevent.QHideEvent): void =


  fQColorDialog_virtualbase_hideEvent(self.h, event.h)

type QColorDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QColorDialog, slot: proc(super: QColorDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_hideEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_hideEvent ".} =
  type Cb = proc(super: QColorDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QColorDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQColorDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QColorDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QColorDialog, slot: proc(super: QColorDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QColorDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_nativeEvent(self: ptr cQColorDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QColorDialog_nativeEvent ".} =
  type Cb = proc(super: QColorDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QColorDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QColorDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQColorDialog_virtualbase_metric(self.h, cint(param1))

type QColorDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QColorDialog, slot: proc(super: QColorDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_metric(self: ptr cQColorDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QColorDialog_metric ".} =
  type Cb = proc(super: QColorDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QColorDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QColorDialog, painter: gen_qpainter.QPainter): void =


  fQColorDialog_virtualbase_initPainter(self.h, painter.h)

type QColorDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QColorDialog, slot: proc(super: QColorDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_initPainter(self: ptr cQColorDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_initPainter ".} =
  type Cb = proc(super: QColorDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QColorDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QColorDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQColorDialog_virtualbase_redirected(self.h, offset.h))

type QColorDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QColorDialog, slot: proc(super: QColorDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_redirected(self: ptr cQColorDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QColorDialog_redirected ".} =
  type Cb = proc(super: QColorDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QColorDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QColorDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQColorDialog_virtualbase_sharedPainter(self.h))

type QColorDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QColorDialog, slot: proc(super: QColorDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_sharedPainter(self: ptr cQColorDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QColorDialog_sharedPainter ".} =
  type Cb = proc(super: QColorDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QColorDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QColorDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQColorDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QColorDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QColorDialog, slot: proc(super: QColorDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_inputMethodEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_inputMethodEvent ".} =
  type Cb = proc(super: QColorDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QColorDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QColorDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQColorDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QColorDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QColorDialog, slot: proc(super: QColorDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QColorDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_inputMethodQuery(self: ptr cQColorDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QColorDialog_inputMethodQuery ".} =
  type Cb = proc(super: QColorDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QColorDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QColorDialog, next: bool): bool =


  fQColorDialog_virtualbase_focusNextPrevChild(self.h, next)

type QColorDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QColorDialog, slot: proc(super: QColorDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_focusNextPrevChild(self: ptr cQColorDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QColorDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QColorDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QColorDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QColorDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQColorDialog_virtualbase_timerEvent(self.h, event.h)

type QColorDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QColorDialog, slot: proc(super: QColorDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_timerEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_timerEvent ".} =
  type Cb = proc(super: QColorDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QColorDialog, event: gen_qcoreevent.QChildEvent): void =


  fQColorDialog_virtualbase_childEvent(self.h, event.h)

type QColorDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QColorDialog, slot: proc(super: QColorDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_childEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_childEvent ".} =
  type Cb = proc(super: QColorDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QColorDialog, event: gen_qcoreevent.QEvent): void =


  fQColorDialog_virtualbase_customEvent(self.h, event.h)

type QColorDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QColorDialog, slot: proc(super: QColorDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_customEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_customEvent ".} =
  type Cb = proc(super: QColorDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QColorDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QColorDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQColorDialog_virtualbase_connectNotify(self.h, signal.h)

type QColorDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QColorDialog, slot: proc(super: QColorDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_connectNotify(self: ptr cQColorDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_connectNotify ".} =
  type Cb = proc(super: QColorDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QColorDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QColorDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQColorDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QColorDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QColorDialog, slot: proc(super: QColorDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QColorDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_disconnectNotify(self: ptr cQColorDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_disconnectNotify ".} =
  type Cb = proc(super: QColorDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QColorDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QColorDialog): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQColorDialog_staticMetaObject())
proc delete*(self: QColorDialog) =
  fcQColorDialog_delete(self.h)
