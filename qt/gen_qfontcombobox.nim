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
{.compile("gen_qfontcombobox.cpp", cflags).}


type QFontComboBoxFontFilter* = cint
const
  QFontComboBoxAllFonts* = 0
  QFontComboBoxScalableFonts* = 1
  QFontComboBoxNonScalableFonts* = 2
  QFontComboBoxMonospacedFonts* = 4
  QFontComboBoxProportionalFonts* = 8



import gen_qfontcombobox_types
export gen_qfontcombobox_types

import
  gen_qcombobox,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
  gen_qfontdatabase,
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
  gen_qcombobox,
  gen_qcoreevent,
  gen_qevent,
  gen_qfont,
  gen_qfontdatabase,
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

type cQFontComboBox*{.exportc: "QFontComboBox", incompleteStruct.} = object

proc fcQFontComboBox_new(parent: pointer): ptr cQFontComboBox {.importc: "QFontComboBox_new".}
proc fcQFontComboBox_new2(): ptr cQFontComboBox {.importc: "QFontComboBox_new2".}
proc fcQFontComboBox_metaObject(self: pointer, ): pointer {.importc: "QFontComboBox_metaObject".}
proc fcQFontComboBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontComboBox_metacast".}
proc fcQFontComboBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontComboBox_metacall".}
proc fcQFontComboBox_tr(s: cstring): struct_miqt_string {.importc: "QFontComboBox_tr".}
proc fcQFontComboBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QFontComboBox_trUtf8".}
proc fcQFontComboBox_setWritingSystem(self: pointer, writingSystem: cint): void {.importc: "QFontComboBox_setWritingSystem".}
proc fcQFontComboBox_writingSystem(self: pointer, ): cint {.importc: "QFontComboBox_writingSystem".}
proc fcQFontComboBox_setFontFilters(self: pointer, filters: cint): void {.importc: "QFontComboBox_setFontFilters".}
proc fcQFontComboBox_fontFilters(self: pointer, ): cint {.importc: "QFontComboBox_fontFilters".}
proc fcQFontComboBox_currentFont(self: pointer, ): pointer {.importc: "QFontComboBox_currentFont".}
proc fcQFontComboBox_sizeHint(self: pointer, ): pointer {.importc: "QFontComboBox_sizeHint".}
proc fcQFontComboBox_setCurrentFont(self: pointer, f: pointer): void {.importc: "QFontComboBox_setCurrentFont".}
proc fcQFontComboBox_currentFontChanged(self: pointer, f: pointer): void {.importc: "QFontComboBox_currentFontChanged".}
proc fQFontComboBox_connect_currentFontChanged(self: pointer, slot: int) {.importc: "QFontComboBox_connect_currentFontChanged".}
proc fcQFontComboBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontComboBox_tr2".}
proc fcQFontComboBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontComboBox_tr3".}
proc fcQFontComboBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontComboBox_trUtf82".}
proc fcQFontComboBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontComboBox_trUtf83".}
proc fQFontComboBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFontComboBox_virtualbase_metacall".}
proc fcQFontComboBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_metacall".}
proc fQFontComboBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFontComboBox_virtualbase_sizeHint".}
proc fcQFontComboBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_sizeHint".}
proc fQFontComboBox_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QFontComboBox_virtualbase_event".}
proc fcQFontComboBox_override_virtual_event(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_event".}
proc fQFontComboBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFontComboBox_virtualbase_minimumSizeHint".}
proc fcQFontComboBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_minimumSizeHint".}
proc fQFontComboBox_virtualbase_showPopup(self: pointer, ): void{.importc: "QFontComboBox_virtualbase_showPopup".}
proc fcQFontComboBox_override_virtual_showPopup(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_showPopup".}
proc fQFontComboBox_virtualbase_hidePopup(self: pointer, ): void{.importc: "QFontComboBox_virtualbase_hidePopup".}
proc fcQFontComboBox_override_virtual_hidePopup(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_hidePopup".}
proc fQFontComboBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFontComboBox_virtualbase_inputMethodQuery".}
proc fcQFontComboBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_inputMethodQuery".}
proc fQFontComboBox_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_focusInEvent".}
proc fcQFontComboBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_focusInEvent".}
proc fQFontComboBox_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_focusOutEvent".}
proc fcQFontComboBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_focusOutEvent".}
proc fQFontComboBox_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_changeEvent".}
proc fcQFontComboBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_changeEvent".}
proc fQFontComboBox_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_resizeEvent".}
proc fcQFontComboBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_resizeEvent".}
proc fQFontComboBox_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_paintEvent".}
proc fcQFontComboBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_paintEvent".}
proc fQFontComboBox_virtualbase_showEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_showEvent".}
proc fcQFontComboBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_showEvent".}
proc fQFontComboBox_virtualbase_hideEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_hideEvent".}
proc fcQFontComboBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_hideEvent".}
proc fQFontComboBox_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_mousePressEvent".}
proc fcQFontComboBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_mousePressEvent".}
proc fQFontComboBox_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_mouseReleaseEvent".}
proc fcQFontComboBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_mouseReleaseEvent".}
proc fQFontComboBox_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_keyPressEvent".}
proc fcQFontComboBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_keyPressEvent".}
proc fQFontComboBox_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_keyReleaseEvent".}
proc fcQFontComboBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_keyReleaseEvent".}
proc fQFontComboBox_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_wheelEvent".}
proc fcQFontComboBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_wheelEvent".}
proc fQFontComboBox_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_contextMenuEvent".}
proc fcQFontComboBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_contextMenuEvent".}
proc fQFontComboBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFontComboBox_virtualbase_inputMethodEvent".}
proc fcQFontComboBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_inputMethodEvent".}
proc fQFontComboBox_virtualbase_devType(self: pointer, ): cint{.importc: "QFontComboBox_virtualbase_devType".}
proc fcQFontComboBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_devType".}
proc fQFontComboBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFontComboBox_virtualbase_setVisible".}
proc fcQFontComboBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_setVisible".}
proc fQFontComboBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFontComboBox_virtualbase_heightForWidth".}
proc fcQFontComboBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_heightForWidth".}
proc fQFontComboBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFontComboBox_virtualbase_hasHeightForWidth".}
proc fcQFontComboBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_hasHeightForWidth".}
proc fQFontComboBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFontComboBox_virtualbase_paintEngine".}
proc fcQFontComboBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_paintEngine".}
proc fQFontComboBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_mouseDoubleClickEvent".}
proc fcQFontComboBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_mouseDoubleClickEvent".}
proc fQFontComboBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_mouseMoveEvent".}
proc fcQFontComboBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_mouseMoveEvent".}
proc fQFontComboBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_enterEvent".}
proc fcQFontComboBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_enterEvent".}
proc fQFontComboBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_leaveEvent".}
proc fcQFontComboBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_leaveEvent".}
proc fQFontComboBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_moveEvent".}
proc fcQFontComboBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_moveEvent".}
proc fQFontComboBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_closeEvent".}
proc fcQFontComboBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_closeEvent".}
proc fQFontComboBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_tabletEvent".}
proc fcQFontComboBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_tabletEvent".}
proc fQFontComboBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_actionEvent".}
proc fcQFontComboBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_actionEvent".}
proc fQFontComboBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_dragEnterEvent".}
proc fcQFontComboBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_dragEnterEvent".}
proc fQFontComboBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_dragMoveEvent".}
proc fcQFontComboBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_dragMoveEvent".}
proc fQFontComboBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_dragLeaveEvent".}
proc fcQFontComboBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_dragLeaveEvent".}
proc fQFontComboBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_dropEvent".}
proc fcQFontComboBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_dropEvent".}
proc fQFontComboBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QFontComboBox_virtualbase_nativeEvent".}
proc fcQFontComboBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_nativeEvent".}
proc fQFontComboBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFontComboBox_virtualbase_metric".}
proc fcQFontComboBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_metric".}
proc fQFontComboBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFontComboBox_virtualbase_initPainter".}
proc fcQFontComboBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_initPainter".}
proc fQFontComboBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFontComboBox_virtualbase_redirected".}
proc fcQFontComboBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_redirected".}
proc fQFontComboBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFontComboBox_virtualbase_sharedPainter".}
proc fcQFontComboBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_sharedPainter".}
proc fQFontComboBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFontComboBox_virtualbase_focusNextPrevChild".}
proc fcQFontComboBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_focusNextPrevChild".}
proc fQFontComboBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFontComboBox_virtualbase_eventFilter".}
proc fcQFontComboBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_eventFilter".}
proc fQFontComboBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_timerEvent".}
proc fcQFontComboBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_timerEvent".}
proc fQFontComboBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_childEvent".}
proc fcQFontComboBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_childEvent".}
proc fQFontComboBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_customEvent".}
proc fcQFontComboBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_customEvent".}
proc fQFontComboBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFontComboBox_virtualbase_connectNotify".}
proc fcQFontComboBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_connectNotify".}
proc fQFontComboBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFontComboBox_virtualbase_disconnectNotify".}
proc fcQFontComboBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_disconnectNotify".}
proc fcQFontComboBox_delete(self: pointer) {.importc: "QFontComboBox_delete".}


func init*(T: type QFontComboBox, h: ptr cQFontComboBox): QFontComboBox =
  T(h: h)
proc create*(T: type QFontComboBox, parent: gen_qwidget.QWidget): QFontComboBox =

  QFontComboBox.init(fcQFontComboBox_new(parent.h))
proc create*(T: type QFontComboBox, ): QFontComboBox =

  QFontComboBox.init(fcQFontComboBox_new2())
proc metaObject*(self: QFontComboBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFontComboBox_metaObject(self.h))

proc metacast*(self: QFontComboBox, param1: cstring): pointer =

  fcQFontComboBox_metacast(self.h, param1)

proc metacall*(self: QFontComboBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFontComboBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFontComboBox, s: cstring): string =

  let v_ms = fcQFontComboBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QFontComboBox, s: cstring): string =

  let v_ms = fcQFontComboBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWritingSystem*(self: QFontComboBox, writingSystem: gen_qfontdatabase.QFontDatabaseWritingSystem): void =

  fcQFontComboBox_setWritingSystem(self.h, cint(writingSystem))

proc writingSystem*(self: QFontComboBox, ): gen_qfontdatabase.QFontDatabaseWritingSystem =

  gen_qfontdatabase.QFontDatabaseWritingSystem(fcQFontComboBox_writingSystem(self.h))

proc setFontFilters*(self: QFontComboBox, filters: QFontComboBoxFontFilter): void =

  fcQFontComboBox_setFontFilters(self.h, cint(filters))

proc fontFilters*(self: QFontComboBox, ): QFontComboBoxFontFilter =

  QFontComboBoxFontFilter(fcQFontComboBox_fontFilters(self.h))

proc currentFont*(self: QFontComboBox, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQFontComboBox_currentFont(self.h))

proc sizeHint*(self: QFontComboBox, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQFontComboBox_sizeHint(self.h))

proc setCurrentFont*(self: QFontComboBox, f: gen_qfont.QFont): void =

  fcQFontComboBox_setCurrentFont(self.h, f.h)

proc currentFontChanged*(self: QFontComboBox, f: gen_qfont.QFont): void =

  fcQFontComboBox_currentFontChanged(self.h, f.h)

proc miqt_exec_callback_QFontComboBox_currentFontChanged(slot: int, f: pointer) {.exportc.} =
  type Cb = proc(f: gen_qfont.QFont)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qfont.QFont(h: f)


  nimfunc[](slotval1)

proc oncurrentFontChanged*(self: QFontComboBox, slot: proc(f: gen_qfont.QFont)) =
  type Cb = proc(f: gen_qfont.QFont)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFontComboBox_connect_currentFontChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QFontComboBox, s: cstring, c: cstring): string =

  let v_ms = fcQFontComboBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFontComboBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFontComboBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QFontComboBox, s: cstring, c: cstring): string =

  let v_ms = fcQFontComboBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QFontComboBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFontComboBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QFontComboBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFontComboBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFontComboBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFontComboBox, slot: proc(super: QFontComboBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_metacall(self: ptr cQFontComboBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFontComboBox_metacall ".} =
  type Cb = proc(super: QFontComboBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFontComboBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QFontComboBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFontComboBox_virtualbase_sizeHint(self.h))

type QFontComboBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QFontComboBox, slot: proc(super: QFontComboBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_sizeHint(self: ptr cQFontComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QFontComboBox_sizeHint ".} =
  type Cb = proc(super: QFontComboBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QFontComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QFontComboBox, e: gen_qcoreevent.QEvent): bool =


  fQFontComboBox_virtualbase_event(self.h, e.h)

type QFontComboBoxeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFontComboBox, slot: proc(super: QFontComboBoxeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_event(self: ptr cQFontComboBox, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QFontComboBox_event ".} =
  type Cb = proc(super: QFontComboBoxeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFontComboBox(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QFontComboBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFontComboBox_virtualbase_minimumSizeHint(self.h))

type QFontComboBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QFontComboBox, slot: proc(super: QFontComboBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_minimumSizeHint(self: ptr cQFontComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QFontComboBox_minimumSizeHint ".} =
  type Cb = proc(super: QFontComboBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QFontComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_showPopup(self: QFontComboBox, ): void =


  fQFontComboBox_virtualbase_showPopup(self.h)

type QFontComboBoxshowPopupBase* = proc(): void
proc onshowPopup*(self: QFontComboBox, slot: proc(super: QFontComboBoxshowPopupBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxshowPopupBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_showPopup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_showPopup(self: ptr cQFontComboBox, slot: int): void {.exportc: "miqt_exec_callback_QFontComboBox_showPopup ".} =
  type Cb = proc(super: QFontComboBoxshowPopupBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_showPopup(QFontComboBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_hidePopup(self: QFontComboBox, ): void =


  fQFontComboBox_virtualbase_hidePopup(self.h)

type QFontComboBoxhidePopupBase* = proc(): void
proc onhidePopup*(self: QFontComboBox, slot: proc(super: QFontComboBoxhidePopupBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxhidePopupBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_hidePopup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_hidePopup(self: ptr cQFontComboBox, slot: int): void {.exportc: "miqt_exec_callback_QFontComboBox_hidePopup ".} =
  type Cb = proc(super: QFontComboBoxhidePopupBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hidePopup(QFontComboBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_inputMethodQuery(self: QFontComboBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQFontComboBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFontComboBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QFontComboBox, slot: proc(super: QFontComboBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_inputMethodQuery(self: ptr cQFontComboBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFontComboBox_inputMethodQuery ".} =
  type Cb = proc(super: QFontComboBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QFontComboBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusInEvent(self: QFontComboBox, e: gen_qevent.QFocusEvent): void =


  fQFontComboBox_virtualbase_focusInEvent(self.h, e.h)

type QFontComboBoxfocusInEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxfocusInEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_focusInEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_focusInEvent ".} =
  type Cb = proc(super: QFontComboBoxfocusInEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QFontComboBox, e: gen_qevent.QFocusEvent): void =


  fQFontComboBox_virtualbase_focusOutEvent(self.h, e.h)

type QFontComboBoxfocusOutEventBase* = proc(e: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxfocusOutEventBase, e: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_focusOutEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_focusOutEvent ".} =
  type Cb = proc(super: QFontComboBoxfocusOutEventBase, e: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QFocusEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QFontComboBox, e: gen_qcoreevent.QEvent): void =


  fQFontComboBox_virtualbase_changeEvent(self.h, e.h)

type QFontComboBoxchangeEventBase* = proc(e: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxchangeEventBase, e: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxchangeEventBase, e: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_changeEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_changeEvent ".} =
  type Cb = proc(super: QFontComboBoxchangeEventBase, e: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QFontComboBox, e: gen_qevent.QResizeEvent): void =


  fQFontComboBox_virtualbase_resizeEvent(self.h, e.h)

type QFontComboBoxresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_resizeEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_resizeEvent ".} =
  type Cb = proc(super: QFontComboBoxresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QFontComboBox, e: gen_qevent.QPaintEvent): void =


  fQFontComboBox_virtualbase_paintEvent(self.h, e.h)

type QFontComboBoxpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_paintEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_paintEvent ".} =
  type Cb = proc(super: QFontComboBoxpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QFontComboBox, e: gen_qevent.QShowEvent): void =


  fQFontComboBox_virtualbase_showEvent(self.h, e.h)

type QFontComboBoxshowEventBase* = proc(e: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxshowEventBase, e: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxshowEventBase, e: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_showEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_showEvent ".} =
  type Cb = proc(super: QFontComboBoxshowEventBase, e: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QShowEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QFontComboBox, e: gen_qevent.QHideEvent): void =


  fQFontComboBox_virtualbase_hideEvent(self.h, e.h)

type QFontComboBoxhideEventBase* = proc(e: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxhideEventBase, e: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxhideEventBase, e: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_hideEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_hideEvent ".} =
  type Cb = proc(super: QFontComboBoxhideEventBase, e: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QHideEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QFontComboBox, e: gen_qevent.QMouseEvent): void =


  fQFontComboBox_virtualbase_mousePressEvent(self.h, e.h)

type QFontComboBoxmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_mousePressEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_mousePressEvent ".} =
  type Cb = proc(super: QFontComboBoxmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QFontComboBox, e: gen_qevent.QMouseEvent): void =


  fQFontComboBox_virtualbase_mouseReleaseEvent(self.h, e.h)

type QFontComboBoxmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_mouseReleaseEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QFontComboBoxmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QFontComboBox, e: gen_qevent.QKeyEvent): void =


  fQFontComboBox_virtualbase_keyPressEvent(self.h, e.h)

type QFontComboBoxkeyPressEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxkeyPressEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_keyPressEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_keyPressEvent ".} =
  type Cb = proc(super: QFontComboBoxkeyPressEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QFontComboBox, e: gen_qevent.QKeyEvent): void =


  fQFontComboBox_virtualbase_keyReleaseEvent(self.h, e.h)

type QFontComboBoxkeyReleaseEventBase* = proc(e: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_keyReleaseEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_keyReleaseEvent ".} =
  type Cb = proc(super: QFontComboBoxkeyReleaseEventBase, e: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QKeyEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QFontComboBox, e: gen_qevent.QWheelEvent): void =


  fQFontComboBox_virtualbase_wheelEvent(self.h, e.h)

type QFontComboBoxwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_wheelEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_wheelEvent ".} =
  type Cb = proc(super: QFontComboBoxwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QFontComboBox, e: gen_qevent.QContextMenuEvent): void =


  fQFontComboBox_virtualbase_contextMenuEvent(self.h, e.h)

type QFontComboBoxcontextMenuEventBase* = proc(e: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_contextMenuEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_contextMenuEvent ".} =
  type Cb = proc(super: QFontComboBoxcontextMenuEventBase, e: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QFontComboBox(h: self), e)
  let slotval1 = gen_qevent.QContextMenuEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QFontComboBox, param1: gen_qevent.QInputMethodEvent): void =


  fQFontComboBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QFontComboBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_inputMethodEvent(self: ptr cQFontComboBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_inputMethodEvent ".} =
  type Cb = proc(super: QFontComboBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QFontComboBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QFontComboBox, ): cint =


  fQFontComboBox_virtualbase_devType(self.h)

type QFontComboBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QFontComboBox, slot: proc(super: QFontComboBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_devType(self: ptr cQFontComboBox, slot: int): cint {.exportc: "miqt_exec_callback_QFontComboBox_devType ".} =
  type Cb = proc(super: QFontComboBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QFontComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QFontComboBox, visible: bool): void =


  fQFontComboBox_virtualbase_setVisible(self.h, visible)

type QFontComboBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QFontComboBox, slot: proc(super: QFontComboBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_setVisible(self: ptr cQFontComboBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFontComboBox_setVisible ".} =
  type Cb = proc(super: QFontComboBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QFontComboBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QFontComboBox, param1: cint): cint =


  fQFontComboBox_virtualbase_heightForWidth(self.h, param1)

type QFontComboBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QFontComboBox, slot: proc(super: QFontComboBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_heightForWidth(self: ptr cQFontComboBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFontComboBox_heightForWidth ".} =
  type Cb = proc(super: QFontComboBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QFontComboBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QFontComboBox, ): bool =


  fQFontComboBox_virtualbase_hasHeightForWidth(self.h)

type QFontComboBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QFontComboBox, slot: proc(super: QFontComboBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_hasHeightForWidth(self: ptr cQFontComboBox, slot: int): bool {.exportc: "miqt_exec_callback_QFontComboBox_hasHeightForWidth ".} =
  type Cb = proc(super: QFontComboBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QFontComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QFontComboBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQFontComboBox_virtualbase_paintEngine(self.h))

type QFontComboBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QFontComboBox, slot: proc(super: QFontComboBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_paintEngine(self: ptr cQFontComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QFontComboBox_paintEngine ".} =
  type Cb = proc(super: QFontComboBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QFontComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QFontComboBox, event: gen_qevent.QMouseEvent): void =


  fQFontComboBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFontComboBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_mouseDoubleClickEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QFontComboBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QFontComboBox, event: gen_qevent.QMouseEvent): void =


  fQFontComboBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QFontComboBoxmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_mouseMoveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_mouseMoveEvent ".} =
  type Cb = proc(super: QFontComboBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QFontComboBox, event: gen_qcoreevent.QEvent): void =


  fQFontComboBox_virtualbase_enterEvent(self.h, event.h)

type QFontComboBoxenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_enterEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_enterEvent ".} =
  type Cb = proc(super: QFontComboBoxenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QFontComboBox, event: gen_qcoreevent.QEvent): void =


  fQFontComboBox_virtualbase_leaveEvent(self.h, event.h)

type QFontComboBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_leaveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_leaveEvent ".} =
  type Cb = proc(super: QFontComboBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QFontComboBox, event: gen_qevent.QMoveEvent): void =


  fQFontComboBox_virtualbase_moveEvent(self.h, event.h)

type QFontComboBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_moveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_moveEvent ".} =
  type Cb = proc(super: QFontComboBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QFontComboBox, event: gen_qevent.QCloseEvent): void =


  fQFontComboBox_virtualbase_closeEvent(self.h, event.h)

type QFontComboBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_closeEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_closeEvent ".} =
  type Cb = proc(super: QFontComboBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QFontComboBox, event: gen_qevent.QTabletEvent): void =


  fQFontComboBox_virtualbase_tabletEvent(self.h, event.h)

type QFontComboBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_tabletEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_tabletEvent ".} =
  type Cb = proc(super: QFontComboBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QFontComboBox, event: gen_qevent.QActionEvent): void =


  fQFontComboBox_virtualbase_actionEvent(self.h, event.h)

type QFontComboBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_actionEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_actionEvent ".} =
  type Cb = proc(super: QFontComboBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QFontComboBox, event: gen_qevent.QDragEnterEvent): void =


  fQFontComboBox_virtualbase_dragEnterEvent(self.h, event.h)

type QFontComboBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_dragEnterEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_dragEnterEvent ".} =
  type Cb = proc(super: QFontComboBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QFontComboBox, event: gen_qevent.QDragMoveEvent): void =


  fQFontComboBox_virtualbase_dragMoveEvent(self.h, event.h)

type QFontComboBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_dragMoveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_dragMoveEvent ".} =
  type Cb = proc(super: QFontComboBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QFontComboBox, event: gen_qevent.QDragLeaveEvent): void =


  fQFontComboBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QFontComboBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_dragLeaveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_dragLeaveEvent ".} =
  type Cb = proc(super: QFontComboBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QFontComboBox, event: gen_qevent.QDropEvent): void =


  fQFontComboBox_virtualbase_dropEvent(self.h, event.h)

type QFontComboBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_dropEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_dropEvent ".} =
  type Cb = proc(super: QFontComboBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QFontComboBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQFontComboBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFontComboBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_nativeEvent(self: ptr cQFontComboBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QFontComboBox_nativeEvent ".} =
  type Cb = proc(super: QFontComboBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QFontComboBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QFontComboBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQFontComboBox_virtualbase_metric(self.h, cint(param1))

type QFontComboBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QFontComboBox, slot: proc(super: QFontComboBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_metric(self: ptr cQFontComboBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFontComboBox_metric ".} =
  type Cb = proc(super: QFontComboBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QFontComboBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QFontComboBox, painter: gen_qpainter.QPainter): void =


  fQFontComboBox_virtualbase_initPainter(self.h, painter.h)

type QFontComboBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QFontComboBox, slot: proc(super: QFontComboBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_initPainter(self: ptr cQFontComboBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_initPainter ".} =
  type Cb = proc(super: QFontComboBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QFontComboBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QFontComboBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQFontComboBox_virtualbase_redirected(self.h, offset.h))

type QFontComboBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QFontComboBox, slot: proc(super: QFontComboBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_redirected(self: ptr cQFontComboBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFontComboBox_redirected ".} =
  type Cb = proc(super: QFontComboBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QFontComboBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QFontComboBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQFontComboBox_virtualbase_sharedPainter(self.h))

type QFontComboBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QFontComboBox, slot: proc(super: QFontComboBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_sharedPainter(self: ptr cQFontComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QFontComboBox_sharedPainter ".} =
  type Cb = proc(super: QFontComboBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QFontComboBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QFontComboBox, next: bool): bool =


  fQFontComboBox_virtualbase_focusNextPrevChild(self.h, next)

type QFontComboBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QFontComboBox, slot: proc(super: QFontComboBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_focusNextPrevChild(self: ptr cQFontComboBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFontComboBox_focusNextPrevChild ".} =
  type Cb = proc(super: QFontComboBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QFontComboBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QFontComboBox, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQFontComboBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFontComboBoxeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFontComboBox, slot: proc(super: QFontComboBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_eventFilter(self: ptr cQFontComboBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFontComboBox_eventFilter ".} =
  type Cb = proc(super: QFontComboBoxeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFontComboBox(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFontComboBox, event: gen_qcoreevent.QTimerEvent): void =


  fQFontComboBox_virtualbase_timerEvent(self.h, event.h)

type QFontComboBoxtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_timerEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_timerEvent ".} =
  type Cb = proc(super: QFontComboBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QFontComboBox, event: gen_qcoreevent.QChildEvent): void =


  fQFontComboBox_virtualbase_childEvent(self.h, event.h)

type QFontComboBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_childEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_childEvent ".} =
  type Cb = proc(super: QFontComboBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFontComboBox, event: gen_qcoreevent.QEvent): void =


  fQFontComboBox_virtualbase_customEvent(self.h, event.h)

type QFontComboBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFontComboBox, slot: proc(super: QFontComboBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_customEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_customEvent ".} =
  type Cb = proc(super: QFontComboBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFontComboBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFontComboBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQFontComboBox_virtualbase_connectNotify(self.h, signal.h)

type QFontComboBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFontComboBox, slot: proc(super: QFontComboBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_connectNotify(self: ptr cQFontComboBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_connectNotify ".} =
  type Cb = proc(super: QFontComboBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFontComboBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFontComboBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQFontComboBox_virtualbase_disconnectNotify(self.h, signal.h)

type QFontComboBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFontComboBox, slot: proc(super: QFontComboBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFontComboBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_disconnectNotify(self: ptr cQFontComboBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_disconnectNotify ".} =
  type Cb = proc(super: QFontComboBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFontComboBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QFontComboBox) =
  fcQFontComboBox_delete(self.h)
