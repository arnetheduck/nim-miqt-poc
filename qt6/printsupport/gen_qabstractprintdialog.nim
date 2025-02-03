import Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt6PrintSupport")
{.compile("gen_qabstractprintdialog.cpp", cflags).}


type QAbstractPrintDialogPrintRange* = cint
const
  QAbstractPrintDialogAllPages* = 0
  QAbstractPrintDialogSelection* = 1
  QAbstractPrintDialogPageRange* = 2
  QAbstractPrintDialogCurrentPage* = 3



type QAbstractPrintDialogPrintDialogOption* = cint
const
  QAbstractPrintDialogPrintToFile* = 1
  QAbstractPrintDialogPrintSelection* = 2
  QAbstractPrintDialogPrintPageRange* = 4
  QAbstractPrintDialogPrintShowPageSize* = 8
  QAbstractPrintDialogPrintCollateCopies* = 16
  QAbstractPrintDialogPrintCurrentPage* = 64



import gen_qabstractprintdialog_types
export gen_qabstractprintdialog_types

import
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
  gen_qprinter,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
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
  gen_qprinter,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQAbstractPrintDialog*{.exportc: "QAbstractPrintDialog", incompleteStruct.} = object

proc fcQAbstractPrintDialog_new(printer: pointer): ptr cQAbstractPrintDialog {.importc: "QAbstractPrintDialog_new".}
proc fcQAbstractPrintDialog_new2(printer: pointer, parent: pointer): ptr cQAbstractPrintDialog {.importc: "QAbstractPrintDialog_new2".}
proc fcQAbstractPrintDialog_metaObject(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_metaObject".}
proc fcQAbstractPrintDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractPrintDialog_metacast".}
proc fcQAbstractPrintDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractPrintDialog_metacall".}
proc fcQAbstractPrintDialog_tr(s: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_tr".}
proc fcQAbstractPrintDialog_setOptionTabs(self: pointer, tabs: struct_miqt_array): void {.importc: "QAbstractPrintDialog_setOptionTabs".}
proc fcQAbstractPrintDialog_setPrintRange(self: pointer, range: cint): void {.importc: "QAbstractPrintDialog_setPrintRange".}
proc fcQAbstractPrintDialog_printRange(self: pointer, ): cint {.importc: "QAbstractPrintDialog_printRange".}
proc fcQAbstractPrintDialog_setMinMax(self: pointer, min: cint, max: cint): void {.importc: "QAbstractPrintDialog_setMinMax".}
proc fcQAbstractPrintDialog_minPage(self: pointer, ): cint {.importc: "QAbstractPrintDialog_minPage".}
proc fcQAbstractPrintDialog_maxPage(self: pointer, ): cint {.importc: "QAbstractPrintDialog_maxPage".}
proc fcQAbstractPrintDialog_setFromTo(self: pointer, fromPage: cint, toPage: cint): void {.importc: "QAbstractPrintDialog_setFromTo".}
proc fcQAbstractPrintDialog_fromPage(self: pointer, ): cint {.importc: "QAbstractPrintDialog_fromPage".}
proc fcQAbstractPrintDialog_toPage(self: pointer, ): cint {.importc: "QAbstractPrintDialog_toPage".}
proc fcQAbstractPrintDialog_printer(self: pointer, ): pointer {.importc: "QAbstractPrintDialog_printer".}
proc fcQAbstractPrintDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractPrintDialog_tr2".}
proc fcQAbstractPrintDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractPrintDialog_tr3".}
proc fQAbstractPrintDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractPrintDialog_virtualbase_metacall".}
proc fcQAbstractPrintDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_metacall".}
proc fQAbstractPrintDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractPrintDialog_virtualbase_setVisible".}
proc fcQAbstractPrintDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_setVisible".}
proc fQAbstractPrintDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractPrintDialog_virtualbase_sizeHint".}
proc fcQAbstractPrintDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_sizeHint".}
proc fQAbstractPrintDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractPrintDialog_virtualbase_minimumSizeHint".}
proc fcQAbstractPrintDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_minimumSizeHint".}
proc fQAbstractPrintDialog_virtualbase_open(self: pointer, ): void{.importc: "QAbstractPrintDialog_virtualbase_open".}
proc fcQAbstractPrintDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_open".}
proc fQAbstractPrintDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QAbstractPrintDialog_virtualbase_exec".}
proc fcQAbstractPrintDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_exec".}
proc fQAbstractPrintDialog_virtualbase_done(self: pointer, param1: cint): void{.importc: "QAbstractPrintDialog_virtualbase_done".}
proc fcQAbstractPrintDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_done".}
proc fQAbstractPrintDialog_virtualbase_accept(self: pointer, ): void{.importc: "QAbstractPrintDialog_virtualbase_accept".}
proc fcQAbstractPrintDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_accept".}
proc fQAbstractPrintDialog_virtualbase_reject(self: pointer, ): void{.importc: "QAbstractPrintDialog_virtualbase_reject".}
proc fcQAbstractPrintDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_reject".}
proc fQAbstractPrintDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_keyPressEvent".}
proc fcQAbstractPrintDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_keyPressEvent".}
proc fQAbstractPrintDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_closeEvent".}
proc fcQAbstractPrintDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_closeEvent".}
proc fQAbstractPrintDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_showEvent".}
proc fcQAbstractPrintDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_showEvent".}
proc fQAbstractPrintDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_resizeEvent".}
proc fcQAbstractPrintDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_resizeEvent".}
proc fQAbstractPrintDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_contextMenuEvent".}
proc fcQAbstractPrintDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_contextMenuEvent".}
proc fQAbstractPrintDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QAbstractPrintDialog_virtualbase_eventFilter".}
proc fcQAbstractPrintDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_eventFilter".}
proc fQAbstractPrintDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractPrintDialog_virtualbase_devType".}
proc fcQAbstractPrintDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_devType".}
proc fQAbstractPrintDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractPrintDialog_virtualbase_heightForWidth".}
proc fcQAbstractPrintDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_heightForWidth".}
proc fQAbstractPrintDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractPrintDialog_virtualbase_hasHeightForWidth".}
proc fcQAbstractPrintDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_hasHeightForWidth".}
proc fQAbstractPrintDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractPrintDialog_virtualbase_paintEngine".}
proc fcQAbstractPrintDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_paintEngine".}
proc fQAbstractPrintDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractPrintDialog_virtualbase_event".}
proc fcQAbstractPrintDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_event".}
proc fQAbstractPrintDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_mousePressEvent".}
proc fcQAbstractPrintDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_mousePressEvent".}
proc fQAbstractPrintDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_mouseReleaseEvent".}
proc fcQAbstractPrintDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_mouseReleaseEvent".}
proc fQAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractPrintDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractPrintDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_mouseMoveEvent".}
proc fcQAbstractPrintDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_mouseMoveEvent".}
proc fQAbstractPrintDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_wheelEvent".}
proc fcQAbstractPrintDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_wheelEvent".}
proc fQAbstractPrintDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_keyReleaseEvent".}
proc fcQAbstractPrintDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_keyReleaseEvent".}
proc fQAbstractPrintDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_focusInEvent".}
proc fcQAbstractPrintDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_focusInEvent".}
proc fQAbstractPrintDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_focusOutEvent".}
proc fcQAbstractPrintDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_focusOutEvent".}
proc fQAbstractPrintDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_enterEvent".}
proc fcQAbstractPrintDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_enterEvent".}
proc fQAbstractPrintDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_leaveEvent".}
proc fcQAbstractPrintDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_leaveEvent".}
proc fQAbstractPrintDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_paintEvent".}
proc fcQAbstractPrintDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_paintEvent".}
proc fQAbstractPrintDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_moveEvent".}
proc fcQAbstractPrintDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_moveEvent".}
proc fQAbstractPrintDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_tabletEvent".}
proc fcQAbstractPrintDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_tabletEvent".}
proc fQAbstractPrintDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_actionEvent".}
proc fcQAbstractPrintDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_actionEvent".}
proc fQAbstractPrintDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_dragEnterEvent".}
proc fcQAbstractPrintDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_dragEnterEvent".}
proc fQAbstractPrintDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_dragMoveEvent".}
proc fcQAbstractPrintDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_dragMoveEvent".}
proc fQAbstractPrintDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_dragLeaveEvent".}
proc fcQAbstractPrintDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_dragLeaveEvent".}
proc fQAbstractPrintDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_dropEvent".}
proc fcQAbstractPrintDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_dropEvent".}
proc fQAbstractPrintDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_hideEvent".}
proc fcQAbstractPrintDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_hideEvent".}
proc fQAbstractPrintDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QAbstractPrintDialog_virtualbase_nativeEvent".}
proc fcQAbstractPrintDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_nativeEvent".}
proc fQAbstractPrintDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_changeEvent".}
proc fcQAbstractPrintDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_changeEvent".}
proc fQAbstractPrintDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractPrintDialog_virtualbase_metric".}
proc fcQAbstractPrintDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_metric".}
proc fQAbstractPrintDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_initPainter".}
proc fcQAbstractPrintDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_initPainter".}
proc fQAbstractPrintDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractPrintDialog_virtualbase_redirected".}
proc fcQAbstractPrintDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_redirected".}
proc fQAbstractPrintDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractPrintDialog_virtualbase_sharedPainter".}
proc fcQAbstractPrintDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_sharedPainter".}
proc fQAbstractPrintDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_inputMethodEvent".}
proc fcQAbstractPrintDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_inputMethodEvent".}
proc fQAbstractPrintDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractPrintDialog_virtualbase_inputMethodQuery".}
proc fcQAbstractPrintDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_inputMethodQuery".}
proc fQAbstractPrintDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractPrintDialog_virtualbase_focusNextPrevChild".}
proc fcQAbstractPrintDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_focusNextPrevChild".}
proc fQAbstractPrintDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_timerEvent".}
proc fcQAbstractPrintDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_timerEvent".}
proc fQAbstractPrintDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_childEvent".}
proc fcQAbstractPrintDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_childEvent".}
proc fQAbstractPrintDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_customEvent".}
proc fcQAbstractPrintDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_customEvent".}
proc fQAbstractPrintDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_connectNotify".}
proc fcQAbstractPrintDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_connectNotify".}
proc fQAbstractPrintDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractPrintDialog_virtualbase_disconnectNotify".}
proc fcQAbstractPrintDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractPrintDialog_override_virtual_disconnectNotify".}
proc fcQAbstractPrintDialog_delete(self: pointer) {.importc: "QAbstractPrintDialog_delete".}


func init*(T: type QAbstractPrintDialog, h: ptr cQAbstractPrintDialog): QAbstractPrintDialog =
  T(h: h)
proc create*(T: type QAbstractPrintDialog, printer: gen_qprinter.QPrinter): QAbstractPrintDialog =

  QAbstractPrintDialog.init(fcQAbstractPrintDialog_new(printer.h))
proc create*(T: type QAbstractPrintDialog, printer: gen_qprinter.QPrinter, parent: gen_qwidget.QWidget): QAbstractPrintDialog =

  QAbstractPrintDialog.init(fcQAbstractPrintDialog_new2(printer.h, parent.h))
proc metaObject*(self: QAbstractPrintDialog, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractPrintDialog_metaObject(self.h))

proc metacast*(self: QAbstractPrintDialog, param1: cstring): pointer =

  fcQAbstractPrintDialog_metacast(self.h, param1)

proc metacall*(self: QAbstractPrintDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractPrintDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractPrintDialog, s: cstring): string =

  let v_ms = fcQAbstractPrintDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOptionTabs*(self: QAbstractPrintDialog, tabs: seq[gen_qwidget.QWidget]): void =

  var tabs_CArray = newSeq[pointer](len(tabs))
  for i in 0..<len(tabs):
    tabs_CArray[i] = tabs[i].h

  fcQAbstractPrintDialog_setOptionTabs(self.h, struct_miqt_array(len: csize_t(len(tabs)), data: if len(tabs) == 0: nil else: addr(tabs_CArray[0])))

proc setPrintRange*(self: QAbstractPrintDialog, range: QAbstractPrintDialogPrintRange): void =

  fcQAbstractPrintDialog_setPrintRange(self.h, cint(range))

proc printRange*(self: QAbstractPrintDialog, ): QAbstractPrintDialogPrintRange =

  QAbstractPrintDialogPrintRange(fcQAbstractPrintDialog_printRange(self.h))

proc setMinMax*(self: QAbstractPrintDialog, min: cint, max: cint): void =

  fcQAbstractPrintDialog_setMinMax(self.h, min, max)

proc minPage*(self: QAbstractPrintDialog, ): cint =

  fcQAbstractPrintDialog_minPage(self.h)

proc maxPage*(self: QAbstractPrintDialog, ): cint =

  fcQAbstractPrintDialog_maxPage(self.h)

proc setFromTo*(self: QAbstractPrintDialog, fromPage: cint, toPage: cint): void =

  fcQAbstractPrintDialog_setFromTo(self.h, fromPage, toPage)

proc fromPage*(self: QAbstractPrintDialog, ): cint =

  fcQAbstractPrintDialog_fromPage(self.h)

proc toPage*(self: QAbstractPrintDialog, ): cint =

  fcQAbstractPrintDialog_toPage(self.h)

proc printer*(self: QAbstractPrintDialog, ): gen_qprinter.QPrinter =

  gen_qprinter.QPrinter(h: fcQAbstractPrintDialog_printer(self.h))

proc tr2*(_: type QAbstractPrintDialog, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractPrintDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractPrintDialog, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractPrintDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAbstractPrintDialog, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractPrintDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractPrintDialogmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_metacall(self: ptr cQAbstractPrintDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_metacall ".} =
  type Cb = proc(super: QAbstractPrintDialogmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractPrintDialog(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setVisible(self: QAbstractPrintDialog, visible: bool): void =


  fQAbstractPrintDialog_virtualbase_setVisible(self.h, visible)

type QAbstractPrintDialogsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_setVisible(self: ptr cQAbstractPrintDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_setVisible ".} =
  type Cb = proc(super: QAbstractPrintDialogsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QAbstractPrintDialog(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QAbstractPrintDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractPrintDialog_virtualbase_sizeHint(self.h))

type QAbstractPrintDialogsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_sizeHint(self: ptr cQAbstractPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_sizeHint ".} =
  type Cb = proc(super: QAbstractPrintDialogsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QAbstractPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QAbstractPrintDialog, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractPrintDialog_virtualbase_minimumSizeHint(self.h))

type QAbstractPrintDialogminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_minimumSizeHint(self: ptr cQAbstractPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_minimumSizeHint ".} =
  type Cb = proc(super: QAbstractPrintDialogminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QAbstractPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QAbstractPrintDialog, ): void =


  fQAbstractPrintDialog_virtualbase_open(self.h)

type QAbstractPrintDialogopenBase* = proc(): void
proc onopen*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_open(self: ptr cQAbstractPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_open ".} =
  type Cb = proc(super: QAbstractPrintDialogopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QAbstractPrintDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QAbstractPrintDialog, ): cint =


  fQAbstractPrintDialog_virtualbase_exec(self.h)

type QAbstractPrintDialogexecBase* = proc(): cint
proc onexec*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_exec(self: ptr cQAbstractPrintDialog, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_exec ".} =
  type Cb = proc(super: QAbstractPrintDialogexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QAbstractPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_done(self: QAbstractPrintDialog, param1: cint): void =


  fQAbstractPrintDialog_virtualbase_done(self.h, param1)

type QAbstractPrintDialogdoneBase* = proc(param1: cint): void
proc ondone*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogdoneBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogdoneBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_done(self: ptr cQAbstractPrintDialog, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_done ".} =
  type Cb = proc(super: QAbstractPrintDialogdoneBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_done(QAbstractPrintDialog(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc callVirtualBase_accept(self: QAbstractPrintDialog, ): void =


  fQAbstractPrintDialog_virtualbase_accept(self.h)

type QAbstractPrintDialogacceptBase* = proc(): void
proc onaccept*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_accept(self: ptr cQAbstractPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_accept ".} =
  type Cb = proc(super: QAbstractPrintDialogacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QAbstractPrintDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QAbstractPrintDialog, ): void =


  fQAbstractPrintDialog_virtualbase_reject(self.h)

type QAbstractPrintDialogrejectBase* = proc(): void
proc onreject*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_reject(self: ptr cQAbstractPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_reject ".} =
  type Cb = proc(super: QAbstractPrintDialogrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QAbstractPrintDialog(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QAbstractPrintDialog, param1: gen_qevent.QKeyEvent): void =


  fQAbstractPrintDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QAbstractPrintDialogkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_keyPressEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_keyPressEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QAbstractPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QAbstractPrintDialog, param1: gen_qevent.QCloseEvent): void =


  fQAbstractPrintDialog_virtualbase_closeEvent(self.h, param1.h)

type QAbstractPrintDialogcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_closeEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_closeEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QAbstractPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QAbstractPrintDialog, param1: gen_qevent.QShowEvent): void =


  fQAbstractPrintDialog_virtualbase_showEvent(self.h, param1.h)

type QAbstractPrintDialogshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_showEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_showEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QAbstractPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QAbstractPrintDialog, param1: gen_qevent.QResizeEvent): void =


  fQAbstractPrintDialog_virtualbase_resizeEvent(self.h, param1.h)

type QAbstractPrintDialogresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_resizeEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_resizeEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QAbstractPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QAbstractPrintDialog, param1: gen_qevent.QContextMenuEvent): void =


  fQAbstractPrintDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QAbstractPrintDialogcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_contextMenuEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_contextMenuEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QAbstractPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QAbstractPrintDialog, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQAbstractPrintDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QAbstractPrintDialogeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_eventFilter(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_eventFilter ".} =
  type Cb = proc(super: QAbstractPrintDialogeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractPrintDialog(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QAbstractPrintDialog, ): cint =


  fQAbstractPrintDialog_virtualbase_devType(self.h)

type QAbstractPrintDialogdevTypeBase* = proc(): cint
proc ondevType*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_devType(self: ptr cQAbstractPrintDialog, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_devType ".} =
  type Cb = proc(super: QAbstractPrintDialogdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QAbstractPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QAbstractPrintDialog, param1: cint): cint =


  fQAbstractPrintDialog_virtualbase_heightForWidth(self.h, param1)

type QAbstractPrintDialogheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_heightForWidth(self: ptr cQAbstractPrintDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_heightForWidth ".} =
  type Cb = proc(super: QAbstractPrintDialogheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QAbstractPrintDialog(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QAbstractPrintDialog, ): bool =


  fQAbstractPrintDialog_virtualbase_hasHeightForWidth(self.h)

type QAbstractPrintDialoghasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialoghasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialoghasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_hasHeightForWidth(self: ptr cQAbstractPrintDialog, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_hasHeightForWidth ".} =
  type Cb = proc(super: QAbstractPrintDialoghasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QAbstractPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QAbstractPrintDialog, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQAbstractPrintDialog_virtualbase_paintEngine(self.h))

type QAbstractPrintDialogpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_paintEngine(self: ptr cQAbstractPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_paintEngine ".} =
  type Cb = proc(super: QAbstractPrintDialogpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QAbstractPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QAbstractPrintDialog, event: gen_qcoreevent.QEvent): bool =


  fQAbstractPrintDialog_virtualbase_event(self.h, event.h)

type QAbstractPrintDialogeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_event(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_event ".} =
  type Cb = proc(super: QAbstractPrintDialogeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QAbstractPrintDialog, event: gen_qevent.QMouseEvent): void =


  fQAbstractPrintDialog_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractPrintDialogmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_mousePressEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_mousePressEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QAbstractPrintDialog, event: gen_qevent.QMouseEvent): void =


  fQAbstractPrintDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractPrintDialogmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_mouseReleaseEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_mouseReleaseEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QAbstractPrintDialog, event: gen_qevent.QMouseEvent): void =


  fQAbstractPrintDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractPrintDialogmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_mouseDoubleClickEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QAbstractPrintDialog, event: gen_qevent.QMouseEvent): void =


  fQAbstractPrintDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractPrintDialogmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_mouseMoveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_mouseMoveEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QAbstractPrintDialog, event: gen_qevent.QWheelEvent): void =


  fQAbstractPrintDialog_virtualbase_wheelEvent(self.h, event.h)

type QAbstractPrintDialogwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_wheelEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_wheelEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QAbstractPrintDialog, event: gen_qevent.QKeyEvent): void =


  fQAbstractPrintDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractPrintDialogkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_keyReleaseEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_keyReleaseEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QAbstractPrintDialog, event: gen_qevent.QFocusEvent): void =


  fQAbstractPrintDialog_virtualbase_focusInEvent(self.h, event.h)

type QAbstractPrintDialogfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_focusInEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_focusInEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QAbstractPrintDialog, event: gen_qevent.QFocusEvent): void =


  fQAbstractPrintDialog_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractPrintDialogfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_focusOutEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_focusOutEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QAbstractPrintDialog, event: gen_qevent.QEnterEvent): void =


  fQAbstractPrintDialog_virtualbase_enterEvent(self.h, event.h)

type QAbstractPrintDialogenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_enterEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_enterEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QAbstractPrintDialog, event: gen_qcoreevent.QEvent): void =


  fQAbstractPrintDialog_virtualbase_leaveEvent(self.h, event.h)

type QAbstractPrintDialogleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_leaveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_leaveEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QAbstractPrintDialog, event: gen_qevent.QPaintEvent): void =


  fQAbstractPrintDialog_virtualbase_paintEvent(self.h, event.h)

type QAbstractPrintDialogpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_paintEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_paintEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QAbstractPrintDialog, event: gen_qevent.QMoveEvent): void =


  fQAbstractPrintDialog_virtualbase_moveEvent(self.h, event.h)

type QAbstractPrintDialogmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_moveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_moveEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QAbstractPrintDialog, event: gen_qevent.QTabletEvent): void =


  fQAbstractPrintDialog_virtualbase_tabletEvent(self.h, event.h)

type QAbstractPrintDialogtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_tabletEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_tabletEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QAbstractPrintDialog, event: gen_qevent.QActionEvent): void =


  fQAbstractPrintDialog_virtualbase_actionEvent(self.h, event.h)

type QAbstractPrintDialogactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_actionEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_actionEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QAbstractPrintDialog, event: gen_qevent.QDragEnterEvent): void =


  fQAbstractPrintDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractPrintDialogdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_dragEnterEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_dragEnterEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QAbstractPrintDialog, event: gen_qevent.QDragMoveEvent): void =


  fQAbstractPrintDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractPrintDialogdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_dragMoveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_dragMoveEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QAbstractPrintDialog, event: gen_qevent.QDragLeaveEvent): void =


  fQAbstractPrintDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractPrintDialogdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_dragLeaveEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_dragLeaveEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QAbstractPrintDialog, event: gen_qevent.QDropEvent): void =


  fQAbstractPrintDialog_virtualbase_dropEvent(self.h, event.h)

type QAbstractPrintDialogdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_dropEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_dropEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QAbstractPrintDialog, event: gen_qevent.QHideEvent): void =


  fQAbstractPrintDialog_virtualbase_hideEvent(self.h, event.h)

type QAbstractPrintDialoghideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialoghideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_hideEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_hideEvent ".} =
  type Cb = proc(super: QAbstractPrintDialoghideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QAbstractPrintDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQAbstractPrintDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractPrintDialognativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_nativeEvent(self: ptr cQAbstractPrintDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_nativeEvent ".} =
  type Cb = proc(super: QAbstractPrintDialognativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QAbstractPrintDialog(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QAbstractPrintDialog, param1: gen_qcoreevent.QEvent): void =


  fQAbstractPrintDialog_virtualbase_changeEvent(self.h, param1.h)

type QAbstractPrintDialogchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_changeEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_changeEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QAbstractPrintDialog(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QAbstractPrintDialog, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQAbstractPrintDialog_virtualbase_metric(self.h, cint(param1))

type QAbstractPrintDialogmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_metric(self: ptr cQAbstractPrintDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractPrintDialog_metric ".} =
  type Cb = proc(super: QAbstractPrintDialogmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QAbstractPrintDialog(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QAbstractPrintDialog, painter: gen_qpainter.QPainter): void =


  fQAbstractPrintDialog_virtualbase_initPainter(self.h, painter.h)

type QAbstractPrintDialoginitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialoginitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_initPainter(self: ptr cQAbstractPrintDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_initPainter ".} =
  type Cb = proc(super: QAbstractPrintDialoginitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QAbstractPrintDialog(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QAbstractPrintDialog, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQAbstractPrintDialog_virtualbase_redirected(self.h, offset.h))

type QAbstractPrintDialogredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_redirected(self: ptr cQAbstractPrintDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_redirected ".} =
  type Cb = proc(super: QAbstractPrintDialogredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QAbstractPrintDialog(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QAbstractPrintDialog, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQAbstractPrintDialog_virtualbase_sharedPainter(self.h))

type QAbstractPrintDialogsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_sharedPainter(self: ptr cQAbstractPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_sharedPainter ".} =
  type Cb = proc(super: QAbstractPrintDialogsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QAbstractPrintDialog(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QAbstractPrintDialog, param1: gen_qevent.QInputMethodEvent): void =


  fQAbstractPrintDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractPrintDialoginputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_inputMethodEvent(self: ptr cQAbstractPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_inputMethodEvent ".} =
  type Cb = proc(super: QAbstractPrintDialoginputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QAbstractPrintDialog(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QAbstractPrintDialog, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractPrintDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractPrintDialoginputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_inputMethodQuery(self: ptr cQAbstractPrintDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractPrintDialog_inputMethodQuery ".} =
  type Cb = proc(super: QAbstractPrintDialoginputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QAbstractPrintDialog(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QAbstractPrintDialog, next: bool): bool =


  fQAbstractPrintDialog_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractPrintDialogfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_focusNextPrevChild(self: ptr cQAbstractPrintDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractPrintDialog_focusNextPrevChild ".} =
  type Cb = proc(super: QAbstractPrintDialogfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QAbstractPrintDialog(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractPrintDialog, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractPrintDialog_virtualbase_timerEvent(self.h, event.h)

type QAbstractPrintDialogtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_timerEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_timerEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractPrintDialog, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractPrintDialog_virtualbase_childEvent(self.h, event.h)

type QAbstractPrintDialogchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_childEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_childEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractPrintDialog, event: gen_qcoreevent.QEvent): void =


  fQAbstractPrintDialog_virtualbase_customEvent(self.h, event.h)

type QAbstractPrintDialogcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_customEvent(self: ptr cQAbstractPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_customEvent ".} =
  type Cb = proc(super: QAbstractPrintDialogcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractPrintDialog(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractPrintDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractPrintDialog_virtualbase_connectNotify(self.h, signal.h)

type QAbstractPrintDialogconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_connectNotify(self: ptr cQAbstractPrintDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_connectNotify ".} =
  type Cb = proc(super: QAbstractPrintDialogconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractPrintDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractPrintDialog, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractPrintDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractPrintDialogdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractPrintDialog, slot: proc(super: QAbstractPrintDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractPrintDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractPrintDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractPrintDialog_disconnectNotify(self: ptr cQAbstractPrintDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractPrintDialog_disconnectNotify ".} =
  type Cb = proc(super: QAbstractPrintDialogdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractPrintDialog(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAbstractPrintDialog) =
  fcQAbstractPrintDialog_delete(self.h)
