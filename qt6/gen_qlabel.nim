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
{.compile("gen_qlabel.cpp", cflags).}


import gen_qlabel_types
export gen_qlabel_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
  gen_qmetaobject,
  gen_qmovie,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpicture,
  gen_qpixmap,
  gen_qpoint,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
  gen_qmetaobject,
  gen_qmovie,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpicture,
  gen_qpixmap,
  gen_qpoint,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQLabel*{.exportc: "QLabel", incompleteStruct.} = object

proc fcQLabel_new(parent: pointer): ptr cQLabel {.importc: "QLabel_new".}
proc fcQLabel_new2(): ptr cQLabel {.importc: "QLabel_new2".}
proc fcQLabel_new3(text: struct_miqt_string): ptr cQLabel {.importc: "QLabel_new3".}
proc fcQLabel_new4(parent: pointer, f: cint): ptr cQLabel {.importc: "QLabel_new4".}
proc fcQLabel_new5(text: struct_miqt_string, parent: pointer): ptr cQLabel {.importc: "QLabel_new5".}
proc fcQLabel_new6(text: struct_miqt_string, parent: pointer, f: cint): ptr cQLabel {.importc: "QLabel_new6".}
proc fcQLabel_metaObject(self: pointer, ): pointer {.importc: "QLabel_metaObject".}
proc fcQLabel_metacast(self: pointer, param1: cstring): pointer {.importc: "QLabel_metacast".}
proc fcQLabel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLabel_metacall".}
proc fcQLabel_tr(s: cstring): struct_miqt_string {.importc: "QLabel_tr".}
proc fcQLabel_text(self: pointer, ): struct_miqt_string {.importc: "QLabel_text".}
proc fcQLabel_pixmap(self: pointer, param1: cint): pointer {.importc: "QLabel_pixmap".}
proc fcQLabel_pixmap2(self: pointer, ): pointer {.importc: "QLabel_pixmap2".}
proc fcQLabel_picture(self: pointer, param1: cint): pointer {.importc: "QLabel_picture".}
proc fcQLabel_picture2(self: pointer, ): pointer {.importc: "QLabel_picture2".}
proc fcQLabel_movie(self: pointer, ): pointer {.importc: "QLabel_movie".}
proc fcQLabel_textFormat(self: pointer, ): cint {.importc: "QLabel_textFormat".}
proc fcQLabel_setTextFormat(self: pointer, textFormat: cint): void {.importc: "QLabel_setTextFormat".}
proc fcQLabel_alignment(self: pointer, ): cint {.importc: "QLabel_alignment".}
proc fcQLabel_setAlignment(self: pointer, alignment: cint): void {.importc: "QLabel_setAlignment".}
proc fcQLabel_setWordWrap(self: pointer, on: bool): void {.importc: "QLabel_setWordWrap".}
proc fcQLabel_wordWrap(self: pointer, ): bool {.importc: "QLabel_wordWrap".}
proc fcQLabel_indent(self: pointer, ): cint {.importc: "QLabel_indent".}
proc fcQLabel_setIndent(self: pointer, indent: cint): void {.importc: "QLabel_setIndent".}
proc fcQLabel_margin(self: pointer, ): cint {.importc: "QLabel_margin".}
proc fcQLabel_setMargin(self: pointer, margin: cint): void {.importc: "QLabel_setMargin".}
proc fcQLabel_hasScaledContents(self: pointer, ): bool {.importc: "QLabel_hasScaledContents".}
proc fcQLabel_setScaledContents(self: pointer, scaledContents: bool): void {.importc: "QLabel_setScaledContents".}
proc fcQLabel_sizeHint(self: pointer, ): pointer {.importc: "QLabel_sizeHint".}
proc fcQLabel_minimumSizeHint(self: pointer, ): pointer {.importc: "QLabel_minimumSizeHint".}
proc fcQLabel_setBuddy(self: pointer, buddy: pointer): void {.importc: "QLabel_setBuddy".}
proc fcQLabel_buddy(self: pointer, ): pointer {.importc: "QLabel_buddy".}
proc fcQLabel_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLabel_heightForWidth".}
proc fcQLabel_openExternalLinks(self: pointer, ): bool {.importc: "QLabel_openExternalLinks".}
proc fcQLabel_setOpenExternalLinks(self: pointer, open: bool): void {.importc: "QLabel_setOpenExternalLinks".}
proc fcQLabel_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QLabel_setTextInteractionFlags".}
proc fcQLabel_textInteractionFlags(self: pointer, ): cint {.importc: "QLabel_textInteractionFlags".}
proc fcQLabel_setSelection(self: pointer, param1: cint, param2: cint): void {.importc: "QLabel_setSelection".}
proc fcQLabel_hasSelectedText(self: pointer, ): bool {.importc: "QLabel_hasSelectedText".}
proc fcQLabel_selectedText(self: pointer, ): struct_miqt_string {.importc: "QLabel_selectedText".}
proc fcQLabel_selectionStart(self: pointer, ): cint {.importc: "QLabel_selectionStart".}
proc fcQLabel_setText(self: pointer, text: struct_miqt_string): void {.importc: "QLabel_setText".}
proc fcQLabel_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QLabel_setPixmap".}
proc fcQLabel_setPicture(self: pointer, picture: pointer): void {.importc: "QLabel_setPicture".}
proc fcQLabel_setMovie(self: pointer, movie: pointer): void {.importc: "QLabel_setMovie".}
proc fcQLabel_setNum(self: pointer, num: cint): void {.importc: "QLabel_setNum".}
proc fcQLabel_setNumWithNum(self: pointer, num: float64): void {.importc: "QLabel_setNumWithNum".}
proc fcQLabel_clear(self: pointer, ): void {.importc: "QLabel_clear".}
proc fcQLabel_linkActivated(self: pointer, link: struct_miqt_string): void {.importc: "QLabel_linkActivated".}
proc fQLabel_connect_linkActivated(self: pointer, slot: int) {.importc: "QLabel_connect_linkActivated".}
proc fcQLabel_linkHovered(self: pointer, link: struct_miqt_string): void {.importc: "QLabel_linkHovered".}
proc fQLabel_connect_linkHovered(self: pointer, slot: int) {.importc: "QLabel_connect_linkHovered".}
proc fcQLabel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLabel_tr2".}
proc fcQLabel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLabel_tr3".}
proc fQLabel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLabel_virtualbase_metacall".}
proc fcQLabel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLabel_override_virtual_metacall".}
proc fQLabel_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QLabel_virtualbase_sizeHint".}
proc fcQLabel_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLabel_override_virtual_sizeHint".}
proc fQLabel_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QLabel_virtualbase_minimumSizeHint".}
proc fcQLabel_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QLabel_override_virtual_minimumSizeHint".}
proc fQLabel_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLabel_virtualbase_heightForWidth".}
proc fcQLabel_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLabel_override_virtual_heightForWidth".}
proc fQLabel_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QLabel_virtualbase_event".}
proc fcQLabel_override_virtual_event(self: pointer, slot: int) {.importc: "QLabel_override_virtual_event".}
proc fQLabel_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_keyPressEvent".}
proc fcQLabel_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_keyPressEvent".}
proc fQLabel_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QLabel_virtualbase_paintEvent".}
proc fcQLabel_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_paintEvent".}
proc fQLabel_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QLabel_virtualbase_changeEvent".}
proc fcQLabel_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_changeEvent".}
proc fQLabel_virtualbase_mousePressEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_mousePressEvent".}
proc fcQLabel_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_mousePressEvent".}
proc fQLabel_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_mouseMoveEvent".}
proc fcQLabel_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_mouseMoveEvent".}
proc fQLabel_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_mouseReleaseEvent".}
proc fcQLabel_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_mouseReleaseEvent".}
proc fQLabel_virtualbase_contextMenuEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_contextMenuEvent".}
proc fcQLabel_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_contextMenuEvent".}
proc fQLabel_virtualbase_focusInEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_focusInEvent".}
proc fcQLabel_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_focusInEvent".}
proc fQLabel_virtualbase_focusOutEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_focusOutEvent".}
proc fcQLabel_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_focusOutEvent".}
proc fQLabel_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QLabel_virtualbase_focusNextPrevChild".}
proc fcQLabel_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QLabel_override_virtual_focusNextPrevChild".}
proc fQLabel_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QLabel_virtualbase_initStyleOption".}
proc fcQLabel_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QLabel_override_virtual_initStyleOption".}
proc fQLabel_virtualbase_devType(self: pointer, ): cint{.importc: "QLabel_virtualbase_devType".}
proc fcQLabel_override_virtual_devType(self: pointer, slot: int) {.importc: "QLabel_override_virtual_devType".}
proc fQLabel_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QLabel_virtualbase_setVisible".}
proc fcQLabel_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QLabel_override_virtual_setVisible".}
proc fQLabel_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLabel_virtualbase_hasHeightForWidth".}
proc fcQLabel_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLabel_override_virtual_hasHeightForWidth".}
proc fQLabel_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QLabel_virtualbase_paintEngine".}
proc fcQLabel_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QLabel_override_virtual_paintEngine".}
proc fQLabel_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_mouseDoubleClickEvent".}
proc fcQLabel_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_mouseDoubleClickEvent".}
proc fQLabel_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_wheelEvent".}
proc fcQLabel_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_wheelEvent".}
proc fQLabel_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_keyReleaseEvent".}
proc fcQLabel_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_keyReleaseEvent".}
proc fQLabel_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_enterEvent".}
proc fcQLabel_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_enterEvent".}
proc fQLabel_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_leaveEvent".}
proc fcQLabel_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_leaveEvent".}
proc fQLabel_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_moveEvent".}
proc fcQLabel_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_moveEvent".}
proc fQLabel_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_resizeEvent".}
proc fcQLabel_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_resizeEvent".}
proc fQLabel_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_closeEvent".}
proc fcQLabel_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_closeEvent".}
proc fQLabel_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_tabletEvent".}
proc fcQLabel_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_tabletEvent".}
proc fQLabel_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_actionEvent".}
proc fcQLabel_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_actionEvent".}
proc fQLabel_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_dragEnterEvent".}
proc fcQLabel_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_dragEnterEvent".}
proc fQLabel_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_dragMoveEvent".}
proc fcQLabel_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_dragMoveEvent".}
proc fQLabel_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_dragLeaveEvent".}
proc fcQLabel_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_dragLeaveEvent".}
proc fQLabel_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_dropEvent".}
proc fcQLabel_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_dropEvent".}
proc fQLabel_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_showEvent".}
proc fcQLabel_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_showEvent".}
proc fQLabel_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_hideEvent".}
proc fcQLabel_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_hideEvent".}
proc fQLabel_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QLabel_virtualbase_nativeEvent".}
proc fcQLabel_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_nativeEvent".}
proc fQLabel_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QLabel_virtualbase_metric".}
proc fcQLabel_override_virtual_metric(self: pointer, slot: int) {.importc: "QLabel_override_virtual_metric".}
proc fQLabel_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QLabel_virtualbase_initPainter".}
proc fcQLabel_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QLabel_override_virtual_initPainter".}
proc fQLabel_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QLabel_virtualbase_redirected".}
proc fcQLabel_override_virtual_redirected(self: pointer, slot: int) {.importc: "QLabel_override_virtual_redirected".}
proc fQLabel_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QLabel_virtualbase_sharedPainter".}
proc fcQLabel_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QLabel_override_virtual_sharedPainter".}
proc fQLabel_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QLabel_virtualbase_inputMethodEvent".}
proc fcQLabel_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_inputMethodEvent".}
proc fQLabel_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QLabel_virtualbase_inputMethodQuery".}
proc fcQLabel_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QLabel_override_virtual_inputMethodQuery".}
proc fQLabel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLabel_virtualbase_eventFilter".}
proc fcQLabel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLabel_override_virtual_eventFilter".}
proc fQLabel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_timerEvent".}
proc fcQLabel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_timerEvent".}
proc fQLabel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_childEvent".}
proc fcQLabel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_childEvent".}
proc fQLabel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_customEvent".}
proc fcQLabel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_customEvent".}
proc fQLabel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLabel_virtualbase_connectNotify".}
proc fcQLabel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLabel_override_virtual_connectNotify".}
proc fQLabel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLabel_virtualbase_disconnectNotify".}
proc fcQLabel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLabel_override_virtual_disconnectNotify".}
proc fcQLabel_staticMetaObject(): pointer {.importc: "QLabel_staticMetaObject".}
proc fcQLabel_delete(self: pointer) {.importc: "QLabel_delete".}


func init*(T: type QLabel, h: ptr cQLabel): QLabel =
  T(h: h)
proc create*(T: type QLabel, parent: gen_qwidget.QWidget): QLabel =

  QLabel.init(fcQLabel_new(parent.h))
proc create*(T: type QLabel, ): QLabel =

  QLabel.init(fcQLabel_new2())
proc create*(T: type QLabel, text: string): QLabel =

  QLabel.init(fcQLabel_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QLabel, parent: gen_qwidget.QWidget, f: gen_qnamespace.WindowType): QLabel =

  QLabel.init(fcQLabel_new4(parent.h, cint(f)))
proc create*(T: type QLabel, text: string, parent: gen_qwidget.QWidget): QLabel =

  QLabel.init(fcQLabel_new5(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc create*(T: type QLabel, text: string, parent: gen_qwidget.QWidget, f: gen_qnamespace.WindowType): QLabel =

  QLabel.init(fcQLabel_new6(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h, cint(f)))
proc metaObject*(self: QLabel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQLabel_metaObject(self.h))

proc metacast*(self: QLabel, param1: cstring): pointer =

  fcQLabel_metacast(self.h, param1)

proc metacall*(self: QLabel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQLabel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QLabel, s: cstring): string =

  let v_ms = fcQLabel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc text*(self: QLabel, ): string =

  let v_ms = fcQLabel_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pixmap*(self: QLabel, param1: gen_qnamespace.ReturnByValueConstant): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQLabel_pixmap(self.h, cint(param1)))

proc pixmap2*(self: QLabel, ): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQLabel_pixmap2(self.h))

proc picture*(self: QLabel, param1: gen_qnamespace.ReturnByValueConstant): gen_qpicture.QPicture =

  gen_qpicture.QPicture(h: fcQLabel_picture(self.h, cint(param1)))

proc picture2*(self: QLabel, ): gen_qpicture.QPicture =

  gen_qpicture.QPicture(h: fcQLabel_picture2(self.h))

proc movie*(self: QLabel, ): gen_qmovie.QMovie =

  gen_qmovie.QMovie(h: fcQLabel_movie(self.h))

proc textFormat*(self: QLabel, ): gen_qnamespace.TextFormat =

  gen_qnamespace.TextFormat(fcQLabel_textFormat(self.h))

proc setTextFormat*(self: QLabel, textFormat: gen_qnamespace.TextFormat): void =

  fcQLabel_setTextFormat(self.h, cint(textFormat))

proc alignment*(self: QLabel, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQLabel_alignment(self.h))

proc setAlignment*(self: QLabel, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQLabel_setAlignment(self.h, cint(alignment))

proc setWordWrap*(self: QLabel, on: bool): void =

  fcQLabel_setWordWrap(self.h, on)

proc wordWrap*(self: QLabel, ): bool =

  fcQLabel_wordWrap(self.h)

proc indent*(self: QLabel, ): cint =

  fcQLabel_indent(self.h)

proc setIndent*(self: QLabel, indent: cint): void =

  fcQLabel_setIndent(self.h, indent)

proc margin*(self: QLabel, ): cint =

  fcQLabel_margin(self.h)

proc setMargin*(self: QLabel, margin: cint): void =

  fcQLabel_setMargin(self.h, margin)

proc hasScaledContents*(self: QLabel, ): bool =

  fcQLabel_hasScaledContents(self.h)

proc setScaledContents*(self: QLabel, scaledContents: bool): void =

  fcQLabel_setScaledContents(self.h, scaledContents)

proc sizeHint*(self: QLabel, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLabel_sizeHint(self.h))

proc minimumSizeHint*(self: QLabel, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLabel_minimumSizeHint(self.h))

proc setBuddy*(self: QLabel, buddy: gen_qwidget.QWidget): void =

  fcQLabel_setBuddy(self.h, buddy.h)

proc buddy*(self: QLabel, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQLabel_buddy(self.h))

proc heightForWidth*(self: QLabel, param1: cint): cint =

  fcQLabel_heightForWidth(self.h, param1)

proc openExternalLinks*(self: QLabel, ): bool =

  fcQLabel_openExternalLinks(self.h)

proc setOpenExternalLinks*(self: QLabel, open: bool): void =

  fcQLabel_setOpenExternalLinks(self.h, open)

proc setTextInteractionFlags*(self: QLabel, flags: gen_qnamespace.TextInteractionFlag): void =

  fcQLabel_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: QLabel, ): gen_qnamespace.TextInteractionFlag =

  gen_qnamespace.TextInteractionFlag(fcQLabel_textInteractionFlags(self.h))

proc setSelection*(self: QLabel, param1: cint, param2: cint): void =

  fcQLabel_setSelection(self.h, param1, param2)

proc hasSelectedText*(self: QLabel, ): bool =

  fcQLabel_hasSelectedText(self.h)

proc selectedText*(self: QLabel, ): string =

  let v_ms = fcQLabel_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectionStart*(self: QLabel, ): cint =

  fcQLabel_selectionStart(self.h)

proc setText*(self: QLabel, text: string): void =

  fcQLabel_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setPixmap*(self: QLabel, pixmap: gen_qpixmap.QPixmap): void =

  fcQLabel_setPixmap(self.h, pixmap.h)

proc setPicture*(self: QLabel, picture: gen_qpicture.QPicture): void =

  fcQLabel_setPicture(self.h, picture.h)

proc setMovie*(self: QLabel, movie: gen_qmovie.QMovie): void =

  fcQLabel_setMovie(self.h, movie.h)

proc setNum*(self: QLabel, num: cint): void =

  fcQLabel_setNum(self.h, num)

proc setNumWithNum*(self: QLabel, num: float64): void =

  fcQLabel_setNumWithNum(self.h, num)

proc clear*(self: QLabel, ): void =

  fcQLabel_clear(self.h)

proc linkActivated*(self: QLabel, link: string): void =

  fcQLabel_linkActivated(self.h, struct_miqt_string(data: link, len: csize_t(len(link))))

proc miqt_exec_callback_QLabel_linkActivated(slot: int, link: struct_miqt_string) {.exportc.} =
  type Cb = proc(link: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vlink_ms = link
  let vlinkx_ret = string.fromBytes(toOpenArrayByte(vlink_ms.data, 0, int(vlink_ms.len)-1))
  c_free(vlink_ms.data)
  let slotval1 = vlinkx_ret


  nimfunc[](slotval1)

proc onlinkActivated*(self: QLabel, slot: proc(link: string)) =
  type Cb = proc(link: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLabel_connect_linkActivated(self.h, cast[int](addr tmp[]))
proc linkHovered*(self: QLabel, link: string): void =

  fcQLabel_linkHovered(self.h, struct_miqt_string(data: link, len: csize_t(len(link))))

proc miqt_exec_callback_QLabel_linkHovered(slot: int, link: struct_miqt_string) {.exportc.} =
  type Cb = proc(link: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vlink_ms = link
  let vlinkx_ret = string.fromBytes(toOpenArrayByte(vlink_ms.data, 0, int(vlink_ms.len)-1))
  c_free(vlink_ms.data)
  let slotval1 = vlinkx_ret


  nimfunc[](slotval1)

proc onlinkHovered*(self: QLabel, slot: proc(link: string)) =
  type Cb = proc(link: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLabel_connect_linkHovered(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QLabel, s: cstring, c: cstring): string =

  let v_ms = fcQLabel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QLabel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQLabel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QLabel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQLabel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLabelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QLabel, slot: proc(super: QLabelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QLabelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_metacall(self: ptr cQLabel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLabel_metacall ".} =
  type Cb = proc(super: QLabelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QLabel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QLabel, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQLabel_virtualbase_sizeHint(self.h))

type QLabelsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QLabel, slot: proc(super: QLabelsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QLabelsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_sizeHint(self: ptr cQLabel, slot: int): pointer {.exportc: "miqt_exec_callback_QLabel_sizeHint ".} =
  type Cb = proc(super: QLabelsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QLabel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QLabel, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQLabel_virtualbase_minimumSizeHint(self.h))

type QLabelminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QLabel, slot: proc(super: QLabelminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QLabelminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_minimumSizeHint(self: ptr cQLabel, slot: int): pointer {.exportc: "miqt_exec_callback_QLabel_minimumSizeHint ".} =
  type Cb = proc(super: QLabelminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QLabel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QLabel, param1: cint): cint =


  fQLabel_virtualbase_heightForWidth(self.h, param1)

type QLabelheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QLabel, slot: proc(super: QLabelheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QLabelheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_heightForWidth(self: ptr cQLabel, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLabel_heightForWidth ".} =
  type Cb = proc(super: QLabelheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QLabel(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QLabel, e: gen_qcoreevent.QEvent): bool =


  fQLabel_virtualbase_event(self.h, e.h)

type QLabeleventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QLabel, slot: proc(super: QLabeleventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLabeleventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_event(self: ptr cQLabel, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QLabel_event ".} =
  type Cb = proc(super: QLabeleventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QLabel(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QLabel, ev: gen_qevent.QKeyEvent): void =


  fQLabel_virtualbase_keyPressEvent(self.h, ev.h)

type QLabelkeyPressEventBase* = proc(ev: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QLabel, slot: proc(super: QLabelkeyPressEventBase, ev: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_keyPressEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_keyPressEvent ".} =
  type Cb = proc(super: QLabelkeyPressEventBase, ev: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QLabel(h: self), ev)
  let slotval1 = gen_qevent.QKeyEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QLabel, param1: gen_qevent.QPaintEvent): void =


  fQLabel_virtualbase_paintEvent(self.h, param1.h)

type QLabelpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QLabel, slot: proc(super: QLabelpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_paintEvent(self: ptr cQLabel, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLabel_paintEvent ".} =
  type Cb = proc(super: QLabelpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QLabel(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QLabel, param1: gen_qcoreevent.QEvent): void =


  fQLabel_virtualbase_changeEvent(self.h, param1.h)

type QLabelchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QLabel, slot: proc(super: QLabelchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_changeEvent(self: ptr cQLabel, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLabel_changeEvent ".} =
  type Cb = proc(super: QLabelchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QLabel(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QLabel, ev: gen_qevent.QMouseEvent): void =


  fQLabel_virtualbase_mousePressEvent(self.h, ev.h)

type QLabelmousePressEventBase* = proc(ev: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QLabel, slot: proc(super: QLabelmousePressEventBase, ev: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelmousePressEventBase, ev: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_mousePressEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_mousePressEvent ".} =
  type Cb = proc(super: QLabelmousePressEventBase, ev: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QLabel(h: self), ev)
  let slotval1 = gen_qevent.QMouseEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QLabel, ev: gen_qevent.QMouseEvent): void =


  fQLabel_virtualbase_mouseMoveEvent(self.h, ev.h)

type QLabelmouseMoveEventBase* = proc(ev: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QLabel, slot: proc(super: QLabelmouseMoveEventBase, ev: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelmouseMoveEventBase, ev: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_mouseMoveEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_mouseMoveEvent ".} =
  type Cb = proc(super: QLabelmouseMoveEventBase, ev: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QLabel(h: self), ev)
  let slotval1 = gen_qevent.QMouseEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QLabel, ev: gen_qevent.QMouseEvent): void =


  fQLabel_virtualbase_mouseReleaseEvent(self.h, ev.h)

type QLabelmouseReleaseEventBase* = proc(ev: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QLabel, slot: proc(super: QLabelmouseReleaseEventBase, ev: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelmouseReleaseEventBase, ev: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_mouseReleaseEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_mouseReleaseEvent ".} =
  type Cb = proc(super: QLabelmouseReleaseEventBase, ev: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QLabel(h: self), ev)
  let slotval1 = gen_qevent.QMouseEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QLabel, ev: gen_qevent.QContextMenuEvent): void =


  fQLabel_virtualbase_contextMenuEvent(self.h, ev.h)

type QLabelcontextMenuEventBase* = proc(ev: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QLabel, slot: proc(super: QLabelcontextMenuEventBase, ev: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelcontextMenuEventBase, ev: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_contextMenuEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_contextMenuEvent ".} =
  type Cb = proc(super: QLabelcontextMenuEventBase, ev: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QLabel(h: self), ev)
  let slotval1 = gen_qevent.QContextMenuEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QLabel, ev: gen_qevent.QFocusEvent): void =


  fQLabel_virtualbase_focusInEvent(self.h, ev.h)

type QLabelfocusInEventBase* = proc(ev: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QLabel, slot: proc(super: QLabelfocusInEventBase, ev: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelfocusInEventBase, ev: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_focusInEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_focusInEvent ".} =
  type Cb = proc(super: QLabelfocusInEventBase, ev: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QLabel(h: self), ev)
  let slotval1 = gen_qevent.QFocusEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QLabel, ev: gen_qevent.QFocusEvent): void =


  fQLabel_virtualbase_focusOutEvent(self.h, ev.h)

type QLabelfocusOutEventBase* = proc(ev: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QLabel, slot: proc(super: QLabelfocusOutEventBase, ev: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelfocusOutEventBase, ev: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_focusOutEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_focusOutEvent ".} =
  type Cb = proc(super: QLabelfocusOutEventBase, ev: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ev: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QLabel(h: self), ev)
  let slotval1 = gen_qevent.QFocusEvent(h: ev)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QLabel, next: bool): bool =


  fQLabel_virtualbase_focusNextPrevChild(self.h, next)

type QLabelfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QLabel, slot: proc(super: QLabelfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QLabelfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_focusNextPrevChild(self: ptr cQLabel, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QLabel_focusNextPrevChild ".} =
  type Cb = proc(super: QLabelfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QLabel(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initStyleOption(self: QLabel, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQLabel_virtualbase_initStyleOption(self.h, option.h)

type QLabelinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QLabel, slot: proc(super: QLabelinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_initStyleOption(self: ptr cQLabel, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QLabel_initStyleOption ".} =
  type Cb = proc(super: QLabelinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QLabel(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QLabel, ): cint =


  fQLabel_virtualbase_devType(self.h)

type QLabeldevTypeBase* = proc(): cint
proc ondevType*(self: QLabel, slot: proc(super: QLabeldevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QLabeldevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_devType(self: ptr cQLabel, slot: int): cint {.exportc: "miqt_exec_callback_QLabel_devType ".} =
  type Cb = proc(super: QLabeldevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QLabel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QLabel, visible: bool): void =


  fQLabel_virtualbase_setVisible(self.h, visible)

type QLabelsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QLabel, slot: proc(super: QLabelsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_setVisible(self: ptr cQLabel, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QLabel_setVisible ".} =
  type Cb = proc(super: QLabelsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QLabel(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hasHeightForWidth(self: QLabel, ): bool =


  fQLabel_virtualbase_hasHeightForWidth(self.h)

type QLabelhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QLabel, slot: proc(super: QLabelhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLabelhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_hasHeightForWidth(self: ptr cQLabel, slot: int): bool {.exportc: "miqt_exec_callback_QLabel_hasHeightForWidth ".} =
  type Cb = proc(super: QLabelhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QLabel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QLabel, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQLabel_virtualbase_paintEngine(self.h))

type QLabelpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QLabel, slot: proc(super: QLabelpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QLabelpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_paintEngine(self: ptr cQLabel, slot: int): pointer {.exportc: "miqt_exec_callback_QLabel_paintEngine ".} =
  type Cb = proc(super: QLabelpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QLabel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QLabel, event: gen_qevent.QMouseEvent): void =


  fQLabel_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QLabelmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QLabel, slot: proc(super: QLabelmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_mouseDoubleClickEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QLabelmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QLabel, event: gen_qevent.QWheelEvent): void =


  fQLabel_virtualbase_wheelEvent(self.h, event.h)

type QLabelwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QLabel, slot: proc(super: QLabelwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_wheelEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_wheelEvent ".} =
  type Cb = proc(super: QLabelwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QLabel, event: gen_qevent.QKeyEvent): void =


  fQLabel_virtualbase_keyReleaseEvent(self.h, event.h)

type QLabelkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QLabel, slot: proc(super: QLabelkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_keyReleaseEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_keyReleaseEvent ".} =
  type Cb = proc(super: QLabelkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QLabel, event: gen_qevent.QEnterEvent): void =


  fQLabel_virtualbase_enterEvent(self.h, event.h)

type QLabelenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QLabel, slot: proc(super: QLabelenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_enterEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_enterEvent ".} =
  type Cb = proc(super: QLabelenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QLabel, event: gen_qcoreevent.QEvent): void =


  fQLabel_virtualbase_leaveEvent(self.h, event.h)

type QLabelleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QLabel, slot: proc(super: QLabelleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_leaveEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_leaveEvent ".} =
  type Cb = proc(super: QLabelleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QLabel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QLabel, event: gen_qevent.QMoveEvent): void =


  fQLabel_virtualbase_moveEvent(self.h, event.h)

type QLabelmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QLabel, slot: proc(super: QLabelmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_moveEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_moveEvent ".} =
  type Cb = proc(super: QLabelmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QLabel, event: gen_qevent.QResizeEvent): void =


  fQLabel_virtualbase_resizeEvent(self.h, event.h)

type QLabelresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QLabel, slot: proc(super: QLabelresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_resizeEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_resizeEvent ".} =
  type Cb = proc(super: QLabelresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QLabel, event: gen_qevent.QCloseEvent): void =


  fQLabel_virtualbase_closeEvent(self.h, event.h)

type QLabelcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QLabel, slot: proc(super: QLabelcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_closeEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_closeEvent ".} =
  type Cb = proc(super: QLabelcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QLabel, event: gen_qevent.QTabletEvent): void =


  fQLabel_virtualbase_tabletEvent(self.h, event.h)

type QLabeltabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QLabel, slot: proc(super: QLabeltabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabeltabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_tabletEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_tabletEvent ".} =
  type Cb = proc(super: QLabeltabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QLabel, event: gen_qevent.QActionEvent): void =


  fQLabel_virtualbase_actionEvent(self.h, event.h)

type QLabelactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QLabel, slot: proc(super: QLabelactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_actionEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_actionEvent ".} =
  type Cb = proc(super: QLabelactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QLabel, event: gen_qevent.QDragEnterEvent): void =


  fQLabel_virtualbase_dragEnterEvent(self.h, event.h)

type QLabeldragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QLabel, slot: proc(super: QLabeldragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabeldragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_dragEnterEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_dragEnterEvent ".} =
  type Cb = proc(super: QLabeldragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QLabel, event: gen_qevent.QDragMoveEvent): void =


  fQLabel_virtualbase_dragMoveEvent(self.h, event.h)

type QLabeldragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QLabel, slot: proc(super: QLabeldragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabeldragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_dragMoveEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_dragMoveEvent ".} =
  type Cb = proc(super: QLabeldragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QLabel, event: gen_qevent.QDragLeaveEvent): void =


  fQLabel_virtualbase_dragLeaveEvent(self.h, event.h)

type QLabeldragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QLabel, slot: proc(super: QLabeldragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabeldragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_dragLeaveEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_dragLeaveEvent ".} =
  type Cb = proc(super: QLabeldragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QLabel, event: gen_qevent.QDropEvent): void =


  fQLabel_virtualbase_dropEvent(self.h, event.h)

type QLabeldropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QLabel, slot: proc(super: QLabeldropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabeldropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_dropEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_dropEvent ".} =
  type Cb = proc(super: QLabeldropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QLabel, event: gen_qevent.QShowEvent): void =


  fQLabel_virtualbase_showEvent(self.h, event.h)

type QLabelshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QLabel, slot: proc(super: QLabelshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_showEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_showEvent ".} =
  type Cb = proc(super: QLabelshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QLabel, event: gen_qevent.QHideEvent): void =


  fQLabel_virtualbase_hideEvent(self.h, event.h)

type QLabelhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QLabel, slot: proc(super: QLabelhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_hideEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_hideEvent ".} =
  type Cb = proc(super: QLabelhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QLabel(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QLabel, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQLabel_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QLabelnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QLabel, slot: proc(super: QLabelnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QLabelnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_nativeEvent(self: ptr cQLabel, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QLabel_nativeEvent ".} =
  type Cb = proc(super: QLabelnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QLabel(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QLabel, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQLabel_virtualbase_metric(self.h, cint(param1))

type QLabelmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QLabel, slot: proc(super: QLabelmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QLabelmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_metric(self: ptr cQLabel, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLabel_metric ".} =
  type Cb = proc(super: QLabelmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QLabel(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QLabel, painter: gen_qpainter.QPainter): void =


  fQLabel_virtualbase_initPainter(self.h, painter.h)

type QLabelinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QLabel, slot: proc(super: QLabelinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_initPainter(self: ptr cQLabel, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QLabel_initPainter ".} =
  type Cb = proc(super: QLabelinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QLabel(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QLabel, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQLabel_virtualbase_redirected(self.h, offset.h))

type QLabelredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QLabel, slot: proc(super: QLabelredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QLabelredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_redirected(self: ptr cQLabel, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QLabel_redirected ".} =
  type Cb = proc(super: QLabelredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QLabel(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QLabel, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQLabel_virtualbase_sharedPainter(self.h))

type QLabelsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QLabel, slot: proc(super: QLabelsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QLabelsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_sharedPainter(self: ptr cQLabel, slot: int): pointer {.exportc: "miqt_exec_callback_QLabel_sharedPainter ".} =
  type Cb = proc(super: QLabelsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QLabel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QLabel, param1: gen_qevent.QInputMethodEvent): void =


  fQLabel_virtualbase_inputMethodEvent(self.h, param1.h)

type QLabelinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QLabel, slot: proc(super: QLabelinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_inputMethodEvent(self: ptr cQLabel, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLabel_inputMethodEvent ".} =
  type Cb = proc(super: QLabelinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QLabel(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QLabel, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQLabel_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QLabelinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QLabel, slot: proc(super: QLabelinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QLabelinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_inputMethodQuery(self: ptr cQLabel, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QLabel_inputMethodQuery ".} =
  type Cb = proc(super: QLabelinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QLabel(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_eventFilter(self: QLabel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQLabel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLabeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QLabel, slot: proc(super: QLabeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLabeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_eventFilter(self: ptr cQLabel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLabel_eventFilter ".} =
  type Cb = proc(super: QLabeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QLabel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QLabel, event: gen_qcoreevent.QTimerEvent): void =


  fQLabel_virtualbase_timerEvent(self.h, event.h)

type QLabeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QLabel, slot: proc(super: QLabeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_timerEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_timerEvent ".} =
  type Cb = proc(super: QLabeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QLabel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QLabel, event: gen_qcoreevent.QChildEvent): void =


  fQLabel_virtualbase_childEvent(self.h, event.h)

type QLabelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QLabel, slot: proc(super: QLabelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_childEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_childEvent ".} =
  type Cb = proc(super: QLabelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QLabel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QLabel, event: gen_qcoreevent.QEvent): void =


  fQLabel_virtualbase_customEvent(self.h, event.h)

type QLabelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QLabel, slot: proc(super: QLabelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_customEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_customEvent ".} =
  type Cb = proc(super: QLabelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QLabel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QLabel, signal: gen_qmetaobject.QMetaMethod): void =


  fQLabel_virtualbase_connectNotify(self.h, signal.h)

type QLabelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QLabel, slot: proc(super: QLabelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLabelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_connectNotify(self: ptr cQLabel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLabel_connectNotify ".} =
  type Cb = proc(super: QLabelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QLabel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QLabel, signal: gen_qmetaobject.QMetaMethod): void =


  fQLabel_virtualbase_disconnectNotify(self.h, signal.h)

type QLabeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QLabel, slot: proc(super: QLabeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLabeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_disconnectNotify(self: ptr cQLabel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLabel_disconnectNotify ".} =
  type Cb = proc(super: QLabeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QLabel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QLabel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQLabel_staticMetaObject())
proc delete*(self: QLabel) =
  fcQLabel_delete(self.h)
