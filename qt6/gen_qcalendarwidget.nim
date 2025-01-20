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
{.compile("gen_qcalendarwidget.cpp", cflags).}


type QCalendarWidgetHorizontalHeaderFormat* = cint
const
  QCalendarWidgetNoHorizontalHeader* = 0
  QCalendarWidgetSingleLetterDayNames* = 1
  QCalendarWidgetShortDayNames* = 2
  QCalendarWidgetLongDayNames* = 3



type QCalendarWidgetVerticalHeaderFormat* = cint
const
  QCalendarWidgetNoVerticalHeader* = 0
  QCalendarWidgetISOWeekNumbers* = 1



type QCalendarWidgetSelectionMode* = cint
const
  QCalendarWidgetNoSelection* = 0
  QCalendarWidgetSingleSelection* = 1



import gen_qcalendarwidget_types
export gen_qcalendarwidget_types

import
  gen_qcalendar,
  gen_qcoreevent,
  gen_qdatetime,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qtextformat,
  gen_qvariant,
  gen_qwidget,
  std/tables
export
  gen_qcalendar,
  gen_qcoreevent,
  gen_qdatetime,
  gen_qevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qtextformat,
  gen_qvariant,
  gen_qwidget

type cQCalendarWidget*{.exportc: "QCalendarWidget", incompleteStruct.} = object

proc fcQCalendarWidget_new(parent: pointer): ptr cQCalendarWidget {.importc: "QCalendarWidget_new".}
proc fcQCalendarWidget_new2(): ptr cQCalendarWidget {.importc: "QCalendarWidget_new2".}
proc fcQCalendarWidget_metaObject(self: pointer, ): pointer {.importc: "QCalendarWidget_metaObject".}
proc fcQCalendarWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QCalendarWidget_metacast".}
proc fcQCalendarWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCalendarWidget_metacall".}
proc fcQCalendarWidget_tr(s: cstring): struct_miqt_string {.importc: "QCalendarWidget_tr".}
proc fcQCalendarWidget_sizeHint(self: pointer, ): pointer {.importc: "QCalendarWidget_sizeHint".}
proc fcQCalendarWidget_minimumSizeHint(self: pointer, ): pointer {.importc: "QCalendarWidget_minimumSizeHint".}
proc fcQCalendarWidget_selectedDate(self: pointer, ): pointer {.importc: "QCalendarWidget_selectedDate".}
proc fcQCalendarWidget_yearShown(self: pointer, ): cint {.importc: "QCalendarWidget_yearShown".}
proc fcQCalendarWidget_monthShown(self: pointer, ): cint {.importc: "QCalendarWidget_monthShown".}
proc fcQCalendarWidget_minimumDate(self: pointer, ): pointer {.importc: "QCalendarWidget_minimumDate".}
proc fcQCalendarWidget_setMinimumDate(self: pointer, date: pointer): void {.importc: "QCalendarWidget_setMinimumDate".}
proc fcQCalendarWidget_maximumDate(self: pointer, ): pointer {.importc: "QCalendarWidget_maximumDate".}
proc fcQCalendarWidget_setMaximumDate(self: pointer, date: pointer): void {.importc: "QCalendarWidget_setMaximumDate".}
proc fcQCalendarWidget_firstDayOfWeek(self: pointer, ): cint {.importc: "QCalendarWidget_firstDayOfWeek".}
proc fcQCalendarWidget_setFirstDayOfWeek(self: pointer, dayOfWeek: cint): void {.importc: "QCalendarWidget_setFirstDayOfWeek".}
proc fcQCalendarWidget_isNavigationBarVisible(self: pointer, ): bool {.importc: "QCalendarWidget_isNavigationBarVisible".}
proc fcQCalendarWidget_isGridVisible(self: pointer, ): bool {.importc: "QCalendarWidget_isGridVisible".}
proc fcQCalendarWidget_calendar(self: pointer, ): pointer {.importc: "QCalendarWidget_calendar".}
proc fcQCalendarWidget_setCalendar(self: pointer, calendar: pointer): void {.importc: "QCalendarWidget_setCalendar".}
proc fcQCalendarWidget_selectionMode(self: pointer, ): cint {.importc: "QCalendarWidget_selectionMode".}
proc fcQCalendarWidget_setSelectionMode(self: pointer, mode: cint): void {.importc: "QCalendarWidget_setSelectionMode".}
proc fcQCalendarWidget_horizontalHeaderFormat(self: pointer, ): cint {.importc: "QCalendarWidget_horizontalHeaderFormat".}
proc fcQCalendarWidget_setHorizontalHeaderFormat(self: pointer, format: cint): void {.importc: "QCalendarWidget_setHorizontalHeaderFormat".}
proc fcQCalendarWidget_verticalHeaderFormat(self: pointer, ): cint {.importc: "QCalendarWidget_verticalHeaderFormat".}
proc fcQCalendarWidget_setVerticalHeaderFormat(self: pointer, format: cint): void {.importc: "QCalendarWidget_setVerticalHeaderFormat".}
proc fcQCalendarWidget_headerTextFormat(self: pointer, ): pointer {.importc: "QCalendarWidget_headerTextFormat".}
proc fcQCalendarWidget_setHeaderTextFormat(self: pointer, format: pointer): void {.importc: "QCalendarWidget_setHeaderTextFormat".}
proc fcQCalendarWidget_weekdayTextFormat(self: pointer, dayOfWeek: cint): pointer {.importc: "QCalendarWidget_weekdayTextFormat".}
proc fcQCalendarWidget_setWeekdayTextFormat(self: pointer, dayOfWeek: cint, format: pointer): void {.importc: "QCalendarWidget_setWeekdayTextFormat".}
proc fcQCalendarWidget_dateTextFormat(self: pointer, ): struct_miqt_map {.importc: "QCalendarWidget_dateTextFormat".}
proc fcQCalendarWidget_dateTextFormatWithDate(self: pointer, date: pointer): pointer {.importc: "QCalendarWidget_dateTextFormatWithDate".}
proc fcQCalendarWidget_setDateTextFormat(self: pointer, date: pointer, format: pointer): void {.importc: "QCalendarWidget_setDateTextFormat".}
proc fcQCalendarWidget_isDateEditEnabled(self: pointer, ): bool {.importc: "QCalendarWidget_isDateEditEnabled".}
proc fcQCalendarWidget_setDateEditEnabled(self: pointer, enable: bool): void {.importc: "QCalendarWidget_setDateEditEnabled".}
proc fcQCalendarWidget_dateEditAcceptDelay(self: pointer, ): cint {.importc: "QCalendarWidget_dateEditAcceptDelay".}
proc fcQCalendarWidget_setDateEditAcceptDelay(self: pointer, delay: cint): void {.importc: "QCalendarWidget_setDateEditAcceptDelay".}
proc fcQCalendarWidget_setSelectedDate(self: pointer, date: pointer): void {.importc: "QCalendarWidget_setSelectedDate".}
proc fcQCalendarWidget_setDateRange(self: pointer, min: pointer, max: pointer): void {.importc: "QCalendarWidget_setDateRange".}
proc fcQCalendarWidget_setCurrentPage(self: pointer, year: cint, month: cint): void {.importc: "QCalendarWidget_setCurrentPage".}
proc fcQCalendarWidget_setGridVisible(self: pointer, show: bool): void {.importc: "QCalendarWidget_setGridVisible".}
proc fcQCalendarWidget_setNavigationBarVisible(self: pointer, visible: bool): void {.importc: "QCalendarWidget_setNavigationBarVisible".}
proc fcQCalendarWidget_showNextMonth(self: pointer, ): void {.importc: "QCalendarWidget_showNextMonth".}
proc fcQCalendarWidget_showPreviousMonth(self: pointer, ): void {.importc: "QCalendarWidget_showPreviousMonth".}
proc fcQCalendarWidget_showNextYear(self: pointer, ): void {.importc: "QCalendarWidget_showNextYear".}
proc fcQCalendarWidget_showPreviousYear(self: pointer, ): void {.importc: "QCalendarWidget_showPreviousYear".}
proc fcQCalendarWidget_showSelectedDate(self: pointer, ): void {.importc: "QCalendarWidget_showSelectedDate".}
proc fcQCalendarWidget_showToday(self: pointer, ): void {.importc: "QCalendarWidget_showToday".}
proc fcQCalendarWidget_selectionChanged(self: pointer, ): void {.importc: "QCalendarWidget_selectionChanged".}
proc fQCalendarWidget_connect_selectionChanged(self: pointer, slot: int) {.importc: "QCalendarWidget_connect_selectionChanged".}
proc fcQCalendarWidget_clicked(self: pointer, date: pointer): void {.importc: "QCalendarWidget_clicked".}
proc fQCalendarWidget_connect_clicked(self: pointer, slot: int) {.importc: "QCalendarWidget_connect_clicked".}
proc fcQCalendarWidget_activated(self: pointer, date: pointer): void {.importc: "QCalendarWidget_activated".}
proc fQCalendarWidget_connect_activated(self: pointer, slot: int) {.importc: "QCalendarWidget_connect_activated".}
proc fcQCalendarWidget_currentPageChanged(self: pointer, year: cint, month: cint): void {.importc: "QCalendarWidget_currentPageChanged".}
proc fQCalendarWidget_connect_currentPageChanged(self: pointer, slot: int) {.importc: "QCalendarWidget_connect_currentPageChanged".}
proc fcQCalendarWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCalendarWidget_tr2".}
proc fcQCalendarWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCalendarWidget_tr3".}
proc fQCalendarWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_metaObject".}
proc fcQCalendarWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_metaObject".}
proc fQCalendarWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QCalendarWidget_virtualbase_metacast".}
proc fcQCalendarWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_metacast".}
proc fQCalendarWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCalendarWidget_virtualbase_metacall".}
proc fcQCalendarWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_metacall".}
proc fQCalendarWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_sizeHint".}
proc fcQCalendarWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_sizeHint".}
proc fQCalendarWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_minimumSizeHint".}
proc fcQCalendarWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_minimumSizeHint".}
proc fQCalendarWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QCalendarWidget_virtualbase_event".}
proc fcQCalendarWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_event".}
proc fQCalendarWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCalendarWidget_virtualbase_eventFilter".}
proc fcQCalendarWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_eventFilter".}
proc fQCalendarWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_mousePressEvent".}
proc fcQCalendarWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_mousePressEvent".}
proc fQCalendarWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_resizeEvent".}
proc fcQCalendarWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_resizeEvent".}
proc fQCalendarWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_keyPressEvent".}
proc fcQCalendarWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_keyPressEvent".}
proc fQCalendarWidget_virtualbase_paintCell(self: pointer, painter: pointer, rect: pointer, date: pointer): void{.importc: "QCalendarWidget_virtualbase_paintCell".}
proc fcQCalendarWidget_override_virtual_paintCell(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_paintCell".}
proc fQCalendarWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QCalendarWidget_virtualbase_devType".}
proc fcQCalendarWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_devType".}
proc fQCalendarWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QCalendarWidget_virtualbase_setVisible".}
proc fcQCalendarWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_setVisible".}
proc fQCalendarWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QCalendarWidget_virtualbase_heightForWidth".}
proc fcQCalendarWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_heightForWidth".}
proc fQCalendarWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QCalendarWidget_virtualbase_hasHeightForWidth".}
proc fcQCalendarWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_hasHeightForWidth".}
proc fQCalendarWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_paintEngine".}
proc fcQCalendarWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_paintEngine".}
proc fQCalendarWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_mouseReleaseEvent".}
proc fcQCalendarWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_mouseReleaseEvent".}
proc fQCalendarWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQCalendarWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_mouseDoubleClickEvent".}
proc fQCalendarWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_mouseMoveEvent".}
proc fcQCalendarWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_mouseMoveEvent".}
proc fQCalendarWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_wheelEvent".}
proc fcQCalendarWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_wheelEvent".}
proc fQCalendarWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_keyReleaseEvent".}
proc fcQCalendarWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_keyReleaseEvent".}
proc fQCalendarWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_focusInEvent".}
proc fcQCalendarWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_focusInEvent".}
proc fQCalendarWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_focusOutEvent".}
proc fcQCalendarWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_focusOutEvent".}
proc fQCalendarWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_enterEvent".}
proc fcQCalendarWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_enterEvent".}
proc fQCalendarWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_leaveEvent".}
proc fcQCalendarWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_leaveEvent".}
proc fQCalendarWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_paintEvent".}
proc fcQCalendarWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_paintEvent".}
proc fQCalendarWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_moveEvent".}
proc fcQCalendarWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_moveEvent".}
proc fQCalendarWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_closeEvent".}
proc fcQCalendarWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_closeEvent".}
proc fQCalendarWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_contextMenuEvent".}
proc fcQCalendarWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_contextMenuEvent".}
proc fQCalendarWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_tabletEvent".}
proc fcQCalendarWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_tabletEvent".}
proc fQCalendarWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_actionEvent".}
proc fcQCalendarWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_actionEvent".}
proc fQCalendarWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_dragEnterEvent".}
proc fcQCalendarWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_dragEnterEvent".}
proc fQCalendarWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_dragMoveEvent".}
proc fcQCalendarWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_dragMoveEvent".}
proc fQCalendarWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_dragLeaveEvent".}
proc fcQCalendarWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_dragLeaveEvent".}
proc fQCalendarWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_dropEvent".}
proc fcQCalendarWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_dropEvent".}
proc fQCalendarWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_showEvent".}
proc fcQCalendarWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_showEvent".}
proc fQCalendarWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_hideEvent".}
proc fcQCalendarWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_hideEvent".}
proc fQCalendarWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QCalendarWidget_virtualbase_nativeEvent".}
proc fcQCalendarWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_nativeEvent".}
proc fQCalendarWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QCalendarWidget_virtualbase_changeEvent".}
proc fcQCalendarWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_changeEvent".}
proc fQCalendarWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QCalendarWidget_virtualbase_metric".}
proc fcQCalendarWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_metric".}
proc fQCalendarWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QCalendarWidget_virtualbase_initPainter".}
proc fcQCalendarWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_initPainter".}
proc fQCalendarWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QCalendarWidget_virtualbase_redirected".}
proc fcQCalendarWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_redirected".}
proc fQCalendarWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QCalendarWidget_virtualbase_sharedPainter".}
proc fcQCalendarWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_sharedPainter".}
proc fQCalendarWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QCalendarWidget_virtualbase_inputMethodEvent".}
proc fcQCalendarWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_inputMethodEvent".}
proc fQCalendarWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QCalendarWidget_virtualbase_inputMethodQuery".}
proc fcQCalendarWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_inputMethodQuery".}
proc fQCalendarWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QCalendarWidget_virtualbase_focusNextPrevChild".}
proc fcQCalendarWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_focusNextPrevChild".}
proc fQCalendarWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_timerEvent".}
proc fcQCalendarWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_timerEvent".}
proc fQCalendarWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_childEvent".}
proc fcQCalendarWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_childEvent".}
proc fQCalendarWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCalendarWidget_virtualbase_customEvent".}
proc fcQCalendarWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_customEvent".}
proc fQCalendarWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCalendarWidget_virtualbase_connectNotify".}
proc fcQCalendarWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_connectNotify".}
proc fQCalendarWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCalendarWidget_virtualbase_disconnectNotify".}
proc fcQCalendarWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCalendarWidget_override_virtual_disconnectNotify".}
proc fcQCalendarWidget_staticMetaObject(): pointer {.importc: "QCalendarWidget_staticMetaObject".}
proc fcQCalendarWidget_delete(self: pointer) {.importc: "QCalendarWidget_delete".}


func init*(T: type QCalendarWidget, h: ptr cQCalendarWidget): QCalendarWidget =
  T(h: h)
proc create*(T: type QCalendarWidget, parent: gen_qwidget.QWidget): QCalendarWidget =

  QCalendarWidget.init(fcQCalendarWidget_new(parent.h))
proc create*(T: type QCalendarWidget, ): QCalendarWidget =

  QCalendarWidget.init(fcQCalendarWidget_new2())
proc metaObject*(self: QCalendarWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCalendarWidget_metaObject(self.h))

proc metacast*(self: QCalendarWidget, param1: cstring): pointer =

  fcQCalendarWidget_metacast(self.h, param1)

proc metacall*(self: QCalendarWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCalendarWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCalendarWidget, s: cstring): string =

  let v_ms = fcQCalendarWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: QCalendarWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCalendarWidget_sizeHint(self.h))

proc minimumSizeHint*(self: QCalendarWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCalendarWidget_minimumSizeHint(self.h))

proc selectedDate*(self: QCalendarWidget, ): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQCalendarWidget_selectedDate(self.h))

proc yearShown*(self: QCalendarWidget, ): cint =

  fcQCalendarWidget_yearShown(self.h)

proc monthShown*(self: QCalendarWidget, ): cint =

  fcQCalendarWidget_monthShown(self.h)

proc minimumDate*(self: QCalendarWidget, ): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQCalendarWidget_minimumDate(self.h))

proc setMinimumDate*(self: QCalendarWidget, date: gen_qdatetime.QDate): void =

  fcQCalendarWidget_setMinimumDate(self.h, date.h)

proc maximumDate*(self: QCalendarWidget, ): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQCalendarWidget_maximumDate(self.h))

proc setMaximumDate*(self: QCalendarWidget, date: gen_qdatetime.QDate): void =

  fcQCalendarWidget_setMaximumDate(self.h, date.h)

proc firstDayOfWeek*(self: QCalendarWidget, ): gen_qnamespace.DayOfWeek =

  gen_qnamespace.DayOfWeek(fcQCalendarWidget_firstDayOfWeek(self.h))

proc setFirstDayOfWeek*(self: QCalendarWidget, dayOfWeek: gen_qnamespace.DayOfWeek): void =

  fcQCalendarWidget_setFirstDayOfWeek(self.h, cint(dayOfWeek))

proc isNavigationBarVisible*(self: QCalendarWidget, ): bool =

  fcQCalendarWidget_isNavigationBarVisible(self.h)

proc isGridVisible*(self: QCalendarWidget, ): bool =

  fcQCalendarWidget_isGridVisible(self.h)

proc calendar*(self: QCalendarWidget, ): gen_qcalendar.QCalendar =

  gen_qcalendar.QCalendar(h: fcQCalendarWidget_calendar(self.h))

proc setCalendar*(self: QCalendarWidget, calendar: gen_qcalendar.QCalendar): void =

  fcQCalendarWidget_setCalendar(self.h, calendar.h)

proc selectionMode*(self: QCalendarWidget, ): QCalendarWidgetSelectionMode =

  QCalendarWidgetSelectionMode(fcQCalendarWidget_selectionMode(self.h))

proc setSelectionMode*(self: QCalendarWidget, mode: QCalendarWidgetSelectionMode): void =

  fcQCalendarWidget_setSelectionMode(self.h, cint(mode))

proc horizontalHeaderFormat*(self: QCalendarWidget, ): QCalendarWidgetHorizontalHeaderFormat =

  QCalendarWidgetHorizontalHeaderFormat(fcQCalendarWidget_horizontalHeaderFormat(self.h))

proc setHorizontalHeaderFormat*(self: QCalendarWidget, format: QCalendarWidgetHorizontalHeaderFormat): void =

  fcQCalendarWidget_setHorizontalHeaderFormat(self.h, cint(format))

proc verticalHeaderFormat*(self: QCalendarWidget, ): QCalendarWidgetVerticalHeaderFormat =

  QCalendarWidgetVerticalHeaderFormat(fcQCalendarWidget_verticalHeaderFormat(self.h))

proc setVerticalHeaderFormat*(self: QCalendarWidget, format: QCalendarWidgetVerticalHeaderFormat): void =

  fcQCalendarWidget_setVerticalHeaderFormat(self.h, cint(format))

proc headerTextFormat*(self: QCalendarWidget, ): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQCalendarWidget_headerTextFormat(self.h))

proc setHeaderTextFormat*(self: QCalendarWidget, format: gen_qtextformat.QTextCharFormat): void =

  fcQCalendarWidget_setHeaderTextFormat(self.h, format.h)

proc weekdayTextFormat*(self: QCalendarWidget, dayOfWeek: gen_qnamespace.DayOfWeek): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQCalendarWidget_weekdayTextFormat(self.h, cint(dayOfWeek)))

proc setWeekdayTextFormat*(self: QCalendarWidget, dayOfWeek: gen_qnamespace.DayOfWeek, format: gen_qtextformat.QTextCharFormat): void =

  fcQCalendarWidget_setWeekdayTextFormat(self.h, cint(dayOfWeek), format.h)

proc dateTextFormat*(self: QCalendarWidget, ): Table[gen_qdatetime.QDate,gen_qtextformat.QTextCharFormat] =

  var v_mm = fcQCalendarWidget_dateTextFormat(self.h)
  var vx_ret: Table[gen_qdatetime.QDate, gen_qtextformat.QTextCharFormat]
  var v_Keys = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = gen_qdatetime.QDate(h: v_Keys[i])

    var v_entry_Value = gen_qtextformat.QTextCharFormat(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc dateTextFormatWithDate*(self: QCalendarWidget, date: gen_qdatetime.QDate): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQCalendarWidget_dateTextFormatWithDate(self.h, date.h))

proc setDateTextFormat*(self: QCalendarWidget, date: gen_qdatetime.QDate, format: gen_qtextformat.QTextCharFormat): void =

  fcQCalendarWidget_setDateTextFormat(self.h, date.h, format.h)

proc isDateEditEnabled*(self: QCalendarWidget, ): bool =

  fcQCalendarWidget_isDateEditEnabled(self.h)

proc setDateEditEnabled*(self: QCalendarWidget, enable: bool): void =

  fcQCalendarWidget_setDateEditEnabled(self.h, enable)

proc dateEditAcceptDelay*(self: QCalendarWidget, ): cint =

  fcQCalendarWidget_dateEditAcceptDelay(self.h)

proc setDateEditAcceptDelay*(self: QCalendarWidget, delay: cint): void =

  fcQCalendarWidget_setDateEditAcceptDelay(self.h, delay)

proc setSelectedDate*(self: QCalendarWidget, date: gen_qdatetime.QDate): void =

  fcQCalendarWidget_setSelectedDate(self.h, date.h)

proc setDateRange*(self: QCalendarWidget, min: gen_qdatetime.QDate, max: gen_qdatetime.QDate): void =

  fcQCalendarWidget_setDateRange(self.h, min.h, max.h)

proc setCurrentPage*(self: QCalendarWidget, year: cint, month: cint): void =

  fcQCalendarWidget_setCurrentPage(self.h, year, month)

proc setGridVisible*(self: QCalendarWidget, show: bool): void =

  fcQCalendarWidget_setGridVisible(self.h, show)

proc setNavigationBarVisible*(self: QCalendarWidget, visible: bool): void =

  fcQCalendarWidget_setNavigationBarVisible(self.h, visible)

proc showNextMonth*(self: QCalendarWidget, ): void =

  fcQCalendarWidget_showNextMonth(self.h)

proc showPreviousMonth*(self: QCalendarWidget, ): void =

  fcQCalendarWidget_showPreviousMonth(self.h)

proc showNextYear*(self: QCalendarWidget, ): void =

  fcQCalendarWidget_showNextYear(self.h)

proc showPreviousYear*(self: QCalendarWidget, ): void =

  fcQCalendarWidget_showPreviousYear(self.h)

proc showSelectedDate*(self: QCalendarWidget, ): void =

  fcQCalendarWidget_showSelectedDate(self.h)

proc showToday*(self: QCalendarWidget, ): void =

  fcQCalendarWidget_showToday(self.h)

proc selectionChanged*(self: QCalendarWidget, ): void =

  fcQCalendarWidget_selectionChanged(self.h)

proc miqt_exec_callback_QCalendarWidget_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QCalendarWidget, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCalendarWidget_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc clicked*(self: QCalendarWidget, date: gen_qdatetime.QDate): void =

  fcQCalendarWidget_clicked(self.h, date.h)

proc miqt_exec_callback_QCalendarWidget_clicked(slot: int, date: pointer) {.exportc.} =
  type Cb = proc(date: gen_qdatetime.QDate)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qdatetime.QDate(h: date)


  nimfunc[](slotval1)

proc onclicked*(self: QCalendarWidget, slot: proc(date: gen_qdatetime.QDate)) =
  type Cb = proc(date: gen_qdatetime.QDate)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCalendarWidget_connect_clicked(self.h, cast[int](addr tmp[]))
proc activated*(self: QCalendarWidget, date: gen_qdatetime.QDate): void =

  fcQCalendarWidget_activated(self.h, date.h)

proc miqt_exec_callback_QCalendarWidget_activated(slot: int, date: pointer) {.exportc.} =
  type Cb = proc(date: gen_qdatetime.QDate)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qdatetime.QDate(h: date)


  nimfunc[](slotval1)

proc onactivated*(self: QCalendarWidget, slot: proc(date: gen_qdatetime.QDate)) =
  type Cb = proc(date: gen_qdatetime.QDate)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCalendarWidget_connect_activated(self.h, cast[int](addr tmp[]))
proc currentPageChanged*(self: QCalendarWidget, year: cint, month: cint): void =

  fcQCalendarWidget_currentPageChanged(self.h, year, month)

proc miqt_exec_callback_QCalendarWidget_currentPageChanged(slot: int, year: cint, month: cint) {.exportc.} =
  type Cb = proc(year: cint, month: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = year

  let slotval2 = month


  nimfunc[](slotval1, slotval2)

proc oncurrentPageChanged*(self: QCalendarWidget, slot: proc(year: cint, month: cint)) =
  type Cb = proc(year: cint, month: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCalendarWidget_connect_currentPageChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCalendarWidget, s: cstring, c: cstring): string =

  let v_ms = fcQCalendarWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCalendarWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCalendarWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QCalendarWidget, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQCalendarWidget_virtualbase_metaObject(self.h))

type QCalendarWidgetmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_metaObject(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_metaObject ".} =
  type Cb = proc(super: QCalendarWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QCalendarWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QCalendarWidget, param1: cstring): pointer =


  fQCalendarWidget_virtualbase_metacast(self.h, param1)

type QCalendarWidgetmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_metacast(self: ptr cQCalendarWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_metacast ".} =
  type Cb = proc(super: QCalendarWidgetmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QCalendarWidget(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QCalendarWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQCalendarWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCalendarWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_metacall(self: ptr cQCalendarWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCalendarWidget_metacall ".} =
  type Cb = proc(super: QCalendarWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QCalendarWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QCalendarWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQCalendarWidget_virtualbase_sizeHint(self.h))

type QCalendarWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_sizeHint(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_sizeHint ".} =
  type Cb = proc(super: QCalendarWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QCalendarWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QCalendarWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQCalendarWidget_virtualbase_minimumSizeHint(self.h))

type QCalendarWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_minimumSizeHint(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_minimumSizeHint ".} =
  type Cb = proc(super: QCalendarWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QCalendarWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QCalendarWidget, event: gen_qcoreevent.QEvent): bool =


  fQCalendarWidget_virtualbase_event(self.h, event.h)

type QCalendarWidgeteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgeteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_event(self: ptr cQCalendarWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCalendarWidget_event ".} =
  type Cb = proc(super: QCalendarWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QCalendarWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QCalendarWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQCalendarWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCalendarWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QCalendarWidget, slot: proc(super: QCalendarWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_eventFilter(self: ptr cQCalendarWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCalendarWidget_eventFilter ".} =
  type Cb = proc(super: QCalendarWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QCalendarWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QCalendarWidget, event: gen_qevent.QMouseEvent): void =


  fQCalendarWidget_virtualbase_mousePressEvent(self.h, event.h)

type QCalendarWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_mousePressEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_mousePressEvent ".} =
  type Cb = proc(super: QCalendarWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QCalendarWidget, event: gen_qevent.QResizeEvent): void =


  fQCalendarWidget_virtualbase_resizeEvent(self.h, event.h)

type QCalendarWidgetresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_resizeEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_resizeEvent ".} =
  type Cb = proc(super: QCalendarWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QCalendarWidget, event: gen_qevent.QKeyEvent): void =


  fQCalendarWidget_virtualbase_keyPressEvent(self.h, event.h)

type QCalendarWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_keyPressEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_keyPressEvent ".} =
  type Cb = proc(super: QCalendarWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintCell(self: QCalendarWidget, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, date: gen_qdatetime.QDate): void =


  fQCalendarWidget_virtualbase_paintCell(self.h, painter.h, rect.h, date.h)

type QCalendarWidgetpaintCellBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, date: gen_qdatetime.QDate): void
proc onpaintCell*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetpaintCellBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, date: gen_qdatetime.QDate): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetpaintCellBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, date: gen_qdatetime.QDate): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_paintCell(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_paintCell(self: ptr cQCalendarWidget, slot: int, painter: pointer, rect: pointer, date: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_paintCell ".} =
  type Cb = proc(super: QCalendarWidgetpaintCellBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, date: gen_qdatetime.QDate): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, date: gen_qdatetime.QDate): auto =
    callVirtualBase_paintCell(QCalendarWidget(h: self), painter, rect, date)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = gen_qdatetime.QDate(h: date)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_devType(self: QCalendarWidget, ): cint =


  fQCalendarWidget_virtualbase_devType(self.h)

type QCalendarWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_devType(self: ptr cQCalendarWidget, slot: int): cint {.exportc: "miqt_exec_callback_QCalendarWidget_devType ".} =
  type Cb = proc(super: QCalendarWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QCalendarWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QCalendarWidget, visible: bool): void =


  fQCalendarWidget_virtualbase_setVisible(self.h, visible)

type QCalendarWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_setVisible(self: ptr cQCalendarWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QCalendarWidget_setVisible ".} =
  type Cb = proc(super: QCalendarWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QCalendarWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QCalendarWidget, param1: cint): cint =


  fQCalendarWidget_virtualbase_heightForWidth(self.h, param1)

type QCalendarWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_heightForWidth(self: ptr cQCalendarWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCalendarWidget_heightForWidth ".} =
  type Cb = proc(super: QCalendarWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QCalendarWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QCalendarWidget, ): bool =


  fQCalendarWidget_virtualbase_hasHeightForWidth(self.h)

type QCalendarWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QCalendarWidget, slot: proc(super: QCalendarWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_hasHeightForWidth(self: ptr cQCalendarWidget, slot: int): bool {.exportc: "miqt_exec_callback_QCalendarWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QCalendarWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QCalendarWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QCalendarWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQCalendarWidget_virtualbase_paintEngine(self.h))

type QCalendarWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_paintEngine(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_paintEngine ".} =
  type Cb = proc(super: QCalendarWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QCalendarWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseReleaseEvent(self: QCalendarWidget, event: gen_qevent.QMouseEvent): void =


  fQCalendarWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QCalendarWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_mouseReleaseEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QCalendarWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QCalendarWidget, event: gen_qevent.QMouseEvent): void =


  fQCalendarWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QCalendarWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_mouseDoubleClickEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QCalendarWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QCalendarWidget, event: gen_qevent.QMouseEvent): void =


  fQCalendarWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QCalendarWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_mouseMoveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QCalendarWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QCalendarWidget, event: gen_qevent.QWheelEvent): void =


  fQCalendarWidget_virtualbase_wheelEvent(self.h, event.h)

type QCalendarWidgetwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_wheelEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_wheelEvent ".} =
  type Cb = proc(super: QCalendarWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QCalendarWidget, event: gen_qevent.QKeyEvent): void =


  fQCalendarWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QCalendarWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_keyReleaseEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QCalendarWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QCalendarWidget, event: gen_qevent.QFocusEvent): void =


  fQCalendarWidget_virtualbase_focusInEvent(self.h, event.h)

type QCalendarWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_focusInEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_focusInEvent ".} =
  type Cb = proc(super: QCalendarWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QCalendarWidget, event: gen_qevent.QFocusEvent): void =


  fQCalendarWidget_virtualbase_focusOutEvent(self.h, event.h)

type QCalendarWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_focusOutEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_focusOutEvent ".} =
  type Cb = proc(super: QCalendarWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QCalendarWidget, event: gen_qevent.QEnterEvent): void =


  fQCalendarWidget_virtualbase_enterEvent(self.h, event.h)

type QCalendarWidgetenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_enterEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_enterEvent ".} =
  type Cb = proc(super: QCalendarWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QCalendarWidget, event: gen_qcoreevent.QEvent): void =


  fQCalendarWidget_virtualbase_leaveEvent(self.h, event.h)

type QCalendarWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_leaveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_leaveEvent ".} =
  type Cb = proc(super: QCalendarWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QCalendarWidget, event: gen_qevent.QPaintEvent): void =


  fQCalendarWidget_virtualbase_paintEvent(self.h, event.h)

type QCalendarWidgetpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_paintEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_paintEvent ".} =
  type Cb = proc(super: QCalendarWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QCalendarWidget, event: gen_qevent.QMoveEvent): void =


  fQCalendarWidget_virtualbase_moveEvent(self.h, event.h)

type QCalendarWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_moveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_moveEvent ".} =
  type Cb = proc(super: QCalendarWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QCalendarWidget, event: gen_qevent.QCloseEvent): void =


  fQCalendarWidget_virtualbase_closeEvent(self.h, event.h)

type QCalendarWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_closeEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_closeEvent ".} =
  type Cb = proc(super: QCalendarWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QCalendarWidget, event: gen_qevent.QContextMenuEvent): void =


  fQCalendarWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QCalendarWidgetcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_contextMenuEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_contextMenuEvent ".} =
  type Cb = proc(super: QCalendarWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QCalendarWidget, event: gen_qevent.QTabletEvent): void =


  fQCalendarWidget_virtualbase_tabletEvent(self.h, event.h)

type QCalendarWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_tabletEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_tabletEvent ".} =
  type Cb = proc(super: QCalendarWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QCalendarWidget, event: gen_qevent.QActionEvent): void =


  fQCalendarWidget_virtualbase_actionEvent(self.h, event.h)

type QCalendarWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_actionEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_actionEvent ".} =
  type Cb = proc(super: QCalendarWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QCalendarWidget, event: gen_qevent.QDragEnterEvent): void =


  fQCalendarWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QCalendarWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_dragEnterEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_dragEnterEvent ".} =
  type Cb = proc(super: QCalendarWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QCalendarWidget, event: gen_qevent.QDragMoveEvent): void =


  fQCalendarWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QCalendarWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_dragMoveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_dragMoveEvent ".} =
  type Cb = proc(super: QCalendarWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QCalendarWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQCalendarWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QCalendarWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_dragLeaveEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QCalendarWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QCalendarWidget, event: gen_qevent.QDropEvent): void =


  fQCalendarWidget_virtualbase_dropEvent(self.h, event.h)

type QCalendarWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_dropEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_dropEvent ".} =
  type Cb = proc(super: QCalendarWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QCalendarWidget, event: gen_qevent.QShowEvent): void =


  fQCalendarWidget_virtualbase_showEvent(self.h, event.h)

type QCalendarWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_showEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_showEvent ".} =
  type Cb = proc(super: QCalendarWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QCalendarWidget, event: gen_qevent.QHideEvent): void =


  fQCalendarWidget_virtualbase_hideEvent(self.h, event.h)

type QCalendarWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_hideEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_hideEvent ".} =
  type Cb = proc(super: QCalendarWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QCalendarWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQCalendarWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QCalendarWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_nativeEvent(self: ptr cQCalendarWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QCalendarWidget_nativeEvent ".} =
  type Cb = proc(super: QCalendarWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QCalendarWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QCalendarWidget, param1: gen_qcoreevent.QEvent): void =


  fQCalendarWidget_virtualbase_changeEvent(self.h, param1.h)

type QCalendarWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_changeEvent(self: ptr cQCalendarWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_changeEvent ".} =
  type Cb = proc(super: QCalendarWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QCalendarWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QCalendarWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQCalendarWidget_virtualbase_metric(self.h, cint(param1))

type QCalendarWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_metric(self: ptr cQCalendarWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCalendarWidget_metric ".} =
  type Cb = proc(super: QCalendarWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QCalendarWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QCalendarWidget, painter: gen_qpainter.QPainter): void =


  fQCalendarWidget_virtualbase_initPainter(self.h, painter.h)

type QCalendarWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_initPainter(self: ptr cQCalendarWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_initPainter ".} =
  type Cb = proc(super: QCalendarWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QCalendarWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QCalendarWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQCalendarWidget_virtualbase_redirected(self.h, offset.h))

type QCalendarWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_redirected(self: ptr cQCalendarWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_redirected ".} =
  type Cb = proc(super: QCalendarWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QCalendarWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QCalendarWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQCalendarWidget_virtualbase_sharedPainter(self.h))

type QCalendarWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_sharedPainter(self: ptr cQCalendarWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_sharedPainter ".} =
  type Cb = proc(super: QCalendarWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QCalendarWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QCalendarWidget, param1: gen_qevent.QInputMethodEvent): void =


  fQCalendarWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QCalendarWidgetinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_inputMethodEvent(self: ptr cQCalendarWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_inputMethodEvent ".} =
  type Cb = proc(super: QCalendarWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QCalendarWidget(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QCalendarWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQCalendarWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QCalendarWidgetinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_inputMethodQuery(self: ptr cQCalendarWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QCalendarWidget_inputMethodQuery ".} =
  type Cb = proc(super: QCalendarWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QCalendarWidget(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QCalendarWidget, next: bool): bool =


  fQCalendarWidget_virtualbase_focusNextPrevChild(self.h, next)

type QCalendarWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_focusNextPrevChild(self: ptr cQCalendarWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QCalendarWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QCalendarWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QCalendarWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QCalendarWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQCalendarWidget_virtualbase_timerEvent(self.h, event.h)

type QCalendarWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_timerEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_timerEvent ".} =
  type Cb = proc(super: QCalendarWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QCalendarWidget, event: gen_qcoreevent.QChildEvent): void =


  fQCalendarWidget_virtualbase_childEvent(self.h, event.h)

type QCalendarWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_childEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_childEvent ".} =
  type Cb = proc(super: QCalendarWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QCalendarWidget, event: gen_qcoreevent.QEvent): void =


  fQCalendarWidget_virtualbase_customEvent(self.h, event.h)

type QCalendarWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_customEvent(self: ptr cQCalendarWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_customEvent ".} =
  type Cb = proc(super: QCalendarWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QCalendarWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QCalendarWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQCalendarWidget_virtualbase_connectNotify(self.h, signal.h)

type QCalendarWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_connectNotify(self: ptr cQCalendarWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_connectNotify ".} =
  type Cb = proc(super: QCalendarWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QCalendarWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QCalendarWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQCalendarWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QCalendarWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QCalendarWidget, slot: proc(super: QCalendarWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCalendarWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCalendarWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCalendarWidget_disconnectNotify(self: ptr cQCalendarWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCalendarWidget_disconnectNotify ".} =
  type Cb = proc(super: QCalendarWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QCalendarWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QCalendarWidget): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCalendarWidget_staticMetaObject())
proc delete*(self: QCalendarWidget) =
  fcQCalendarWidget_delete(self.h)
