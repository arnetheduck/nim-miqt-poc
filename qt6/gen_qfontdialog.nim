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
{.compile("gen_qfontdialog.cpp", cflags).}


type QFontDialogFontDialogOption* = cint
const
  QFontDialogNoButtons* = 1
  QFontDialogDontUseNativeDialog* = 2
  QFontDialogScalableFonts* = 4
  QFontDialogNonScalableFonts* = 8
  QFontDialogMonospacedFonts* = 16
  QFontDialogProportionalFonts* = 32



import gen_qfontdialog_types
export gen_qfontdialog_types

import
  gen_qcoreevent,
  gen_qdialog,
  gen_qevent,
  gen_qfont,
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
  gen_qdialog,
  gen_qevent,
  gen_qfont,
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

type cQFontDialog*{.exportc: "QFontDialog", incompleteStruct.} = object

proc fcQFontDialog_new(parent: pointer): ptr cQFontDialog {.importc: "QFontDialog_new".}
proc fcQFontDialog_new2(): ptr cQFontDialog {.importc: "QFontDialog_new2".}
proc fcQFontDialog_new3(initial: pointer): ptr cQFontDialog {.importc: "QFontDialog_new3".}
proc fcQFontDialog_new4(initial: pointer, parent: pointer): ptr cQFontDialog {.importc: "QFontDialog_new4".}
proc fcQFontDialog_metaObject(self: pointer, ): pointer {.importc: "QFontDialog_metaObject".}
proc fcQFontDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontDialog_metacast".}
proc fcQFontDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontDialog_metacall".}
proc fcQFontDialog_tr(s: cstring): struct_miqt_string {.importc: "QFontDialog_tr".}
proc fcQFontDialog_setCurrentFont(self: pointer, font: pointer): void {.importc: "QFontDialog_setCurrentFont".}
proc fcQFontDialog_currentFont(self: pointer, ): pointer {.importc: "QFontDialog_currentFont".}
proc fcQFontDialog_selectedFont(self: pointer, ): pointer {.importc: "QFontDialog_selectedFont".}
proc fcQFontDialog_setOption(self: pointer, option: cint): void {.importc: "QFontDialog_setOption".}
proc fcQFontDialog_testOption(self: pointer, option: cint): bool {.importc: "QFontDialog_testOption".}
proc fcQFontDialog_setOptions(self: pointer, options: cint): void {.importc: "QFontDialog_setOptions".}
proc fcQFontDialog_options(self: pointer, ): cint {.importc: "QFontDialog_options".}
proc fcQFontDialog_setVisible(self: pointer, visible: bool): void {.importc: "QFontDialog_setVisible".}
proc fcQFontDialog_getFont(ok: ptr bool): pointer {.importc: "QFontDialog_getFont".}
proc fcQFontDialog_getFont2(ok: ptr bool, initial: pointer): pointer {.importc: "QFontDialog_getFont2".}
proc fcQFontDialog_currentFontChanged(self: pointer, font: pointer): void {.importc: "QFontDialog_currentFontChanged".}
proc fQFontDialog_connect_currentFontChanged(self: pointer, slot: int) {.importc: "QFontDialog_connect_currentFontChanged".}
proc fcQFontDialog_fontSelected(self: pointer, font: pointer): void {.importc: "QFontDialog_fontSelected".}
proc fQFontDialog_connect_fontSelected(self: pointer, slot: int) {.importc: "QFontDialog_connect_fontSelected".}
proc fcQFontDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontDialog_tr2".}
proc fcQFontDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontDialog_tr3".}
proc fcQFontDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QFontDialog_setOption2".}
proc fcQFontDialog_getFont22(ok: ptr bool, parent: pointer): pointer {.importc: "QFontDialog_getFont22".}
proc fcQFontDialog_getFont3(ok: ptr bool, initial: pointer, parent: pointer): pointer {.importc: "QFontDialog_getFont3".}
proc fcQFontDialog_getFont4(ok: ptr bool, initial: pointer, parent: pointer, title: struct_miqt_string): pointer {.importc: "QFontDialog_getFont4".}
proc fcQFontDialog_getFont5(ok: ptr bool, initial: pointer, parent: pointer, title: struct_miqt_string, options: cint): pointer {.importc: "QFontDialog_getFont5".}
proc fQFontDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QFontDialog_virtualbase_metaObject".}
proc fcQFontDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_metaObject".}
proc fQFontDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QFontDialog_virtualbase_metacast".}
proc fcQFontDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_metacast".}
proc fQFontDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFontDialog_virtualbase_metacall".}
proc fcQFontDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_metacall".}
proc fQFontDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFontDialog_virtualbase_setVisible".}
proc fcQFontDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_setVisible".}
proc fQFontDialog_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_changeEvent".}
proc fcQFontDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_changeEvent".}
proc fQFontDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QFontDialog_virtualbase_done".}
proc fcQFontDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_done".}
proc fQFontDialog_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QFontDialog_virtualbase_eventFilter".}
proc fcQFontDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_eventFilter".}
proc fQFontDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFontDialog_virtualbase_sizeHint".}
proc fcQFontDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_sizeHint".}
proc fQFontDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFontDialog_virtualbase_minimumSizeHint".}
proc fcQFontDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_minimumSizeHint".}
proc fQFontDialog_virtualbase_open(self: pointer, ): void{.importc: "QFontDialog_virtualbase_open".}
proc fcQFontDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_open".}
proc fQFontDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QFontDialog_virtualbase_exec".}
proc fcQFontDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_exec".}
proc fQFontDialog_virtualbase_accept(self: pointer, ): void{.importc: "QFontDialog_virtualbase_accept".}
proc fcQFontDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_accept".}
proc fQFontDialog_virtualbase_reject(self: pointer, ): void{.importc: "QFontDialog_virtualbase_reject".}
proc fcQFontDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_reject".}
proc fQFontDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_keyPressEvent".}
proc fcQFontDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_keyPressEvent".}
proc fQFontDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_closeEvent".}
proc fcQFontDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_closeEvent".}
proc fQFontDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_showEvent".}
proc fcQFontDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_showEvent".}
proc fQFontDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_resizeEvent".}
proc fcQFontDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_resizeEvent".}
proc fQFontDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_contextMenuEvent".}
proc fcQFontDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_contextMenuEvent".}
proc fQFontDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QFontDialog_virtualbase_devType".}
proc fcQFontDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_devType".}
proc fQFontDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFontDialog_virtualbase_heightForWidth".}
proc fcQFontDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_heightForWidth".}
proc fQFontDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFontDialog_virtualbase_hasHeightForWidth".}
proc fcQFontDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_hasHeightForWidth".}
proc fQFontDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFontDialog_virtualbase_paintEngine".}
proc fcQFontDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_paintEngine".}
proc fQFontDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFontDialog_virtualbase_event".}
proc fcQFontDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_event".}
proc fQFontDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_mousePressEvent".}
proc fcQFontDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_mousePressEvent".}
proc fQFontDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_mouseReleaseEvent".}
proc fcQFontDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_mouseReleaseEvent".}
proc fQFontDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQFontDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_mouseDoubleClickEvent".}
proc fQFontDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_mouseMoveEvent".}
proc fcQFontDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_mouseMoveEvent".}
proc fQFontDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_wheelEvent".}
proc fcQFontDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_wheelEvent".}
proc fQFontDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_keyReleaseEvent".}
proc fcQFontDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_keyReleaseEvent".}
proc fQFontDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_focusInEvent".}
proc fcQFontDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_focusInEvent".}
proc fQFontDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_focusOutEvent".}
proc fcQFontDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_focusOutEvent".}
proc fQFontDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_enterEvent".}
proc fcQFontDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_enterEvent".}
proc fQFontDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_leaveEvent".}
proc fcQFontDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_leaveEvent".}
proc fQFontDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_paintEvent".}
proc fcQFontDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_paintEvent".}
proc fQFontDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_moveEvent".}
proc fcQFontDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_moveEvent".}
proc fQFontDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_tabletEvent".}
proc fcQFontDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_tabletEvent".}
proc fQFontDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_actionEvent".}
proc fcQFontDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_actionEvent".}
proc fQFontDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_dragEnterEvent".}
proc fcQFontDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_dragEnterEvent".}
proc fQFontDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_dragMoveEvent".}
proc fcQFontDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_dragMoveEvent".}
proc fQFontDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_dragLeaveEvent".}
proc fcQFontDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_dragLeaveEvent".}
proc fQFontDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_dropEvent".}
proc fcQFontDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_dropEvent".}
proc fQFontDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_hideEvent".}
proc fcQFontDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_hideEvent".}
proc fQFontDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QFontDialog_virtualbase_nativeEvent".}
proc fcQFontDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_nativeEvent".}
proc fQFontDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFontDialog_virtualbase_metric".}
proc fcQFontDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_metric".}
proc fQFontDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFontDialog_virtualbase_initPainter".}
proc fcQFontDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_initPainter".}
proc fQFontDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFontDialog_virtualbase_redirected".}
proc fcQFontDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_redirected".}
proc fQFontDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFontDialog_virtualbase_sharedPainter".}
proc fcQFontDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_sharedPainter".}
proc fQFontDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_inputMethodEvent".}
proc fcQFontDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_inputMethodEvent".}
proc fQFontDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFontDialog_virtualbase_inputMethodQuery".}
proc fcQFontDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_inputMethodQuery".}
proc fQFontDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFontDialog_virtualbase_focusNextPrevChild".}
proc fcQFontDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_focusNextPrevChild".}
proc fQFontDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_timerEvent".}
proc fcQFontDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_timerEvent".}
proc fQFontDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_childEvent".}
proc fcQFontDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_childEvent".}
proc fQFontDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_customEvent".}
proc fcQFontDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_customEvent".}
proc fQFontDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFontDialog_virtualbase_connectNotify".}
proc fcQFontDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_connectNotify".}
proc fQFontDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFontDialog_virtualbase_disconnectNotify".}
proc fcQFontDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_disconnectNotify".}
proc fcQFontDialog_staticMetaObject(): pointer {.importc: "QFontDialog_staticMetaObject".}
proc fcQFontDialog_delete(self: pointer) {.importc: "QFontDialog_delete".}


func init*(T: type QFontDialog, h: ptr cQFontDialog): QFontDialog =
  T(h: h)
proc create*(T: type QFontDialog, parent: gen_qwidget.QWidget): QFontDialog =

  QFontDialog.init(fcQFontDialog_new(parent.h))
proc create*(T: type QFontDialog, ): QFontDialog =

  QFontDialog.init(fcQFontDialog_new2())
proc create2*(T: type QFontDialog, initial: gen_qfont.QFont): QFontDialog =

  QFontDialog.init(fcQFontDialog_new3(initial.h))
proc create*(T: type QFontDialog, initial: gen_qfont.QFont, parent: gen_qwidget.QWidget): QFontDialog =

  QFontDialog.init(fcQFontDialog_new4(initial.h, parent.h))
proc metaObject*(self: QFontDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFontDialog_metaObject(self.h))

proc metacast*(self: QFontDialog, param1: cstring): pointer =

  fcQFontDialog_metacast(self.h, param1)

proc metacall*(self: QFontDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFontDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFontDialog, s: cstring): string =

  let v_ms = fcQFontDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCurrentFont*(self: QFontDialog, font: gen_qfont.QFont): void =

  fcQFontDialog_setCurrentFont(self.h, font.h)

proc currentFont*(self: QFontDialog, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDialog_currentFont(self.h))

proc selectedFont*(self: QFontDialog, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDialog_selectedFont(self.h))

proc setOption*(self: QFontDialog, option: QFontDialogFontDialogOption): void =

  fcQFontDialog_setOption(self.h, cint(option))

proc testOption*(self: QFontDialog, option: QFontDialogFontDialogOption): bool =

  fcQFontDialog_testOption(self.h, cint(option))

proc setOptions*(self: QFontDialog, options: QFontDialogFontDialogOption): void =

  fcQFontDialog_setOptions(self.h, cint(options))

proc options*(self: QFontDialog, ): QFontDialogFontDialogOption =

  QFontDialogFontDialogOption(fcQFontDialog_options(self.h))

proc setVisible*(self: QFontDialog, visible: bool): void =

  fcQFontDialog_setVisible(self.h, visible)

proc getFont*(_: type QFontDialog, ok: ptr bool): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDialog_getFont(ok))

proc getFont2*(_: type QFontDialog, ok: ptr bool, initial: gen_qfont.QFont): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDialog_getFont2(ok, initial.h))

proc currentFontChanged*(self: QFontDialog, font: gen_qfont.QFont): void =

  fcQFontDialog_currentFontChanged(self.h, font.h)

proc miqt_exec_callback_QFontDialog_currentFontChanged(slot: int, font: pointer) {.exportc.} =
  type Cb = proc(font: gen_qfont.QFont)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: font)


  nimfunc[](slotval1)

proc oncurrentFontChanged*(self: QFontDialog, slot: proc(font: gen_qfont.QFont)) =
  type Cb = proc(font: gen_qfont.QFont)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFontDialog_connect_currentFontChanged(self.h, cast[int](addr tmp[]))
proc fontSelected*(self: QFontDialog, font: gen_qfont.QFont): void =

  fcQFontDialog_fontSelected(self.h, font.h)

proc miqt_exec_callback_QFontDialog_fontSelected(slot: int, font: pointer) {.exportc.} =
  type Cb = proc(font: gen_qfont.QFont)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: font)


  nimfunc[](slotval1)

proc onfontSelected*(self: QFontDialog, slot: proc(font: gen_qfont.QFont)) =
  type Cb = proc(font: gen_qfont.QFont)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFontDialog_connect_fontSelected(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QFontDialog, s: cstring, c: cstring): string =

  let v_ms = fcQFontDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFontDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFontDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption2*(self: QFontDialog, option: QFontDialogFontDialogOption, on: bool): void =

  fcQFontDialog_setOption2(self.h, cint(option), on)

proc getFont22*(_: type QFontDialog, ok: ptr bool, parent: gen_qwidget.QWidget): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDialog_getFont22(ok, parent.h))

proc getFont3*(_: type QFontDialog, ok: ptr bool, initial: gen_qfont.QFont, parent: gen_qwidget.QWidget): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDialog_getFont3(ok, initial.h, parent.h))

proc getFont4*(_: type QFontDialog, ok: ptr bool, initial: gen_qfont.QFont, parent: gen_qwidget.QWidget, title: string): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDialog_getFont4(ok, initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc getFont5*(_: type QFontDialog, ok: ptr bool, initial: gen_qfont.QFont, parent: gen_qwidget.QWidget, title: string, options: QFontDialogFontDialogOption): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontDialog_getFont5(ok, initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), cint(options)))

proc callVirtualBase_metaObject(self: QFontDialog, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQFontDialog_virtualbase_metaObject(self.h))

type QFontDialogmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QFontDialog, slot: proc(super: QFontDialogmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_metaObject(self: ptr cQFontDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFontDialog_metaObject ".} =
  type Cb = proc(super: QFontDialogmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QFontDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QFontDialog, param1: cstring): pointer =


  fQFontDialog_virtualbase_metacast(self.h, param1)

type QFontDialogmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QFontDialog, slot: proc(super: QFontDialogmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_metacast(self: ptr cQFontDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QFontDialog_metacast ".} =
  type Cb = proc(super: QFontDialogmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QFontDialog(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QFontDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFontDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFontDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFontDialog, slot: proc(super: QFontDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_metacall(self: ptr cQFontDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFontDialog_metacall ".} =
  type Cb = proc(super: QFontDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFontDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setVisible(self: QFontDialog, visible: bool): void =


  fQFontDialog_virtualbase_setVisible(self.h, visible)

type QFontDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QFontDialog, slot: proc(super: QFontDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_setVisible(self: ptr cQFontDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFontDialog_setVisible ".} =
  type Cb = proc(super: QFontDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QFontDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QFontDialog, event: gen_qcoreevent.QEvent): void =


  fQFontDialog_virtualbase_changeEvent(self.h, event.h)

type QFontDialogchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QFontDialog, slot: proc(super: QFontDialogchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_changeEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_changeEvent ".} =
  type Cb = proc(super: QFontDialogchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_done(self: QFontDialog, resultVal: cint): void =


  fQFontDialog_virtualbase_done(self.h, resultVal)

type QFontDialogdoneBase* = proc(resultVal: cint): void
proc ondone*(self: QFontDialog, slot: proc(super: QFontDialogdoneBase, resultVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogdoneBase, resultVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_done(self: ptr cQFontDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QFontDialog_done ".} =
  type Cb = proc(super: QFontDialogdoneBase, resultVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resultVal: cint): auto =
    callVirtualBase_done(QFontDialog(h: self), resultVal)
  let slotval1 = resultVal


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QFontDialog, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQFontDialog_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QFontDialogeventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFontDialog, slot: proc(super: QFontDialogeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_eventFilter(self: ptr cQFontDialog, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFontDialog_eventFilter ".} =
  type Cb = proc(super: QFontDialogeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFontDialog(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QFontDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFontDialog_virtualbase_sizeHint(self.h))

type QFontDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QFontDialog, slot: proc(super: QFontDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_sizeHint(self: ptr cQFontDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFontDialog_sizeHint ".} =
  type Cb = proc(super: QFontDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QFontDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QFontDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFontDialog_virtualbase_minimumSizeHint(self.h))

type QFontDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QFontDialog, slot: proc(super: QFontDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_minimumSizeHint(self: ptr cQFontDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFontDialog_minimumSizeHint ".} =
  type Cb = proc(super: QFontDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QFontDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QFontDialog, ): void =


  fQFontDialog_virtualbase_open(self.h)

type QFontDialogopenBase* = proc(): void
proc onopen*(self: QFontDialog, slot: proc(super: QFontDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_open(self: ptr cQFontDialog, slot: int): void {.exportc: "miqt_exec_callback_QFontDialog_open ".} =
  type Cb = proc(super: QFontDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QFontDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QFontDialog, ): cint =


  fQFontDialog_virtualbase_exec(self.h)

type QFontDialogexecBase* = proc(): cint
proc onexec*(self: QFontDialog, slot: proc(super: QFontDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_exec(self: ptr cQFontDialog, slot: int): cint {.exportc: "miqt_exec_callback_QFontDialog_exec ".} =
  type Cb = proc(super: QFontDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QFontDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_accept(self: QFontDialog, ): void =


  fQFontDialog_virtualbase_accept(self.h)

type QFontDialogacceptBase* = proc(): void
proc onaccept*(self: QFontDialog, slot: proc(super: QFontDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_accept(self: ptr cQFontDialog, slot: int): void {.exportc: "miqt_exec_callback_QFontDialog_accept ".} =
  type Cb = proc(super: QFontDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QFontDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QFontDialog, ): void =


  fQFontDialog_virtualbase_reject(self.h)

type QFontDialogrejectBase* = proc(): void
proc onreject*(self: QFontDialog, slot: proc(super: QFontDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_reject(self: ptr cQFontDialog, slot: int): void {.exportc: "miqt_exec_callback_QFontDialog_reject ".} =
  type Cb = proc(super: QFontDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QFontDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QFontDialog, param1: gen_qevent.QKeyEvent): void =


  fQFontDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QFontDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QFontDialog, slot: proc(super: QFontDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_keyPressEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_keyPressEvent ".} =
  type Cb = proc(super: QFontDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QFontDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QFontDialog, param1: gen_qevent.QCloseEvent): void =


  fQFontDialog_virtualbase_closeEvent(self.h, param1.h)

type QFontDialogcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QFontDialog, slot: proc(super: QFontDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_closeEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_closeEvent ".} =
  type Cb = proc(super: QFontDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QFontDialog(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QFontDialog, param1: gen_qevent.QShowEvent): void =


  fQFontDialog_virtualbase_showEvent(self.h, param1.h)

type QFontDialogshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QFontDialog, slot: proc(super: QFontDialogshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_showEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_showEvent ".} =
  type Cb = proc(super: QFontDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QFontDialog(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QFontDialog, param1: gen_qevent.QResizeEvent): void =


  fQFontDialog_virtualbase_resizeEvent(self.h, param1.h)

type QFontDialogresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QFontDialog, slot: proc(super: QFontDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_resizeEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_resizeEvent ".} =
  type Cb = proc(super: QFontDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QFontDialog(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QFontDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQFontDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QFontDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QFontDialog, slot: proc(super: QFontDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_contextMenuEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_contextMenuEvent ".} =
  type Cb = proc(super: QFontDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QFontDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QFontDialog, ): cint =


  fQFontDialog_virtualbase_devType(self.h)

type QFontDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QFontDialog, slot: proc(super: QFontDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_devType(self: ptr cQFontDialog, slot: int): cint {.exportc: "miqt_exec_callback_QFontDialog_devType ".} =
  type Cb = proc(super: QFontDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QFontDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QFontDialog, param1: cint): cint =


  fQFontDialog_virtualbase_heightForWidth(self.h, param1)

type QFontDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QFontDialog, slot: proc(super: QFontDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_heightForWidth(self: ptr cQFontDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFontDialog_heightForWidth ".} =
  type Cb = proc(super: QFontDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QFontDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QFontDialog, ): bool =


  fQFontDialog_virtualbase_hasHeightForWidth(self.h)

type QFontDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QFontDialog, slot: proc(super: QFontDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_hasHeightForWidth(self: ptr cQFontDialog, slot: int): bool {.exportc: "miqt_exec_callback_QFontDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QFontDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QFontDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QFontDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQFontDialog_virtualbase_paintEngine(self.h))

type QFontDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QFontDialog, slot: proc(super: QFontDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_paintEngine(self: ptr cQFontDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFontDialog_paintEngine ".} =
  type Cb = proc(super: QFontDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QFontDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QFontDialog, event: gen_qcoreevent.QEvent): bool =


  fQFontDialog_virtualbase_event(self.h, event.h)

type QFontDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFontDialog, slot: proc(super: QFontDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_event(self: ptr cQFontDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFontDialog_event ".} =
  type Cb = proc(super: QFontDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFontDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QFontDialog, event: gen_qevent.QMouseEvent): void =


  fQFontDialog_virtualbase_mousePressEvent(self.h, event.h)

type QFontDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QFontDialog, slot: proc(super: QFontDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_mousePressEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_mousePressEvent ".} =
  type Cb = proc(super: QFontDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QFontDialog, event: gen_qevent.QMouseEvent): void =


  fQFontDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QFontDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QFontDialog, slot: proc(super: QFontDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_mouseReleaseEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QFontDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QFontDialog, event: gen_qevent.QMouseEvent): void =


  fQFontDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFontDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QFontDialog, slot: proc(super: QFontDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_mouseDoubleClickEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QFontDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QFontDialog, event: gen_qevent.QMouseEvent): void =


  fQFontDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QFontDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QFontDialog, slot: proc(super: QFontDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_mouseMoveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QFontDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QFontDialog, event: gen_qevent.QWheelEvent): void =


  fQFontDialog_virtualbase_wheelEvent(self.h, event.h)

type QFontDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QFontDialog, slot: proc(super: QFontDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_wheelEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_wheelEvent ".} =
  type Cb = proc(super: QFontDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QFontDialog, event: gen_qevent.QKeyEvent): void =


  fQFontDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QFontDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QFontDialog, slot: proc(super: QFontDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_keyReleaseEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QFontDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QFontDialog, event: gen_qevent.QFocusEvent): void =


  fQFontDialog_virtualbase_focusInEvent(self.h, event.h)

type QFontDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QFontDialog, slot: proc(super: QFontDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_focusInEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_focusInEvent ".} =
  type Cb = proc(super: QFontDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QFontDialog, event: gen_qevent.QFocusEvent): void =


  fQFontDialog_virtualbase_focusOutEvent(self.h, event.h)

type QFontDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QFontDialog, slot: proc(super: QFontDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_focusOutEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_focusOutEvent ".} =
  type Cb = proc(super: QFontDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QFontDialog, event: gen_qevent.QEnterEvent): void =


  fQFontDialog_virtualbase_enterEvent(self.h, event.h)

type QFontDialogenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QFontDialog, slot: proc(super: QFontDialogenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_enterEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_enterEvent ".} =
  type Cb = proc(super: QFontDialogenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QFontDialog, event: gen_qcoreevent.QEvent): void =


  fQFontDialog_virtualbase_leaveEvent(self.h, event.h)

type QFontDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QFontDialog, slot: proc(super: QFontDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_leaveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_leaveEvent ".} =
  type Cb = proc(super: QFontDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QFontDialog, event: gen_qevent.QPaintEvent): void =


  fQFontDialog_virtualbase_paintEvent(self.h, event.h)

type QFontDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QFontDialog, slot: proc(super: QFontDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_paintEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_paintEvent ".} =
  type Cb = proc(super: QFontDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QFontDialog, event: gen_qevent.QMoveEvent): void =


  fQFontDialog_virtualbase_moveEvent(self.h, event.h)

type QFontDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QFontDialog, slot: proc(super: QFontDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_moveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_moveEvent ".} =
  type Cb = proc(super: QFontDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QFontDialog, event: gen_qevent.QTabletEvent): void =


  fQFontDialog_virtualbase_tabletEvent(self.h, event.h)

type QFontDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QFontDialog, slot: proc(super: QFontDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_tabletEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_tabletEvent ".} =
  type Cb = proc(super: QFontDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QFontDialog, event: gen_qevent.QActionEvent): void =


  fQFontDialog_virtualbase_actionEvent(self.h, event.h)

type QFontDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QFontDialog, slot: proc(super: QFontDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_actionEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_actionEvent ".} =
  type Cb = proc(super: QFontDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QFontDialog, event: gen_qevent.QDragEnterEvent): void =


  fQFontDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QFontDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QFontDialog, slot: proc(super: QFontDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_dragEnterEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_dragEnterEvent ".} =
  type Cb = proc(super: QFontDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QFontDialog, event: gen_qevent.QDragMoveEvent): void =


  fQFontDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QFontDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QFontDialog, slot: proc(super: QFontDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_dragMoveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_dragMoveEvent ".} =
  type Cb = proc(super: QFontDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QFontDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQFontDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QFontDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QFontDialog, slot: proc(super: QFontDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_dragLeaveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QFontDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QFontDialog, event: gen_qevent.QDropEvent): void =


  fQFontDialog_virtualbase_dropEvent(self.h, event.h)

type QFontDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QFontDialog, slot: proc(super: QFontDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_dropEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_dropEvent ".} =
  type Cb = proc(super: QFontDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QFontDialog, event: gen_qevent.QHideEvent): void =


  fQFontDialog_virtualbase_hideEvent(self.h, event.h)

type QFontDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QFontDialog, slot: proc(super: QFontDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_hideEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_hideEvent ".} =
  type Cb = proc(super: QFontDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QFontDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQFontDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFontDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QFontDialog, slot: proc(super: QFontDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_nativeEvent(self: ptr cQFontDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QFontDialog_nativeEvent ".} =
  type Cb = proc(super: QFontDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QFontDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QFontDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQFontDialog_virtualbase_metric(self.h, cint(param1))

type QFontDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QFontDialog, slot: proc(super: QFontDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_metric(self: ptr cQFontDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFontDialog_metric ".} =
  type Cb = proc(super: QFontDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QFontDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QFontDialog, painter: gen_qpainter.QPainter): void =


  fQFontDialog_virtualbase_initPainter(self.h, painter.h)

type QFontDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QFontDialog, slot: proc(super: QFontDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_initPainter(self: ptr cQFontDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_initPainter ".} =
  type Cb = proc(super: QFontDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QFontDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QFontDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQFontDialog_virtualbase_redirected(self.h, offset.h))

type QFontDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QFontDialog, slot: proc(super: QFontDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_redirected(self: ptr cQFontDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFontDialog_redirected ".} =
  type Cb = proc(super: QFontDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QFontDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QFontDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQFontDialog_virtualbase_sharedPainter(self.h))

type QFontDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QFontDialog, slot: proc(super: QFontDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_sharedPainter(self: ptr cQFontDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFontDialog_sharedPainter ".} =
  type Cb = proc(super: QFontDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QFontDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QFontDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQFontDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QFontDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QFontDialog, slot: proc(super: QFontDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_inputMethodEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_inputMethodEvent ".} =
  type Cb = proc(super: QFontDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QFontDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QFontDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQFontDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFontDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QFontDialog, slot: proc(super: QFontDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QFontDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_inputMethodQuery(self: ptr cQFontDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFontDialog_inputMethodQuery ".} =
  type Cb = proc(super: QFontDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QFontDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QFontDialog, next: bool): bool =


  fQFontDialog_virtualbase_focusNextPrevChild(self.h, next)

type QFontDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QFontDialog, slot: proc(super: QFontDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_focusNextPrevChild(self: ptr cQFontDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFontDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QFontDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QFontDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFontDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQFontDialog_virtualbase_timerEvent(self.h, event.h)

type QFontDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFontDialog, slot: proc(super: QFontDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_timerEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_timerEvent ".} =
  type Cb = proc(super: QFontDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QFontDialog, event: gen_qcoreevent.QChildEvent): void =


  fQFontDialog_virtualbase_childEvent(self.h, event.h)

type QFontDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFontDialog, slot: proc(super: QFontDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_childEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_childEvent ".} =
  type Cb = proc(super: QFontDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFontDialog, event: gen_qcoreevent.QEvent): void =


  fQFontDialog_virtualbase_customEvent(self.h, event.h)

type QFontDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFontDialog, slot: proc(super: QFontDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_customEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_customEvent ".} =
  type Cb = proc(super: QFontDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFontDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFontDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQFontDialog_virtualbase_connectNotify(self.h, signal.h)

type QFontDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFontDialog, slot: proc(super: QFontDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_connectNotify(self: ptr cQFontDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_connectNotify ".} =
  type Cb = proc(super: QFontDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFontDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFontDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQFontDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QFontDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFontDialog, slot: proc(super: QFontDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFontDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_disconnectNotify(self: ptr cQFontDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_disconnectNotify ".} =
  type Cb = proc(super: QFontDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFontDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QFontDialog): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQFontDialog_staticMetaObject())
proc delete*(self: QFontDialog) =
  fcQFontDialog_delete(self.h)
