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
{.compile("gen_qdatetimeedit.cpp", cflags).}


type QDateTimeEditSection* = cint
const
  QDateTimeEditNoSection* = 0
  QDateTimeEditAmPmSection* = 1
  QDateTimeEditMSecSection* = 2
  QDateTimeEditSecondSection* = 4
  QDateTimeEditMinuteSection* = 8
  QDateTimeEditHourSection* = 16
  QDateTimeEditDaySection* = 256
  QDateTimeEditMonthSection* = 512
  QDateTimeEditYearSection* = 1024
  QDateTimeEditTimeSections_Mask* = 31
  QDateTimeEditDateSections_Mask* = 1792



import gen_qdatetimeedit_types
export gen_qdatetimeedit_types

import
  gen_qabstractspinbox,
  gen_qcalendar,
  gen_qcalendarwidget,
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
  gen_qsize,
  gen_qstyleoption,
  gen_qvalidator,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractspinbox,
  gen_qcalendar,
  gen_qcalendarwidget,
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
  gen_qsize,
  gen_qstyleoption,
  gen_qvalidator,
  gen_qvariant,
  gen_qwidget

type cQDateTimeEdit*{.exportc: "QDateTimeEdit", incompleteStruct.} = object
type cQTimeEdit*{.exportc: "QTimeEdit", incompleteStruct.} = object
type cQDateEdit*{.exportc: "QDateEdit", incompleteStruct.} = object

proc fcQDateTimeEdit_new(parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new".}
proc fcQDateTimeEdit_new2(): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new2".}
proc fcQDateTimeEdit_new3(dt: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new3".}
proc fcQDateTimeEdit_new4(d: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new4".}
proc fcQDateTimeEdit_new5(t: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new5".}
proc fcQDateTimeEdit_new6(dt: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new6".}
proc fcQDateTimeEdit_new7(d: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new7".}
proc fcQDateTimeEdit_new8(t: pointer, parent: pointer): ptr cQDateTimeEdit {.importc: "QDateTimeEdit_new8".}
proc fcQDateTimeEdit_metaObject(self: pointer, ): pointer {.importc: "QDateTimeEdit_metaObject".}
proc fcQDateTimeEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QDateTimeEdit_metacast".}
proc fcQDateTimeEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDateTimeEdit_metacall".}
proc fcQDateTimeEdit_tr(s: cstring): struct_miqt_string {.importc: "QDateTimeEdit_tr".}
proc fcQDateTimeEdit_dateTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_dateTime".}
proc fcQDateTimeEdit_date(self: pointer, ): pointer {.importc: "QDateTimeEdit_date".}
proc fcQDateTimeEdit_time(self: pointer, ): pointer {.importc: "QDateTimeEdit_time".}
proc fcQDateTimeEdit_calendar(self: pointer, ): pointer {.importc: "QDateTimeEdit_calendar".}
proc fcQDateTimeEdit_setCalendar(self: pointer, calendar: pointer): void {.importc: "QDateTimeEdit_setCalendar".}
proc fcQDateTimeEdit_minimumDateTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_minimumDateTime".}
proc fcQDateTimeEdit_clearMinimumDateTime(self: pointer, ): void {.importc: "QDateTimeEdit_clearMinimumDateTime".}
proc fcQDateTimeEdit_setMinimumDateTime(self: pointer, dt: pointer): void {.importc: "QDateTimeEdit_setMinimumDateTime".}
proc fcQDateTimeEdit_maximumDateTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_maximumDateTime".}
proc fcQDateTimeEdit_clearMaximumDateTime(self: pointer, ): void {.importc: "QDateTimeEdit_clearMaximumDateTime".}
proc fcQDateTimeEdit_setMaximumDateTime(self: pointer, dt: pointer): void {.importc: "QDateTimeEdit_setMaximumDateTime".}
proc fcQDateTimeEdit_setDateTimeRange(self: pointer, min: pointer, max: pointer): void {.importc: "QDateTimeEdit_setDateTimeRange".}
proc fcQDateTimeEdit_minimumDate(self: pointer, ): pointer {.importc: "QDateTimeEdit_minimumDate".}
proc fcQDateTimeEdit_setMinimumDate(self: pointer, min: pointer): void {.importc: "QDateTimeEdit_setMinimumDate".}
proc fcQDateTimeEdit_clearMinimumDate(self: pointer, ): void {.importc: "QDateTimeEdit_clearMinimumDate".}
proc fcQDateTimeEdit_maximumDate(self: pointer, ): pointer {.importc: "QDateTimeEdit_maximumDate".}
proc fcQDateTimeEdit_setMaximumDate(self: pointer, max: pointer): void {.importc: "QDateTimeEdit_setMaximumDate".}
proc fcQDateTimeEdit_clearMaximumDate(self: pointer, ): void {.importc: "QDateTimeEdit_clearMaximumDate".}
proc fcQDateTimeEdit_setDateRange(self: pointer, min: pointer, max: pointer): void {.importc: "QDateTimeEdit_setDateRange".}
proc fcQDateTimeEdit_minimumTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_minimumTime".}
proc fcQDateTimeEdit_setMinimumTime(self: pointer, min: pointer): void {.importc: "QDateTimeEdit_setMinimumTime".}
proc fcQDateTimeEdit_clearMinimumTime(self: pointer, ): void {.importc: "QDateTimeEdit_clearMinimumTime".}
proc fcQDateTimeEdit_maximumTime(self: pointer, ): pointer {.importc: "QDateTimeEdit_maximumTime".}
proc fcQDateTimeEdit_setMaximumTime(self: pointer, max: pointer): void {.importc: "QDateTimeEdit_setMaximumTime".}
proc fcQDateTimeEdit_clearMaximumTime(self: pointer, ): void {.importc: "QDateTimeEdit_clearMaximumTime".}
proc fcQDateTimeEdit_setTimeRange(self: pointer, min: pointer, max: pointer): void {.importc: "QDateTimeEdit_setTimeRange".}
proc fcQDateTimeEdit_displayedSections(self: pointer, ): cint {.importc: "QDateTimeEdit_displayedSections".}
proc fcQDateTimeEdit_currentSection(self: pointer, ): cint {.importc: "QDateTimeEdit_currentSection".}
proc fcQDateTimeEdit_sectionAt(self: pointer, index: cint): cint {.importc: "QDateTimeEdit_sectionAt".}
proc fcQDateTimeEdit_setCurrentSection(self: pointer, section: cint): void {.importc: "QDateTimeEdit_setCurrentSection".}
proc fcQDateTimeEdit_currentSectionIndex(self: pointer, ): cint {.importc: "QDateTimeEdit_currentSectionIndex".}
proc fcQDateTimeEdit_setCurrentSectionIndex(self: pointer, index: cint): void {.importc: "QDateTimeEdit_setCurrentSectionIndex".}
proc fcQDateTimeEdit_calendarWidget(self: pointer, ): pointer {.importc: "QDateTimeEdit_calendarWidget".}
proc fcQDateTimeEdit_setCalendarWidget(self: pointer, calendarWidget: pointer): void {.importc: "QDateTimeEdit_setCalendarWidget".}
proc fcQDateTimeEdit_sectionCount(self: pointer, ): cint {.importc: "QDateTimeEdit_sectionCount".}
proc fcQDateTimeEdit_setSelectedSection(self: pointer, section: cint): void {.importc: "QDateTimeEdit_setSelectedSection".}
proc fcQDateTimeEdit_sectionText(self: pointer, section: cint): struct_miqt_string {.importc: "QDateTimeEdit_sectionText".}
proc fcQDateTimeEdit_displayFormat(self: pointer, ): struct_miqt_string {.importc: "QDateTimeEdit_displayFormat".}
proc fcQDateTimeEdit_setDisplayFormat(self: pointer, format: struct_miqt_string): void {.importc: "QDateTimeEdit_setDisplayFormat".}
proc fcQDateTimeEdit_calendarPopup(self: pointer, ): bool {.importc: "QDateTimeEdit_calendarPopup".}
proc fcQDateTimeEdit_setCalendarPopup(self: pointer, enable: bool): void {.importc: "QDateTimeEdit_setCalendarPopup".}
proc fcQDateTimeEdit_timeSpec(self: pointer, ): cint {.importc: "QDateTimeEdit_timeSpec".}
proc fcQDateTimeEdit_setTimeSpec(self: pointer, spec: cint): void {.importc: "QDateTimeEdit_setTimeSpec".}
proc fcQDateTimeEdit_sizeHint(self: pointer, ): pointer {.importc: "QDateTimeEdit_sizeHint".}
proc fcQDateTimeEdit_clear(self: pointer, ): void {.importc: "QDateTimeEdit_clear".}
proc fcQDateTimeEdit_stepBy(self: pointer, steps: cint): void {.importc: "QDateTimeEdit_stepBy".}
proc fcQDateTimeEdit_event(self: pointer, event: pointer): bool {.importc: "QDateTimeEdit_event".}
proc fcQDateTimeEdit_dateTimeChanged(self: pointer, dateTime: pointer): void {.importc: "QDateTimeEdit_dateTimeChanged".}
proc fQDateTimeEdit_connect_dateTimeChanged(self: pointer, slot: int) {.importc: "QDateTimeEdit_connect_dateTimeChanged".}
proc fcQDateTimeEdit_timeChanged(self: pointer, time: pointer): void {.importc: "QDateTimeEdit_timeChanged".}
proc fQDateTimeEdit_connect_timeChanged(self: pointer, slot: int) {.importc: "QDateTimeEdit_connect_timeChanged".}
proc fcQDateTimeEdit_dateChanged(self: pointer, date: pointer): void {.importc: "QDateTimeEdit_dateChanged".}
proc fQDateTimeEdit_connect_dateChanged(self: pointer, slot: int) {.importc: "QDateTimeEdit_connect_dateChanged".}
proc fcQDateTimeEdit_setDateTime(self: pointer, dateTime: pointer): void {.importc: "QDateTimeEdit_setDateTime".}
proc fcQDateTimeEdit_setDate(self: pointer, date: pointer): void {.importc: "QDateTimeEdit_setDate".}
proc fcQDateTimeEdit_setTime(self: pointer, time: pointer): void {.importc: "QDateTimeEdit_setTime".}
proc fcQDateTimeEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDateTimeEdit_tr2".}
proc fcQDateTimeEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDateTimeEdit_tr3".}
proc fQDateTimeEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDateTimeEdit_virtualbase_metaObject".}
proc fcQDateTimeEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_metaObject".}
proc fQDateTimeEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDateTimeEdit_virtualbase_metacast".}
proc fcQDateTimeEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_metacast".}
proc fQDateTimeEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDateTimeEdit_virtualbase_metacall".}
proc fcQDateTimeEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_metacall".}
proc fQDateTimeEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDateTimeEdit_virtualbase_sizeHint".}
proc fcQDateTimeEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_sizeHint".}
proc fQDateTimeEdit_virtualbase_clear(self: pointer, ): void{.importc: "QDateTimeEdit_virtualbase_clear".}
proc fcQDateTimeEdit_override_virtual_clear(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_clear".}
proc fQDateTimeEdit_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QDateTimeEdit_virtualbase_stepBy".}
proc fcQDateTimeEdit_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_stepBy".}
proc fQDateTimeEdit_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDateTimeEdit_virtualbase_event".}
proc fcQDateTimeEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_event".}
proc fQDateTimeEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_keyPressEvent".}
proc fcQDateTimeEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_keyPressEvent".}
proc fQDateTimeEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_wheelEvent".}
proc fcQDateTimeEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_wheelEvent".}
proc fQDateTimeEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_focusInEvent".}
proc fcQDateTimeEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_focusInEvent".}
proc fQDateTimeEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDateTimeEdit_virtualbase_focusNextPrevChild".}
proc fcQDateTimeEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_focusNextPrevChild".}
proc fQDateTimeEdit_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QDateTimeEdit_virtualbase_validate".}
proc fcQDateTimeEdit_override_virtual_validate(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_validate".}
proc fQDateTimeEdit_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QDateTimeEdit_virtualbase_fixup".}
proc fcQDateTimeEdit_override_virtual_fixup(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_fixup".}
proc fQDateTimeEdit_virtualbase_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer{.importc: "QDateTimeEdit_virtualbase_dateTimeFromText".}
proc fcQDateTimeEdit_override_virtual_dateTimeFromText(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dateTimeFromText".}
proc fQDateTimeEdit_virtualbase_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string{.importc: "QDateTimeEdit_virtualbase_textFromDateTime".}
proc fcQDateTimeEdit_override_virtual_textFromDateTime(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_textFromDateTime".}
proc fQDateTimeEdit_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QDateTimeEdit_virtualbase_stepEnabled".}
proc fcQDateTimeEdit_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_stepEnabled".}
proc fQDateTimeEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_mousePressEvent".}
proc fcQDateTimeEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_mousePressEvent".}
proc fQDateTimeEdit_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_paintEvent".}
proc fcQDateTimeEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_paintEvent".}
proc fQDateTimeEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QDateTimeEdit_virtualbase_initStyleOption".}
proc fcQDateTimeEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_initStyleOption".}
proc fQDateTimeEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDateTimeEdit_virtualbase_minimumSizeHint".}
proc fcQDateTimeEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_minimumSizeHint".}
proc fQDateTimeEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDateTimeEdit_virtualbase_inputMethodQuery".}
proc fcQDateTimeEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_inputMethodQuery".}
proc fQDateTimeEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_resizeEvent".}
proc fcQDateTimeEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_resizeEvent".}
proc fQDateTimeEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_keyReleaseEvent".}
proc fcQDateTimeEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_keyReleaseEvent".}
proc fQDateTimeEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_focusOutEvent".}
proc fcQDateTimeEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_focusOutEvent".}
proc fQDateTimeEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_contextMenuEvent".}
proc fcQDateTimeEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_contextMenuEvent".}
proc fQDateTimeEdit_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_changeEvent".}
proc fcQDateTimeEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_changeEvent".}
proc fQDateTimeEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_closeEvent".}
proc fcQDateTimeEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_closeEvent".}
proc fQDateTimeEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_hideEvent".}
proc fcQDateTimeEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_hideEvent".}
proc fQDateTimeEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_mouseReleaseEvent".}
proc fcQDateTimeEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_mouseReleaseEvent".}
proc fQDateTimeEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_mouseMoveEvent".}
proc fcQDateTimeEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_mouseMoveEvent".}
proc fQDateTimeEdit_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_timerEvent".}
proc fcQDateTimeEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_timerEvent".}
proc fQDateTimeEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_showEvent".}
proc fcQDateTimeEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_showEvent".}
proc fQDateTimeEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QDateTimeEdit_virtualbase_devType".}
proc fcQDateTimeEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_devType".}
proc fQDateTimeEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDateTimeEdit_virtualbase_setVisible".}
proc fcQDateTimeEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_setVisible".}
proc fQDateTimeEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDateTimeEdit_virtualbase_heightForWidth".}
proc fcQDateTimeEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_heightForWidth".}
proc fQDateTimeEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDateTimeEdit_virtualbase_hasHeightForWidth".}
proc fcQDateTimeEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_hasHeightForWidth".}
proc fQDateTimeEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDateTimeEdit_virtualbase_paintEngine".}
proc fcQDateTimeEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_paintEngine".}
proc fQDateTimeEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQDateTimeEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_mouseDoubleClickEvent".}
proc fQDateTimeEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_enterEvent".}
proc fcQDateTimeEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_enterEvent".}
proc fQDateTimeEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_leaveEvent".}
proc fcQDateTimeEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_leaveEvent".}
proc fQDateTimeEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_moveEvent".}
proc fcQDateTimeEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_moveEvent".}
proc fQDateTimeEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_tabletEvent".}
proc fcQDateTimeEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_tabletEvent".}
proc fQDateTimeEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_actionEvent".}
proc fcQDateTimeEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_actionEvent".}
proc fQDateTimeEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_dragEnterEvent".}
proc fcQDateTimeEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dragEnterEvent".}
proc fQDateTimeEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_dragMoveEvent".}
proc fcQDateTimeEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dragMoveEvent".}
proc fQDateTimeEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_dragLeaveEvent".}
proc fcQDateTimeEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dragLeaveEvent".}
proc fQDateTimeEdit_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_dropEvent".}
proc fcQDateTimeEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_dropEvent".}
proc fQDateTimeEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDateTimeEdit_virtualbase_nativeEvent".}
proc fcQDateTimeEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_nativeEvent".}
proc fQDateTimeEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDateTimeEdit_virtualbase_metric".}
proc fcQDateTimeEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_metric".}
proc fQDateTimeEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDateTimeEdit_virtualbase_initPainter".}
proc fcQDateTimeEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_initPainter".}
proc fQDateTimeEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDateTimeEdit_virtualbase_redirected".}
proc fcQDateTimeEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_redirected".}
proc fQDateTimeEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDateTimeEdit_virtualbase_sharedPainter".}
proc fcQDateTimeEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_sharedPainter".}
proc fQDateTimeEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDateTimeEdit_virtualbase_inputMethodEvent".}
proc fcQDateTimeEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_inputMethodEvent".}
proc fQDateTimeEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDateTimeEdit_virtualbase_eventFilter".}
proc fcQDateTimeEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_eventFilter".}
proc fQDateTimeEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_childEvent".}
proc fcQDateTimeEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_childEvent".}
proc fQDateTimeEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDateTimeEdit_virtualbase_customEvent".}
proc fcQDateTimeEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_customEvent".}
proc fQDateTimeEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDateTimeEdit_virtualbase_connectNotify".}
proc fcQDateTimeEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_connectNotify".}
proc fQDateTimeEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDateTimeEdit_virtualbase_disconnectNotify".}
proc fcQDateTimeEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDateTimeEdit_override_virtual_disconnectNotify".}
proc fcQDateTimeEdit_staticMetaObject(): pointer {.importc: "QDateTimeEdit_staticMetaObject".}
proc fcQDateTimeEdit_delete(self: pointer) {.importc: "QDateTimeEdit_delete".}
proc fcQTimeEdit_new(parent: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new".}
proc fcQTimeEdit_new2(): ptr cQTimeEdit {.importc: "QTimeEdit_new2".}
proc fcQTimeEdit_new3(time: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new3".}
proc fcQTimeEdit_new4(time: pointer, parent: pointer): ptr cQTimeEdit {.importc: "QTimeEdit_new4".}
proc fcQTimeEdit_metaObject(self: pointer, ): pointer {.importc: "QTimeEdit_metaObject".}
proc fcQTimeEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimeEdit_metacast".}
proc fcQTimeEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimeEdit_metacall".}
proc fcQTimeEdit_tr(s: cstring): struct_miqt_string {.importc: "QTimeEdit_tr".}
proc fcQTimeEdit_userTimeChanged(self: pointer, time: pointer): void {.importc: "QTimeEdit_userTimeChanged".}
proc fQTimeEdit_connect_userTimeChanged(self: pointer, slot: int) {.importc: "QTimeEdit_connect_userTimeChanged".}
proc fcQTimeEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimeEdit_tr2".}
proc fcQTimeEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimeEdit_tr3".}
proc fQTimeEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTimeEdit_virtualbase_metaObject".}
proc fcQTimeEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_metaObject".}
proc fQTimeEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTimeEdit_virtualbase_metacast".}
proc fcQTimeEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_metacast".}
proc fQTimeEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTimeEdit_virtualbase_metacall".}
proc fcQTimeEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_metacall".}
proc fQTimeEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTimeEdit_virtualbase_sizeHint".}
proc fcQTimeEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_sizeHint".}
proc fQTimeEdit_virtualbase_clear(self: pointer, ): void{.importc: "QTimeEdit_virtualbase_clear".}
proc fcQTimeEdit_override_virtual_clear(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_clear".}
proc fQTimeEdit_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QTimeEdit_virtualbase_stepBy".}
proc fcQTimeEdit_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_stepBy".}
proc fQTimeEdit_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTimeEdit_virtualbase_event".}
proc fcQTimeEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_event".}
proc fQTimeEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_keyPressEvent".}
proc fcQTimeEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_keyPressEvent".}
proc fQTimeEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_wheelEvent".}
proc fcQTimeEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_wheelEvent".}
proc fQTimeEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_focusInEvent".}
proc fcQTimeEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_focusInEvent".}
proc fQTimeEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTimeEdit_virtualbase_focusNextPrevChild".}
proc fcQTimeEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_focusNextPrevChild".}
proc fQTimeEdit_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QTimeEdit_virtualbase_validate".}
proc fcQTimeEdit_override_virtual_validate(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_validate".}
proc fQTimeEdit_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QTimeEdit_virtualbase_fixup".}
proc fcQTimeEdit_override_virtual_fixup(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_fixup".}
proc fQTimeEdit_virtualbase_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer{.importc: "QTimeEdit_virtualbase_dateTimeFromText".}
proc fcQTimeEdit_override_virtual_dateTimeFromText(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dateTimeFromText".}
proc fQTimeEdit_virtualbase_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string{.importc: "QTimeEdit_virtualbase_textFromDateTime".}
proc fcQTimeEdit_override_virtual_textFromDateTime(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_textFromDateTime".}
proc fQTimeEdit_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QTimeEdit_virtualbase_stepEnabled".}
proc fcQTimeEdit_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_stepEnabled".}
proc fQTimeEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_mousePressEvent".}
proc fcQTimeEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_mousePressEvent".}
proc fQTimeEdit_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_paintEvent".}
proc fcQTimeEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_paintEvent".}
proc fQTimeEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QTimeEdit_virtualbase_initStyleOption".}
proc fcQTimeEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_initStyleOption".}
proc fQTimeEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTimeEdit_virtualbase_minimumSizeHint".}
proc fcQTimeEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_minimumSizeHint".}
proc fQTimeEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QTimeEdit_virtualbase_inputMethodQuery".}
proc fcQTimeEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_inputMethodQuery".}
proc fQTimeEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_resizeEvent".}
proc fcQTimeEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_resizeEvent".}
proc fQTimeEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_keyReleaseEvent".}
proc fcQTimeEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_keyReleaseEvent".}
proc fQTimeEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_focusOutEvent".}
proc fcQTimeEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_focusOutEvent".}
proc fQTimeEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_contextMenuEvent".}
proc fcQTimeEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_contextMenuEvent".}
proc fQTimeEdit_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_changeEvent".}
proc fcQTimeEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_changeEvent".}
proc fQTimeEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_closeEvent".}
proc fcQTimeEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_closeEvent".}
proc fQTimeEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_hideEvent".}
proc fcQTimeEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_hideEvent".}
proc fQTimeEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_mouseReleaseEvent".}
proc fcQTimeEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_mouseReleaseEvent".}
proc fQTimeEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_mouseMoveEvent".}
proc fcQTimeEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_mouseMoveEvent".}
proc fQTimeEdit_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_timerEvent".}
proc fcQTimeEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_timerEvent".}
proc fQTimeEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_showEvent".}
proc fcQTimeEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_showEvent".}
proc fQTimeEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QTimeEdit_virtualbase_devType".}
proc fcQTimeEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_devType".}
proc fQTimeEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTimeEdit_virtualbase_setVisible".}
proc fcQTimeEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_setVisible".}
proc fQTimeEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTimeEdit_virtualbase_heightForWidth".}
proc fcQTimeEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_heightForWidth".}
proc fQTimeEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTimeEdit_virtualbase_hasHeightForWidth".}
proc fcQTimeEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_hasHeightForWidth".}
proc fQTimeEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTimeEdit_virtualbase_paintEngine".}
proc fcQTimeEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_paintEngine".}
proc fQTimeEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQTimeEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_mouseDoubleClickEvent".}
proc fQTimeEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_enterEvent".}
proc fcQTimeEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_enterEvent".}
proc fQTimeEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_leaveEvent".}
proc fcQTimeEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_leaveEvent".}
proc fQTimeEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_moveEvent".}
proc fcQTimeEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_moveEvent".}
proc fQTimeEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_tabletEvent".}
proc fcQTimeEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_tabletEvent".}
proc fQTimeEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_actionEvent".}
proc fcQTimeEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_actionEvent".}
proc fQTimeEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_dragEnterEvent".}
proc fcQTimeEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dragEnterEvent".}
proc fQTimeEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_dragMoveEvent".}
proc fcQTimeEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dragMoveEvent".}
proc fQTimeEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_dragLeaveEvent".}
proc fcQTimeEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dragLeaveEvent".}
proc fQTimeEdit_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_dropEvent".}
proc fcQTimeEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_dropEvent".}
proc fQTimeEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTimeEdit_virtualbase_nativeEvent".}
proc fcQTimeEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_nativeEvent".}
proc fQTimeEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTimeEdit_virtualbase_metric".}
proc fcQTimeEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_metric".}
proc fQTimeEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTimeEdit_virtualbase_initPainter".}
proc fcQTimeEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_initPainter".}
proc fQTimeEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTimeEdit_virtualbase_redirected".}
proc fcQTimeEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_redirected".}
proc fQTimeEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTimeEdit_virtualbase_sharedPainter".}
proc fcQTimeEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_sharedPainter".}
proc fQTimeEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QTimeEdit_virtualbase_inputMethodEvent".}
proc fcQTimeEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_inputMethodEvent".}
proc fQTimeEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTimeEdit_virtualbase_eventFilter".}
proc fcQTimeEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_eventFilter".}
proc fQTimeEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_childEvent".}
proc fcQTimeEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_childEvent".}
proc fQTimeEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTimeEdit_virtualbase_customEvent".}
proc fcQTimeEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_customEvent".}
proc fQTimeEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTimeEdit_virtualbase_connectNotify".}
proc fcQTimeEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_connectNotify".}
proc fQTimeEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTimeEdit_virtualbase_disconnectNotify".}
proc fcQTimeEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTimeEdit_override_virtual_disconnectNotify".}
proc fcQTimeEdit_staticMetaObject(): pointer {.importc: "QTimeEdit_staticMetaObject".}
proc fcQTimeEdit_delete(self: pointer) {.importc: "QTimeEdit_delete".}
proc fcQDateEdit_new(parent: pointer): ptr cQDateEdit {.importc: "QDateEdit_new".}
proc fcQDateEdit_new2(): ptr cQDateEdit {.importc: "QDateEdit_new2".}
proc fcQDateEdit_new3(date: pointer): ptr cQDateEdit {.importc: "QDateEdit_new3".}
proc fcQDateEdit_new4(date: pointer, parent: pointer): ptr cQDateEdit {.importc: "QDateEdit_new4".}
proc fcQDateEdit_metaObject(self: pointer, ): pointer {.importc: "QDateEdit_metaObject".}
proc fcQDateEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QDateEdit_metacast".}
proc fcQDateEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDateEdit_metacall".}
proc fcQDateEdit_tr(s: cstring): struct_miqt_string {.importc: "QDateEdit_tr".}
proc fcQDateEdit_userDateChanged(self: pointer, date: pointer): void {.importc: "QDateEdit_userDateChanged".}
proc fQDateEdit_connect_userDateChanged(self: pointer, slot: int) {.importc: "QDateEdit_connect_userDateChanged".}
proc fcQDateEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDateEdit_tr2".}
proc fcQDateEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDateEdit_tr3".}
proc fQDateEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDateEdit_virtualbase_metaObject".}
proc fcQDateEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_metaObject".}
proc fQDateEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDateEdit_virtualbase_metacast".}
proc fcQDateEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_metacast".}
proc fQDateEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDateEdit_virtualbase_metacall".}
proc fcQDateEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_metacall".}
proc fQDateEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDateEdit_virtualbase_sizeHint".}
proc fcQDateEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_sizeHint".}
proc fQDateEdit_virtualbase_clear(self: pointer, ): void{.importc: "QDateEdit_virtualbase_clear".}
proc fcQDateEdit_override_virtual_clear(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_clear".}
proc fQDateEdit_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QDateEdit_virtualbase_stepBy".}
proc fcQDateEdit_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_stepBy".}
proc fQDateEdit_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDateEdit_virtualbase_event".}
proc fcQDateEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_event".}
proc fQDateEdit_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_keyPressEvent".}
proc fcQDateEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_keyPressEvent".}
proc fQDateEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_wheelEvent".}
proc fcQDateEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_wheelEvent".}
proc fQDateEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_focusInEvent".}
proc fcQDateEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_focusInEvent".}
proc fQDateEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDateEdit_virtualbase_focusNextPrevChild".}
proc fcQDateEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_focusNextPrevChild".}
proc fQDateEdit_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QDateEdit_virtualbase_validate".}
proc fcQDateEdit_override_virtual_validate(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_validate".}
proc fQDateEdit_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QDateEdit_virtualbase_fixup".}
proc fcQDateEdit_override_virtual_fixup(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_fixup".}
proc fQDateEdit_virtualbase_dateTimeFromText(self: pointer, text: struct_miqt_string): pointer{.importc: "QDateEdit_virtualbase_dateTimeFromText".}
proc fcQDateEdit_override_virtual_dateTimeFromText(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dateTimeFromText".}
proc fQDateEdit_virtualbase_textFromDateTime(self: pointer, dt: pointer): struct_miqt_string{.importc: "QDateEdit_virtualbase_textFromDateTime".}
proc fcQDateEdit_override_virtual_textFromDateTime(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_textFromDateTime".}
proc fQDateEdit_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QDateEdit_virtualbase_stepEnabled".}
proc fcQDateEdit_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_stepEnabled".}
proc fQDateEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_mousePressEvent".}
proc fcQDateEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_mousePressEvent".}
proc fQDateEdit_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_paintEvent".}
proc fcQDateEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_paintEvent".}
proc fQDateEdit_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QDateEdit_virtualbase_initStyleOption".}
proc fcQDateEdit_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_initStyleOption".}
proc fQDateEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDateEdit_virtualbase_minimumSizeHint".}
proc fcQDateEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_minimumSizeHint".}
proc fQDateEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDateEdit_virtualbase_inputMethodQuery".}
proc fcQDateEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_inputMethodQuery".}
proc fQDateEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_resizeEvent".}
proc fcQDateEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_resizeEvent".}
proc fQDateEdit_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_keyReleaseEvent".}
proc fcQDateEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_keyReleaseEvent".}
proc fQDateEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_focusOutEvent".}
proc fcQDateEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_focusOutEvent".}
proc fQDateEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_contextMenuEvent".}
proc fcQDateEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_contextMenuEvent".}
proc fQDateEdit_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_changeEvent".}
proc fcQDateEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_changeEvent".}
proc fQDateEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_closeEvent".}
proc fcQDateEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_closeEvent".}
proc fQDateEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_hideEvent".}
proc fcQDateEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_hideEvent".}
proc fQDateEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_mouseReleaseEvent".}
proc fcQDateEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_mouseReleaseEvent".}
proc fQDateEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_mouseMoveEvent".}
proc fcQDateEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_mouseMoveEvent".}
proc fQDateEdit_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_timerEvent".}
proc fcQDateEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_timerEvent".}
proc fQDateEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_showEvent".}
proc fcQDateEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_showEvent".}
proc fQDateEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QDateEdit_virtualbase_devType".}
proc fcQDateEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_devType".}
proc fQDateEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDateEdit_virtualbase_setVisible".}
proc fcQDateEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_setVisible".}
proc fQDateEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDateEdit_virtualbase_heightForWidth".}
proc fcQDateEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_heightForWidth".}
proc fQDateEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDateEdit_virtualbase_hasHeightForWidth".}
proc fcQDateEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_hasHeightForWidth".}
proc fQDateEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDateEdit_virtualbase_paintEngine".}
proc fcQDateEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_paintEngine".}
proc fQDateEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQDateEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_mouseDoubleClickEvent".}
proc fQDateEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_enterEvent".}
proc fcQDateEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_enterEvent".}
proc fQDateEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_leaveEvent".}
proc fcQDateEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_leaveEvent".}
proc fQDateEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_moveEvent".}
proc fcQDateEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_moveEvent".}
proc fQDateEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_tabletEvent".}
proc fcQDateEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_tabletEvent".}
proc fQDateEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_actionEvent".}
proc fcQDateEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_actionEvent".}
proc fQDateEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_dragEnterEvent".}
proc fcQDateEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dragEnterEvent".}
proc fQDateEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_dragMoveEvent".}
proc fcQDateEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dragMoveEvent".}
proc fQDateEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_dragLeaveEvent".}
proc fcQDateEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dragLeaveEvent".}
proc fQDateEdit_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_dropEvent".}
proc fcQDateEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_dropEvent".}
proc fQDateEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDateEdit_virtualbase_nativeEvent".}
proc fcQDateEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_nativeEvent".}
proc fQDateEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDateEdit_virtualbase_metric".}
proc fcQDateEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_metric".}
proc fQDateEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDateEdit_virtualbase_initPainter".}
proc fcQDateEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_initPainter".}
proc fQDateEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDateEdit_virtualbase_redirected".}
proc fcQDateEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_redirected".}
proc fQDateEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDateEdit_virtualbase_sharedPainter".}
proc fcQDateEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_sharedPainter".}
proc fQDateEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDateEdit_virtualbase_inputMethodEvent".}
proc fcQDateEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_inputMethodEvent".}
proc fQDateEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDateEdit_virtualbase_eventFilter".}
proc fcQDateEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_eventFilter".}
proc fQDateEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_childEvent".}
proc fcQDateEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_childEvent".}
proc fQDateEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDateEdit_virtualbase_customEvent".}
proc fcQDateEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_customEvent".}
proc fQDateEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDateEdit_virtualbase_connectNotify".}
proc fcQDateEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_connectNotify".}
proc fQDateEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDateEdit_virtualbase_disconnectNotify".}
proc fcQDateEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDateEdit_override_virtual_disconnectNotify".}
proc fcQDateEdit_staticMetaObject(): pointer {.importc: "QDateEdit_staticMetaObject".}
proc fcQDateEdit_delete(self: pointer) {.importc: "QDateEdit_delete".}


func init*(T: type QDateTimeEdit, h: ptr cQDateTimeEdit): QDateTimeEdit =
  T(h: h)
proc create*(T: type QDateTimeEdit, parent: gen_qwidget.QWidget): QDateTimeEdit =

  QDateTimeEdit.init(fcQDateTimeEdit_new(parent.h))
proc create*(T: type QDateTimeEdit, ): QDateTimeEdit =

  QDateTimeEdit.init(fcQDateTimeEdit_new2())
proc create2*(T: type QDateTimeEdit, dt: gen_qdatetime.QDateTime): QDateTimeEdit =

  QDateTimeEdit.init(fcQDateTimeEdit_new3(dt.h))
proc create2*(T: type QDateTimeEdit, d: gen_qdatetime.QDate): QDateTimeEdit =

  QDateTimeEdit.init(fcQDateTimeEdit_new4(d.h))
proc create2*(T: type QDateTimeEdit, t: gen_qdatetime.QTime): QDateTimeEdit =

  QDateTimeEdit.init(fcQDateTimeEdit_new5(t.h))
proc create*(T: type QDateTimeEdit, dt: gen_qdatetime.QDateTime, parent: gen_qwidget.QWidget): QDateTimeEdit =

  QDateTimeEdit.init(fcQDateTimeEdit_new6(dt.h, parent.h))
proc create2*(T: type QDateTimeEdit, d: gen_qdatetime.QDate, parent: gen_qwidget.QWidget): QDateTimeEdit =

  QDateTimeEdit.init(fcQDateTimeEdit_new7(d.h, parent.h))
proc create2*(T: type QDateTimeEdit, t: gen_qdatetime.QTime, parent: gen_qwidget.QWidget): QDateTimeEdit =

  QDateTimeEdit.init(fcQDateTimeEdit_new8(t.h, parent.h))
proc metaObject*(self: QDateTimeEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDateTimeEdit_metaObject(self.h))

proc metacast*(self: QDateTimeEdit, param1: cstring): pointer =

  fcQDateTimeEdit_metacast(self.h, param1)

proc metacall*(self: QDateTimeEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDateTimeEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDateTimeEdit, s: cstring): string =

  let v_ms = fcQDateTimeEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc dateTime*(self: QDateTimeEdit, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQDateTimeEdit_dateTime(self.h))

proc date*(self: QDateTimeEdit, ): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQDateTimeEdit_date(self.h))

proc time*(self: QDateTimeEdit, ): gen_qdatetime.QTime =

  gen_qdatetime.QTime(h: fcQDateTimeEdit_time(self.h))

proc calendar*(self: QDateTimeEdit, ): gen_qcalendar.QCalendar =

  gen_qcalendar.QCalendar(h: fcQDateTimeEdit_calendar(self.h))

proc setCalendar*(self: QDateTimeEdit, calendar: gen_qcalendar.QCalendar): void =

  fcQDateTimeEdit_setCalendar(self.h, calendar.h)

proc minimumDateTime*(self: QDateTimeEdit, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQDateTimeEdit_minimumDateTime(self.h))

proc clearMinimumDateTime*(self: QDateTimeEdit, ): void =

  fcQDateTimeEdit_clearMinimumDateTime(self.h)

proc setMinimumDateTime*(self: QDateTimeEdit, dt: gen_qdatetime.QDateTime): void =

  fcQDateTimeEdit_setMinimumDateTime(self.h, dt.h)

proc maximumDateTime*(self: QDateTimeEdit, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQDateTimeEdit_maximumDateTime(self.h))

proc clearMaximumDateTime*(self: QDateTimeEdit, ): void =

  fcQDateTimeEdit_clearMaximumDateTime(self.h)

proc setMaximumDateTime*(self: QDateTimeEdit, dt: gen_qdatetime.QDateTime): void =

  fcQDateTimeEdit_setMaximumDateTime(self.h, dt.h)

proc setDateTimeRange*(self: QDateTimeEdit, min: gen_qdatetime.QDateTime, max: gen_qdatetime.QDateTime): void =

  fcQDateTimeEdit_setDateTimeRange(self.h, min.h, max.h)

proc minimumDate*(self: QDateTimeEdit, ): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQDateTimeEdit_minimumDate(self.h))

proc setMinimumDate*(self: QDateTimeEdit, min: gen_qdatetime.QDate): void =

  fcQDateTimeEdit_setMinimumDate(self.h, min.h)

proc clearMinimumDate*(self: QDateTimeEdit, ): void =

  fcQDateTimeEdit_clearMinimumDate(self.h)

proc maximumDate*(self: QDateTimeEdit, ): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQDateTimeEdit_maximumDate(self.h))

proc setMaximumDate*(self: QDateTimeEdit, max: gen_qdatetime.QDate): void =

  fcQDateTimeEdit_setMaximumDate(self.h, max.h)

proc clearMaximumDate*(self: QDateTimeEdit, ): void =

  fcQDateTimeEdit_clearMaximumDate(self.h)

proc setDateRange*(self: QDateTimeEdit, min: gen_qdatetime.QDate, max: gen_qdatetime.QDate): void =

  fcQDateTimeEdit_setDateRange(self.h, min.h, max.h)

proc minimumTime*(self: QDateTimeEdit, ): gen_qdatetime.QTime =

  gen_qdatetime.QTime(h: fcQDateTimeEdit_minimumTime(self.h))

proc setMinimumTime*(self: QDateTimeEdit, min: gen_qdatetime.QTime): void =

  fcQDateTimeEdit_setMinimumTime(self.h, min.h)

proc clearMinimumTime*(self: QDateTimeEdit, ): void =

  fcQDateTimeEdit_clearMinimumTime(self.h)

proc maximumTime*(self: QDateTimeEdit, ): gen_qdatetime.QTime =

  gen_qdatetime.QTime(h: fcQDateTimeEdit_maximumTime(self.h))

proc setMaximumTime*(self: QDateTimeEdit, max: gen_qdatetime.QTime): void =

  fcQDateTimeEdit_setMaximumTime(self.h, max.h)

proc clearMaximumTime*(self: QDateTimeEdit, ): void =

  fcQDateTimeEdit_clearMaximumTime(self.h)

proc setTimeRange*(self: QDateTimeEdit, min: gen_qdatetime.QTime, max: gen_qdatetime.QTime): void =

  fcQDateTimeEdit_setTimeRange(self.h, min.h, max.h)

proc displayedSections*(self: QDateTimeEdit, ): QDateTimeEditSection =

  QDateTimeEditSection(fcQDateTimeEdit_displayedSections(self.h))

proc currentSection*(self: QDateTimeEdit, ): QDateTimeEditSection =

  QDateTimeEditSection(fcQDateTimeEdit_currentSection(self.h))

proc sectionAt*(self: QDateTimeEdit, index: cint): QDateTimeEditSection =

  QDateTimeEditSection(fcQDateTimeEdit_sectionAt(self.h, index))

proc setCurrentSection*(self: QDateTimeEdit, section: QDateTimeEditSection): void =

  fcQDateTimeEdit_setCurrentSection(self.h, cint(section))

proc currentSectionIndex*(self: QDateTimeEdit, ): cint =

  fcQDateTimeEdit_currentSectionIndex(self.h)

proc setCurrentSectionIndex*(self: QDateTimeEdit, index: cint): void =

  fcQDateTimeEdit_setCurrentSectionIndex(self.h, index)

proc calendarWidget*(self: QDateTimeEdit, ): gen_qcalendarwidget.QCalendarWidget =

  gen_qcalendarwidget.QCalendarWidget(h: fcQDateTimeEdit_calendarWidget(self.h))

proc setCalendarWidget*(self: QDateTimeEdit, calendarWidget: gen_qcalendarwidget.QCalendarWidget): void =

  fcQDateTimeEdit_setCalendarWidget(self.h, calendarWidget.h)

proc sectionCount*(self: QDateTimeEdit, ): cint =

  fcQDateTimeEdit_sectionCount(self.h)

proc setSelectedSection*(self: QDateTimeEdit, section: QDateTimeEditSection): void =

  fcQDateTimeEdit_setSelectedSection(self.h, cint(section))

proc sectionText*(self: QDateTimeEdit, section: QDateTimeEditSection): string =

  let v_ms = fcQDateTimeEdit_sectionText(self.h, cint(section))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayFormat*(self: QDateTimeEdit, ): string =

  let v_ms = fcQDateTimeEdit_displayFormat(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDisplayFormat*(self: QDateTimeEdit, format: string): void =

  fcQDateTimeEdit_setDisplayFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))

proc calendarPopup*(self: QDateTimeEdit, ): bool =

  fcQDateTimeEdit_calendarPopup(self.h)

proc setCalendarPopup*(self: QDateTimeEdit, enable: bool): void =

  fcQDateTimeEdit_setCalendarPopup(self.h, enable)

proc timeSpec*(self: QDateTimeEdit, ): gen_qnamespace.TimeSpec =

  gen_qnamespace.TimeSpec(fcQDateTimeEdit_timeSpec(self.h))

proc setTimeSpec*(self: QDateTimeEdit, spec: gen_qnamespace.TimeSpec): void =

  fcQDateTimeEdit_setTimeSpec(self.h, cint(spec))

proc sizeHint*(self: QDateTimeEdit, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQDateTimeEdit_sizeHint(self.h))

proc clear*(self: QDateTimeEdit, ): void =

  fcQDateTimeEdit_clear(self.h)

proc stepBy*(self: QDateTimeEdit, steps: cint): void =

  fcQDateTimeEdit_stepBy(self.h, steps)

proc event*(self: QDateTimeEdit, event: gen_qcoreevent.QEvent): bool =

  fcQDateTimeEdit_event(self.h, event.h)

proc dateTimeChanged*(self: QDateTimeEdit, dateTime: gen_qdatetime.QDateTime): void =

  fcQDateTimeEdit_dateTimeChanged(self.h, dateTime.h)

proc miqt_exec_callback_QDateTimeEdit_dateTimeChanged(slot: int, dateTime: pointer) {.exportc.} =
  type Cb = proc(dateTime: gen_qdatetime.QDateTime)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qdatetime.QDateTime(h: dateTime)


  nimfunc[](slotval1)

proc ondateTimeChanged*(self: QDateTimeEdit, slot: proc(dateTime: gen_qdatetime.QDateTime)) =
  type Cb = proc(dateTime: gen_qdatetime.QDateTime)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDateTimeEdit_connect_dateTimeChanged(self.h, cast[int](addr tmp[]))
proc timeChanged*(self: QDateTimeEdit, time: gen_qdatetime.QTime): void =

  fcQDateTimeEdit_timeChanged(self.h, time.h)

proc miqt_exec_callback_QDateTimeEdit_timeChanged(slot: int, time: pointer) {.exportc.} =
  type Cb = proc(time: gen_qdatetime.QTime)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qdatetime.QTime(h: time)


  nimfunc[](slotval1)

proc ontimeChanged*(self: QDateTimeEdit, slot: proc(time: gen_qdatetime.QTime)) =
  type Cb = proc(time: gen_qdatetime.QTime)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDateTimeEdit_connect_timeChanged(self.h, cast[int](addr tmp[]))
proc dateChanged*(self: QDateTimeEdit, date: gen_qdatetime.QDate): void =

  fcQDateTimeEdit_dateChanged(self.h, date.h)

proc miqt_exec_callback_QDateTimeEdit_dateChanged(slot: int, date: pointer) {.exportc.} =
  type Cb = proc(date: gen_qdatetime.QDate)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qdatetime.QDate(h: date)


  nimfunc[](slotval1)

proc ondateChanged*(self: QDateTimeEdit, slot: proc(date: gen_qdatetime.QDate)) =
  type Cb = proc(date: gen_qdatetime.QDate)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDateTimeEdit_connect_dateChanged(self.h, cast[int](addr tmp[]))
proc setDateTime*(self: QDateTimeEdit, dateTime: gen_qdatetime.QDateTime): void =

  fcQDateTimeEdit_setDateTime(self.h, dateTime.h)

proc setDate*(self: QDateTimeEdit, date: gen_qdatetime.QDate): void =

  fcQDateTimeEdit_setDate(self.h, date.h)

proc setTime*(self: QDateTimeEdit, time: gen_qdatetime.QTime): void =

  fcQDateTimeEdit_setTime(self.h, time.h)

proc tr2*(_: type QDateTimeEdit, s: cstring, c: cstring): string =

  let v_ms = fcQDateTimeEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDateTimeEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDateTimeEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QDateTimeEdit, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQDateTimeEdit_virtualbase_metaObject(self.h))

type QDateTimeEditmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_metaObject(self: ptr cQDateTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_metaObject ".} =
  type Cb = proc(super: QDateTimeEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QDateTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QDateTimeEdit, param1: cstring): pointer =


  fQDateTimeEdit_virtualbase_metacast(self.h, param1)

type QDateTimeEditmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_metacast(self: ptr cQDateTimeEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_metacast ".} =
  type Cb = proc(super: QDateTimeEditmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QDateTimeEdit(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QDateTimeEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDateTimeEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDateTimeEditmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_metacall(self: ptr cQDateTimeEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_metacall ".} =
  type Cb = proc(super: QDateTimeEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDateTimeEdit(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QDateTimeEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDateTimeEdit_virtualbase_sizeHint(self.h))

type QDateTimeEditsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_sizeHint(self: ptr cQDateTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_sizeHint ".} =
  type Cb = proc(super: QDateTimeEditsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QDateTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_clear(self: QDateTimeEdit, ): void =


  fQDateTimeEdit_virtualbase_clear(self.h)

type QDateTimeEditclearBase* = proc(): void
proc onclear*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_clear(self: ptr cQDateTimeEdit, slot: int): void {.exportc: "miqt_exec_callback_QDateTimeEdit_clear ".} =
  type Cb = proc(super: QDateTimeEditclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QDateTimeEdit(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_stepBy(self: QDateTimeEdit, steps: cint): void =


  fQDateTimeEdit_virtualbase_stepBy(self.h, steps)

type QDateTimeEditstepByBase* = proc(steps: cint): void
proc onstepBy*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditstepByBase, steps: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditstepByBase, steps: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_stepBy(self: ptr cQDateTimeEdit, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QDateTimeEdit_stepBy ".} =
  type Cb = proc(super: QDateTimeEditstepByBase, steps: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(steps: cint): auto =
    callVirtualBase_stepBy(QDateTimeEdit(h: self), steps)
  let slotval1 = steps


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QDateTimeEdit, event: gen_qcoreevent.QEvent): bool =


  fQDateTimeEdit_virtualbase_event(self.h, event.h)

type QDateTimeEditeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_event(self: ptr cQDateTimeEdit, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_event ".} =
  type Cb = proc(super: QDateTimeEditeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QDateTimeEdit, event: gen_qevent.QKeyEvent): void =


  fQDateTimeEdit_virtualbase_keyPressEvent(self.h, event.h)

type QDateTimeEditkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_keyPressEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_keyPressEvent ".} =
  type Cb = proc(super: QDateTimeEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QDateTimeEdit, event: gen_qevent.QWheelEvent): void =


  fQDateTimeEdit_virtualbase_wheelEvent(self.h, event.h)

type QDateTimeEditwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_wheelEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_wheelEvent ".} =
  type Cb = proc(super: QDateTimeEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QDateTimeEdit, event: gen_qevent.QFocusEvent): void =


  fQDateTimeEdit_virtualbase_focusInEvent(self.h, event.h)

type QDateTimeEditfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_focusInEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_focusInEvent ".} =
  type Cb = proc(super: QDateTimeEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QDateTimeEdit, next: bool): bool =


  fQDateTimeEdit_virtualbase_focusNextPrevChild(self.h, next)

type QDateTimeEditfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_focusNextPrevChild(self: ptr cQDateTimeEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_focusNextPrevChild ".} =
  type Cb = proc(super: QDateTimeEditfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QDateTimeEdit(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_validate(self: QDateTimeEdit, input: string, pos: ptr cint): gen_qvalidator.QValidatorState =


  gen_qvalidator.QValidatorState(fQDateTimeEdit_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QDateTimeEditvalidateBase* = proc(input: string, pos: ptr cint): gen_qvalidator.QValidatorState
proc onvalidate*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_validate(self: ptr cQDateTimeEdit, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_validate ".} =
  type Cb = proc(super: QDateTimeEditvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string, pos: ptr cint): auto =
    callVirtualBase_validate(QDateTimeEdit(h: self), input, pos)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_fixup(self: QDateTimeEdit, input: string): void =


  fQDateTimeEdit_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QDateTimeEditfixupBase* = proc(input: string): void
proc onfixup*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditfixupBase, input: string): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditfixupBase, input: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_fixup(self: ptr cQDateTimeEdit, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QDateTimeEdit_fixup ".} =
  type Cb = proc(super: QDateTimeEditfixupBase, input: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string): auto =
    callVirtualBase_fixup(QDateTimeEdit(h: self), input)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dateTimeFromText(self: QDateTimeEdit, text: string): gen_qdatetime.QDateTime =


  gen_qdatetime.QDateTime(h: fQDateTimeEdit_virtualbase_dateTimeFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QDateTimeEditdateTimeFromTextBase* = proc(text: string): gen_qdatetime.QDateTime
proc ondateTimeFromText*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditdateTimeFromTextBase, text: string): gen_qdatetime.QDateTime) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditdateTimeFromTextBase, text: string): gen_qdatetime.QDateTime
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dateTimeFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dateTimeFromText(self: ptr cQDateTimeEdit, slot: int, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_dateTimeFromText ".} =
  type Cb = proc(super: QDateTimeEditdateTimeFromTextBase, text: string): gen_qdatetime.QDateTime
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string): auto =
    callVirtualBase_dateTimeFromText(QDateTimeEdit(h: self), text)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_textFromDateTime(self: QDateTimeEdit, dt: gen_qdatetime.QDateTime): string =


  let v_ms = fQDateTimeEdit_virtualbase_textFromDateTime(self.h, dt.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDateTimeEdittextFromDateTimeBase* = proc(dt: gen_qdatetime.QDateTime): string
proc ontextFromDateTime*(self: QDateTimeEdit, slot: proc(super: QDateTimeEdittextFromDateTimeBase, dt: gen_qdatetime.QDateTime): string) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEdittextFromDateTimeBase, dt: gen_qdatetime.QDateTime): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_textFromDateTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_textFromDateTime(self: ptr cQDateTimeEdit, slot: int, dt: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QDateTimeEdit_textFromDateTime ".} =
  type Cb = proc(super: QDateTimeEdittextFromDateTimeBase, dt: gen_qdatetime.QDateTime): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dt: gen_qdatetime.QDateTime): auto =
    callVirtualBase_textFromDateTime(QDateTimeEdit(h: self), dt)
  let slotval1 = gen_qdatetime.QDateTime(h: dt)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_stepEnabled(self: QDateTimeEdit, ): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag =


  gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag(fQDateTimeEdit_virtualbase_stepEnabled(self.h))

type QDateTimeEditstepEnabledBase* = proc(): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
proc onstepEnabled*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_stepEnabled(self: ptr cQDateTimeEdit, slot: int): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_stepEnabled ".} =
  type Cb = proc(super: QDateTimeEditstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_stepEnabled(QDateTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_mousePressEvent(self: QDateTimeEdit, event: gen_qevent.QMouseEvent): void =


  fQDateTimeEdit_virtualbase_mousePressEvent(self.h, event.h)

type QDateTimeEditmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_mousePressEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_mousePressEvent ".} =
  type Cb = proc(super: QDateTimeEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QDateTimeEdit, event: gen_qevent.QPaintEvent): void =


  fQDateTimeEdit_virtualbase_paintEvent(self.h, event.h)

type QDateTimeEditpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_paintEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_paintEvent ".} =
  type Cb = proc(super: QDateTimeEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QDateTimeEdit, option: gen_qstyleoption.QStyleOptionSpinBox): void =


  fQDateTimeEdit_virtualbase_initStyleOption(self.h, option.h)

type QDateTimeEditinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_initStyleOption(self: ptr cQDateTimeEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_initStyleOption ".} =
  type Cb = proc(super: QDateTimeEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionSpinBox): auto =
    callVirtualBase_initStyleOption(QDateTimeEdit(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionSpinBox(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QDateTimeEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDateTimeEdit_virtualbase_minimumSizeHint(self.h))

type QDateTimeEditminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_minimumSizeHint(self: ptr cQDateTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_minimumSizeHint ".} =
  type Cb = proc(super: QDateTimeEditminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QDateTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QDateTimeEdit, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDateTimeEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDateTimeEditinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_inputMethodQuery(self: ptr cQDateTimeEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_inputMethodQuery ".} =
  type Cb = proc(super: QDateTimeEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QDateTimeEdit(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_resizeEvent(self: QDateTimeEdit, event: gen_qevent.QResizeEvent): void =


  fQDateTimeEdit_virtualbase_resizeEvent(self.h, event.h)

type QDateTimeEditresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_resizeEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_resizeEvent ".} =
  type Cb = proc(super: QDateTimeEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QDateTimeEdit, event: gen_qevent.QKeyEvent): void =


  fQDateTimeEdit_virtualbase_keyReleaseEvent(self.h, event.h)

type QDateTimeEditkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_keyReleaseEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_keyReleaseEvent ".} =
  type Cb = proc(super: QDateTimeEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QDateTimeEdit, event: gen_qevent.QFocusEvent): void =


  fQDateTimeEdit_virtualbase_focusOutEvent(self.h, event.h)

type QDateTimeEditfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_focusOutEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_focusOutEvent ".} =
  type Cb = proc(super: QDateTimeEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QDateTimeEdit, event: gen_qevent.QContextMenuEvent): void =


  fQDateTimeEdit_virtualbase_contextMenuEvent(self.h, event.h)

type QDateTimeEditcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_contextMenuEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_contextMenuEvent ".} =
  type Cb = proc(super: QDateTimeEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QDateTimeEdit, event: gen_qcoreevent.QEvent): void =


  fQDateTimeEdit_virtualbase_changeEvent(self.h, event.h)

type QDateTimeEditchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_changeEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_changeEvent ".} =
  type Cb = proc(super: QDateTimeEditchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QDateTimeEdit, event: gen_qevent.QCloseEvent): void =


  fQDateTimeEdit_virtualbase_closeEvent(self.h, event.h)

type QDateTimeEditcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_closeEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_closeEvent ".} =
  type Cb = proc(super: QDateTimeEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QDateTimeEdit, event: gen_qevent.QHideEvent): void =


  fQDateTimeEdit_virtualbase_hideEvent(self.h, event.h)

type QDateTimeEdithideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEdithideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEdithideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_hideEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_hideEvent ".} =
  type Cb = proc(super: QDateTimeEdithideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QDateTimeEdit, event: gen_qevent.QMouseEvent): void =


  fQDateTimeEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDateTimeEditmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_mouseReleaseEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_mouseReleaseEvent ".} =
  type Cb = proc(super: QDateTimeEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QDateTimeEdit, event: gen_qevent.QMouseEvent): void =


  fQDateTimeEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type QDateTimeEditmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_mouseMoveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_mouseMoveEvent ".} =
  type Cb = proc(super: QDateTimeEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QDateTimeEdit, event: gen_qcoreevent.QTimerEvent): void =


  fQDateTimeEdit_virtualbase_timerEvent(self.h, event.h)

type QDateTimeEdittimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_timerEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_timerEvent ".} =
  type Cb = proc(super: QDateTimeEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QDateTimeEdit, event: gen_qevent.QShowEvent): void =


  fQDateTimeEdit_virtualbase_showEvent(self.h, event.h)

type QDateTimeEditshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_showEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_showEvent ".} =
  type Cb = proc(super: QDateTimeEditshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QDateTimeEdit, ): cint =


  fQDateTimeEdit_virtualbase_devType(self.h)

type QDateTimeEditdevTypeBase* = proc(): cint
proc ondevType*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_devType(self: ptr cQDateTimeEdit, slot: int): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_devType ".} =
  type Cb = proc(super: QDateTimeEditdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QDateTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QDateTimeEdit, visible: bool): void =


  fQDateTimeEdit_virtualbase_setVisible(self.h, visible)

type QDateTimeEditsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_setVisible(self: ptr cQDateTimeEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDateTimeEdit_setVisible ".} =
  type Cb = proc(super: QDateTimeEditsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QDateTimeEdit(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QDateTimeEdit, param1: cint): cint =


  fQDateTimeEdit_virtualbase_heightForWidth(self.h, param1)

type QDateTimeEditheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_heightForWidth(self: ptr cQDateTimeEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_heightForWidth ".} =
  type Cb = proc(super: QDateTimeEditheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QDateTimeEdit(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QDateTimeEdit, ): bool =


  fQDateTimeEdit_virtualbase_hasHeightForWidth(self.h)

type QDateTimeEdithasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QDateTimeEdit, slot: proc(super: QDateTimeEdithasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEdithasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_hasHeightForWidth(self: ptr cQDateTimeEdit, slot: int): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_hasHeightForWidth ".} =
  type Cb = proc(super: QDateTimeEdithasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QDateTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QDateTimeEdit, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQDateTimeEdit_virtualbase_paintEngine(self.h))

type QDateTimeEditpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_paintEngine(self: ptr cQDateTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_paintEngine ".} =
  type Cb = proc(super: QDateTimeEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QDateTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QDateTimeEdit, event: gen_qevent.QMouseEvent): void =


  fQDateTimeEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDateTimeEditmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_mouseDoubleClickEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QDateTimeEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QDateTimeEdit, event: gen_qevent.QEnterEvent): void =


  fQDateTimeEdit_virtualbase_enterEvent(self.h, event.h)

type QDateTimeEditenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_enterEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_enterEvent ".} =
  type Cb = proc(super: QDateTimeEditenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QDateTimeEdit, event: gen_qcoreevent.QEvent): void =


  fQDateTimeEdit_virtualbase_leaveEvent(self.h, event.h)

type QDateTimeEditleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_leaveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_leaveEvent ".} =
  type Cb = proc(super: QDateTimeEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QDateTimeEdit, event: gen_qevent.QMoveEvent): void =


  fQDateTimeEdit_virtualbase_moveEvent(self.h, event.h)

type QDateTimeEditmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_moveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_moveEvent ".} =
  type Cb = proc(super: QDateTimeEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QDateTimeEdit, event: gen_qevent.QTabletEvent): void =


  fQDateTimeEdit_virtualbase_tabletEvent(self.h, event.h)

type QDateTimeEdittabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEdittabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_tabletEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_tabletEvent ".} =
  type Cb = proc(super: QDateTimeEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QDateTimeEdit, event: gen_qevent.QActionEvent): void =


  fQDateTimeEdit_virtualbase_actionEvent(self.h, event.h)

type QDateTimeEditactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_actionEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_actionEvent ".} =
  type Cb = proc(super: QDateTimeEditactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QDateTimeEdit, event: gen_qevent.QDragEnterEvent): void =


  fQDateTimeEdit_virtualbase_dragEnterEvent(self.h, event.h)

type QDateTimeEditdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dragEnterEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_dragEnterEvent ".} =
  type Cb = proc(super: QDateTimeEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QDateTimeEdit, event: gen_qevent.QDragMoveEvent): void =


  fQDateTimeEdit_virtualbase_dragMoveEvent(self.h, event.h)

type QDateTimeEditdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dragMoveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_dragMoveEvent ".} =
  type Cb = proc(super: QDateTimeEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QDateTimeEdit, event: gen_qevent.QDragLeaveEvent): void =


  fQDateTimeEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type QDateTimeEditdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dragLeaveEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_dragLeaveEvent ".} =
  type Cb = proc(super: QDateTimeEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QDateTimeEdit, event: gen_qevent.QDropEvent): void =


  fQDateTimeEdit_virtualbase_dropEvent(self.h, event.h)

type QDateTimeEditdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_dropEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_dropEvent ".} =
  type Cb = proc(super: QDateTimeEditdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QDateTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQDateTimeEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDateTimeEditnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_nativeEvent(self: ptr cQDateTimeEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_nativeEvent ".} =
  type Cb = proc(super: QDateTimeEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QDateTimeEdit(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QDateTimeEdit, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQDateTimeEdit_virtualbase_metric(self.h, cint(param1))

type QDateTimeEditmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_metric(self: ptr cQDateTimeEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDateTimeEdit_metric ".} =
  type Cb = proc(super: QDateTimeEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QDateTimeEdit(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QDateTimeEdit, painter: gen_qpainter.QPainter): void =


  fQDateTimeEdit_virtualbase_initPainter(self.h, painter.h)

type QDateTimeEditinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_initPainter(self: ptr cQDateTimeEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_initPainter ".} =
  type Cb = proc(super: QDateTimeEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QDateTimeEdit(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QDateTimeEdit, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQDateTimeEdit_virtualbase_redirected(self.h, offset.h))

type QDateTimeEditredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_redirected(self: ptr cQDateTimeEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_redirected ".} =
  type Cb = proc(super: QDateTimeEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QDateTimeEdit(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QDateTimeEdit, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQDateTimeEdit_virtualbase_sharedPainter(self.h))

type QDateTimeEditsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_sharedPainter(self: ptr cQDateTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateTimeEdit_sharedPainter ".} =
  type Cb = proc(super: QDateTimeEditsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QDateTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QDateTimeEdit, param1: gen_qevent.QInputMethodEvent): void =


  fQDateTimeEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QDateTimeEditinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_inputMethodEvent(self: ptr cQDateTimeEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_inputMethodEvent ".} =
  type Cb = proc(super: QDateTimeEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QDateTimeEdit(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QDateTimeEdit, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDateTimeEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDateTimeEditeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_eventFilter(self: ptr cQDateTimeEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDateTimeEdit_eventFilter ".} =
  type Cb = proc(super: QDateTimeEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDateTimeEdit(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QDateTimeEdit, event: gen_qcoreevent.QChildEvent): void =


  fQDateTimeEdit_virtualbase_childEvent(self.h, event.h)

type QDateTimeEditchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_childEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_childEvent ".} =
  type Cb = proc(super: QDateTimeEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDateTimeEdit, event: gen_qcoreevent.QEvent): void =


  fQDateTimeEdit_virtualbase_customEvent(self.h, event.h)

type QDateTimeEditcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_customEvent(self: ptr cQDateTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_customEvent ".} =
  type Cb = proc(super: QDateTimeEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDateTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDateTimeEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQDateTimeEdit_virtualbase_connectNotify(self.h, signal.h)

type QDateTimeEditconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_connectNotify(self: ptr cQDateTimeEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_connectNotify ".} =
  type Cb = proc(super: QDateTimeEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDateTimeEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDateTimeEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQDateTimeEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QDateTimeEditdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDateTimeEdit, slot: proc(super: QDateTimeEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDateTimeEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateTimeEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateTimeEdit_disconnectNotify(self: ptr cQDateTimeEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDateTimeEdit_disconnectNotify ".} =
  type Cb = proc(super: QDateTimeEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDateTimeEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDateTimeEdit): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDateTimeEdit_staticMetaObject())
proc delete*(self: QDateTimeEdit) =
  fcQDateTimeEdit_delete(self.h)

func init*(T: type QTimeEdit, h: ptr cQTimeEdit): QTimeEdit =
  T(h: h)
proc create*(T: type QTimeEdit, parent: gen_qwidget.QWidget): QTimeEdit =

  QTimeEdit.init(fcQTimeEdit_new(parent.h))
proc create*(T: type QTimeEdit, ): QTimeEdit =

  QTimeEdit.init(fcQTimeEdit_new2())
proc create2*(T: type QTimeEdit, time: gen_qdatetime.QTime): QTimeEdit =

  QTimeEdit.init(fcQTimeEdit_new3(time.h))
proc create*(T: type QTimeEdit, time: gen_qdatetime.QTime, parent: gen_qwidget.QWidget): QTimeEdit =

  QTimeEdit.init(fcQTimeEdit_new4(time.h, parent.h))
proc metaObject*(self: QTimeEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTimeEdit_metaObject(self.h))

proc metacast*(self: QTimeEdit, param1: cstring): pointer =

  fcQTimeEdit_metacast(self.h, param1)

proc metacall*(self: QTimeEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTimeEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTimeEdit, s: cstring): string =

  let v_ms = fcQTimeEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc userTimeChanged*(self: QTimeEdit, time: gen_qdatetime.QTime): void =

  fcQTimeEdit_userTimeChanged(self.h, time.h)

proc miqt_exec_callback_QTimeEdit_userTimeChanged(slot: int, time: pointer) {.exportc.} =
  type Cb = proc(time: gen_qdatetime.QTime)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qdatetime.QTime(h: time)


  nimfunc[](slotval1)

proc onuserTimeChanged*(self: QTimeEdit, slot: proc(time: gen_qdatetime.QTime)) =
  type Cb = proc(time: gen_qdatetime.QTime)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTimeEdit_connect_userTimeChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QTimeEdit, s: cstring, c: cstring): string =

  let v_ms = fcQTimeEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTimeEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTimeEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QTimeEdit, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTimeEdit_virtualbase_metaObject(self.h))

type QTimeEditmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTimeEdit, slot: proc(super: QTimeEditmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_metaObject(self: ptr cQTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTimeEdit_metaObject ".} =
  type Cb = proc(super: QTimeEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTimeEdit, param1: cstring): pointer =


  fQTimeEdit_virtualbase_metacast(self.h, param1)

type QTimeEditmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTimeEdit, slot: proc(super: QTimeEditmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_metacast(self: ptr cQTimeEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTimeEdit_metacast ".} =
  type Cb = proc(super: QTimeEditmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTimeEdit(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTimeEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTimeEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTimeEditmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTimeEdit, slot: proc(super: QTimeEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_metacall(self: ptr cQTimeEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTimeEdit_metacall ".} =
  type Cb = proc(super: QTimeEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTimeEdit(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QTimeEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTimeEdit_virtualbase_sizeHint(self.h))

type QTimeEditsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QTimeEdit, slot: proc(super: QTimeEditsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_sizeHint(self: ptr cQTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTimeEdit_sizeHint ".} =
  type Cb = proc(super: QTimeEditsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_clear(self: QTimeEdit, ): void =


  fQTimeEdit_virtualbase_clear(self.h)

type QTimeEditclearBase* = proc(): void
proc onclear*(self: QTimeEdit, slot: proc(super: QTimeEditclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_clear(self: ptr cQTimeEdit, slot: int): void {.exportc: "miqt_exec_callback_QTimeEdit_clear ".} =
  type Cb = proc(super: QTimeEditclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QTimeEdit(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_stepBy(self: QTimeEdit, steps: cint): void =


  fQTimeEdit_virtualbase_stepBy(self.h, steps)

type QTimeEditstepByBase* = proc(steps: cint): void
proc onstepBy*(self: QTimeEdit, slot: proc(super: QTimeEditstepByBase, steps: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditstepByBase, steps: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_stepBy(self: ptr cQTimeEdit, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QTimeEdit_stepBy ".} =
  type Cb = proc(super: QTimeEditstepByBase, steps: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(steps: cint): auto =
    callVirtualBase_stepBy(QTimeEdit(h: self), steps)
  let slotval1 = steps


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QTimeEdit, event: gen_qcoreevent.QEvent): bool =


  fQTimeEdit_virtualbase_event(self.h, event.h)

type QTimeEditeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTimeEdit, slot: proc(super: QTimeEditeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_event(self: ptr cQTimeEdit, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTimeEdit_event ".} =
  type Cb = proc(super: QTimeEditeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QTimeEdit, event: gen_qevent.QKeyEvent): void =


  fQTimeEdit_virtualbase_keyPressEvent(self.h, event.h)

type QTimeEditkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QTimeEdit, slot: proc(super: QTimeEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_keyPressEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_keyPressEvent ".} =
  type Cb = proc(super: QTimeEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QTimeEdit, event: gen_qevent.QWheelEvent): void =


  fQTimeEdit_virtualbase_wheelEvent(self.h, event.h)

type QTimeEditwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QTimeEdit, slot: proc(super: QTimeEditwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_wheelEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_wheelEvent ".} =
  type Cb = proc(super: QTimeEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QTimeEdit, event: gen_qevent.QFocusEvent): void =


  fQTimeEdit_virtualbase_focusInEvent(self.h, event.h)

type QTimeEditfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QTimeEdit, slot: proc(super: QTimeEditfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_focusInEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_focusInEvent ".} =
  type Cb = proc(super: QTimeEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QTimeEdit, next: bool): bool =


  fQTimeEdit_virtualbase_focusNextPrevChild(self.h, next)

type QTimeEditfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QTimeEdit, slot: proc(super: QTimeEditfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_focusNextPrevChild(self: ptr cQTimeEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTimeEdit_focusNextPrevChild ".} =
  type Cb = proc(super: QTimeEditfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QTimeEdit(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_validate(self: QTimeEdit, input: string, pos: ptr cint): gen_qvalidator.QValidatorState =


  gen_qvalidator.QValidatorState(fQTimeEdit_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QTimeEditvalidateBase* = proc(input: string, pos: ptr cint): gen_qvalidator.QValidatorState
proc onvalidate*(self: QTimeEdit, slot: proc(super: QTimeEditvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_validate(self: ptr cQTimeEdit, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QTimeEdit_validate ".} =
  type Cb = proc(super: QTimeEditvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string, pos: ptr cint): auto =
    callVirtualBase_validate(QTimeEdit(h: self), input, pos)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_fixup(self: QTimeEdit, input: string): void =


  fQTimeEdit_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QTimeEditfixupBase* = proc(input: string): void
proc onfixup*(self: QTimeEdit, slot: proc(super: QTimeEditfixupBase, input: string): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditfixupBase, input: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_fixup(self: ptr cQTimeEdit, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTimeEdit_fixup ".} =
  type Cb = proc(super: QTimeEditfixupBase, input: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string): auto =
    callVirtualBase_fixup(QTimeEdit(h: self), input)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dateTimeFromText(self: QTimeEdit, text: string): gen_qdatetime.QDateTime =


  gen_qdatetime.QDateTime(h: fQTimeEdit_virtualbase_dateTimeFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QTimeEditdateTimeFromTextBase* = proc(text: string): gen_qdatetime.QDateTime
proc ondateTimeFromText*(self: QTimeEdit, slot: proc(super: QTimeEditdateTimeFromTextBase, text: string): gen_qdatetime.QDateTime) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditdateTimeFromTextBase, text: string): gen_qdatetime.QDateTime
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dateTimeFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dateTimeFromText(self: ptr cQTimeEdit, slot: int, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QTimeEdit_dateTimeFromText ".} =
  type Cb = proc(super: QTimeEditdateTimeFromTextBase, text: string): gen_qdatetime.QDateTime
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string): auto =
    callVirtualBase_dateTimeFromText(QTimeEdit(h: self), text)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_textFromDateTime(self: QTimeEdit, dt: gen_qdatetime.QDateTime): string =


  let v_ms = fQTimeEdit_virtualbase_textFromDateTime(self.h, dt.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTimeEdittextFromDateTimeBase* = proc(dt: gen_qdatetime.QDateTime): string
proc ontextFromDateTime*(self: QTimeEdit, slot: proc(super: QTimeEdittextFromDateTimeBase, dt: gen_qdatetime.QDateTime): string) =
  # TODO check subclass
  type Cb = proc(super: QTimeEdittextFromDateTimeBase, dt: gen_qdatetime.QDateTime): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_textFromDateTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_textFromDateTime(self: ptr cQTimeEdit, slot: int, dt: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QTimeEdit_textFromDateTime ".} =
  type Cb = proc(super: QTimeEdittextFromDateTimeBase, dt: gen_qdatetime.QDateTime): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dt: gen_qdatetime.QDateTime): auto =
    callVirtualBase_textFromDateTime(QTimeEdit(h: self), dt)
  let slotval1 = gen_qdatetime.QDateTime(h: dt)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_stepEnabled(self: QTimeEdit, ): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag =


  gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag(fQTimeEdit_virtualbase_stepEnabled(self.h))

type QTimeEditstepEnabledBase* = proc(): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
proc onstepEnabled*(self: QTimeEdit, slot: proc(super: QTimeEditstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_stepEnabled(self: ptr cQTimeEdit, slot: int): cint {.exportc: "miqt_exec_callback_QTimeEdit_stepEnabled ".} =
  type Cb = proc(super: QTimeEditstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_stepEnabled(QTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_mousePressEvent(self: QTimeEdit, event: gen_qevent.QMouseEvent): void =


  fQTimeEdit_virtualbase_mousePressEvent(self.h, event.h)

type QTimeEditmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QTimeEdit, slot: proc(super: QTimeEditmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_mousePressEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_mousePressEvent ".} =
  type Cb = proc(super: QTimeEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QTimeEdit, event: gen_qevent.QPaintEvent): void =


  fQTimeEdit_virtualbase_paintEvent(self.h, event.h)

type QTimeEditpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QTimeEdit, slot: proc(super: QTimeEditpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_paintEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_paintEvent ".} =
  type Cb = proc(super: QTimeEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QTimeEdit, option: gen_qstyleoption.QStyleOptionSpinBox): void =


  fQTimeEdit_virtualbase_initStyleOption(self.h, option.h)

type QTimeEditinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: QTimeEdit, slot: proc(super: QTimeEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_initStyleOption(self: ptr cQTimeEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_initStyleOption ".} =
  type Cb = proc(super: QTimeEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionSpinBox): auto =
    callVirtualBase_initStyleOption(QTimeEdit(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionSpinBox(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QTimeEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTimeEdit_virtualbase_minimumSizeHint(self.h))

type QTimeEditminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QTimeEdit, slot: proc(super: QTimeEditminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_minimumSizeHint(self: ptr cQTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTimeEdit_minimumSizeHint ".} =
  type Cb = proc(super: QTimeEditminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QTimeEdit, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTimeEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QTimeEditinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QTimeEdit, slot: proc(super: QTimeEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_inputMethodQuery(self: ptr cQTimeEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QTimeEdit_inputMethodQuery ".} =
  type Cb = proc(super: QTimeEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QTimeEdit(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_resizeEvent(self: QTimeEdit, event: gen_qevent.QResizeEvent): void =


  fQTimeEdit_virtualbase_resizeEvent(self.h, event.h)

type QTimeEditresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QTimeEdit, slot: proc(super: QTimeEditresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_resizeEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_resizeEvent ".} =
  type Cb = proc(super: QTimeEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QTimeEdit, event: gen_qevent.QKeyEvent): void =


  fQTimeEdit_virtualbase_keyReleaseEvent(self.h, event.h)

type QTimeEditkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QTimeEdit, slot: proc(super: QTimeEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_keyReleaseEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_keyReleaseEvent ".} =
  type Cb = proc(super: QTimeEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QTimeEdit, event: gen_qevent.QFocusEvent): void =


  fQTimeEdit_virtualbase_focusOutEvent(self.h, event.h)

type QTimeEditfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QTimeEdit, slot: proc(super: QTimeEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_focusOutEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_focusOutEvent ".} =
  type Cb = proc(super: QTimeEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QTimeEdit, event: gen_qevent.QContextMenuEvent): void =


  fQTimeEdit_virtualbase_contextMenuEvent(self.h, event.h)

type QTimeEditcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QTimeEdit, slot: proc(super: QTimeEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_contextMenuEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_contextMenuEvent ".} =
  type Cb = proc(super: QTimeEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QTimeEdit, event: gen_qcoreevent.QEvent): void =


  fQTimeEdit_virtualbase_changeEvent(self.h, event.h)

type QTimeEditchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QTimeEdit, slot: proc(super: QTimeEditchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_changeEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_changeEvent ".} =
  type Cb = proc(super: QTimeEditchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QTimeEdit, event: gen_qevent.QCloseEvent): void =


  fQTimeEdit_virtualbase_closeEvent(self.h, event.h)

type QTimeEditcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QTimeEdit, slot: proc(super: QTimeEditcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_closeEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_closeEvent ".} =
  type Cb = proc(super: QTimeEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QTimeEdit, event: gen_qevent.QHideEvent): void =


  fQTimeEdit_virtualbase_hideEvent(self.h, event.h)

type QTimeEdithideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QTimeEdit, slot: proc(super: QTimeEdithideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEdithideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_hideEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_hideEvent ".} =
  type Cb = proc(super: QTimeEdithideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QTimeEdit, event: gen_qevent.QMouseEvent): void =


  fQTimeEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTimeEditmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QTimeEdit, slot: proc(super: QTimeEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_mouseReleaseEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_mouseReleaseEvent ".} =
  type Cb = proc(super: QTimeEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QTimeEdit, event: gen_qevent.QMouseEvent): void =


  fQTimeEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type QTimeEditmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QTimeEdit, slot: proc(super: QTimeEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_mouseMoveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_mouseMoveEvent ".} =
  type Cb = proc(super: QTimeEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QTimeEdit, event: gen_qcoreevent.QTimerEvent): void =


  fQTimeEdit_virtualbase_timerEvent(self.h, event.h)

type QTimeEdittimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTimeEdit, slot: proc(super: QTimeEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_timerEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_timerEvent ".} =
  type Cb = proc(super: QTimeEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QTimeEdit, event: gen_qevent.QShowEvent): void =


  fQTimeEdit_virtualbase_showEvent(self.h, event.h)

type QTimeEditshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QTimeEdit, slot: proc(super: QTimeEditshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_showEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_showEvent ".} =
  type Cb = proc(super: QTimeEditshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QTimeEdit, ): cint =


  fQTimeEdit_virtualbase_devType(self.h)

type QTimeEditdevTypeBase* = proc(): cint
proc ondevType*(self: QTimeEdit, slot: proc(super: QTimeEditdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_devType(self: ptr cQTimeEdit, slot: int): cint {.exportc: "miqt_exec_callback_QTimeEdit_devType ".} =
  type Cb = proc(super: QTimeEditdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QTimeEdit, visible: bool): void =


  fQTimeEdit_virtualbase_setVisible(self.h, visible)

type QTimeEditsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QTimeEdit, slot: proc(super: QTimeEditsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_setVisible(self: ptr cQTimeEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTimeEdit_setVisible ".} =
  type Cb = proc(super: QTimeEditsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QTimeEdit(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QTimeEdit, param1: cint): cint =


  fQTimeEdit_virtualbase_heightForWidth(self.h, param1)

type QTimeEditheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QTimeEdit, slot: proc(super: QTimeEditheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_heightForWidth(self: ptr cQTimeEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTimeEdit_heightForWidth ".} =
  type Cb = proc(super: QTimeEditheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QTimeEdit(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QTimeEdit, ): bool =


  fQTimeEdit_virtualbase_hasHeightForWidth(self.h)

type QTimeEdithasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QTimeEdit, slot: proc(super: QTimeEdithasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTimeEdithasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_hasHeightForWidth(self: ptr cQTimeEdit, slot: int): bool {.exportc: "miqt_exec_callback_QTimeEdit_hasHeightForWidth ".} =
  type Cb = proc(super: QTimeEdithasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QTimeEdit, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQTimeEdit_virtualbase_paintEngine(self.h))

type QTimeEditpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QTimeEdit, slot: proc(super: QTimeEditpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_paintEngine(self: ptr cQTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTimeEdit_paintEngine ".} =
  type Cb = proc(super: QTimeEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QTimeEdit, event: gen_qevent.QMouseEvent): void =


  fQTimeEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTimeEditmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QTimeEdit, slot: proc(super: QTimeEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_mouseDoubleClickEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QTimeEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QTimeEdit, event: gen_qevent.QEnterEvent): void =


  fQTimeEdit_virtualbase_enterEvent(self.h, event.h)

type QTimeEditenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QTimeEdit, slot: proc(super: QTimeEditenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_enterEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_enterEvent ".} =
  type Cb = proc(super: QTimeEditenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QTimeEdit, event: gen_qcoreevent.QEvent): void =


  fQTimeEdit_virtualbase_leaveEvent(self.h, event.h)

type QTimeEditleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QTimeEdit, slot: proc(super: QTimeEditleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_leaveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_leaveEvent ".} =
  type Cb = proc(super: QTimeEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QTimeEdit, event: gen_qevent.QMoveEvent): void =


  fQTimeEdit_virtualbase_moveEvent(self.h, event.h)

type QTimeEditmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QTimeEdit, slot: proc(super: QTimeEditmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_moveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_moveEvent ".} =
  type Cb = proc(super: QTimeEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QTimeEdit, event: gen_qevent.QTabletEvent): void =


  fQTimeEdit_virtualbase_tabletEvent(self.h, event.h)

type QTimeEdittabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QTimeEdit, slot: proc(super: QTimeEdittabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_tabletEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_tabletEvent ".} =
  type Cb = proc(super: QTimeEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QTimeEdit, event: gen_qevent.QActionEvent): void =


  fQTimeEdit_virtualbase_actionEvent(self.h, event.h)

type QTimeEditactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QTimeEdit, slot: proc(super: QTimeEditactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_actionEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_actionEvent ".} =
  type Cb = proc(super: QTimeEditactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QTimeEdit, event: gen_qevent.QDragEnterEvent): void =


  fQTimeEdit_virtualbase_dragEnterEvent(self.h, event.h)

type QTimeEditdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QTimeEdit, slot: proc(super: QTimeEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dragEnterEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_dragEnterEvent ".} =
  type Cb = proc(super: QTimeEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QTimeEdit, event: gen_qevent.QDragMoveEvent): void =


  fQTimeEdit_virtualbase_dragMoveEvent(self.h, event.h)

type QTimeEditdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QTimeEdit, slot: proc(super: QTimeEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dragMoveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_dragMoveEvent ".} =
  type Cb = proc(super: QTimeEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QTimeEdit, event: gen_qevent.QDragLeaveEvent): void =


  fQTimeEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type QTimeEditdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QTimeEdit, slot: proc(super: QTimeEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dragLeaveEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_dragLeaveEvent ".} =
  type Cb = proc(super: QTimeEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QTimeEdit, event: gen_qevent.QDropEvent): void =


  fQTimeEdit_virtualbase_dropEvent(self.h, event.h)

type QTimeEditdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QTimeEdit, slot: proc(super: QTimeEditdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_dropEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_dropEvent ".} =
  type Cb = proc(super: QTimeEditdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QTimeEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQTimeEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTimeEditnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QTimeEdit, slot: proc(super: QTimeEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_nativeEvent(self: ptr cQTimeEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTimeEdit_nativeEvent ".} =
  type Cb = proc(super: QTimeEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QTimeEdit(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QTimeEdit, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQTimeEdit_virtualbase_metric(self.h, cint(param1))

type QTimeEditmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QTimeEdit, slot: proc(super: QTimeEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_metric(self: ptr cQTimeEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTimeEdit_metric ".} =
  type Cb = proc(super: QTimeEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QTimeEdit(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QTimeEdit, painter: gen_qpainter.QPainter): void =


  fQTimeEdit_virtualbase_initPainter(self.h, painter.h)

type QTimeEditinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QTimeEdit, slot: proc(super: QTimeEditinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_initPainter(self: ptr cQTimeEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_initPainter ".} =
  type Cb = proc(super: QTimeEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QTimeEdit(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QTimeEdit, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQTimeEdit_virtualbase_redirected(self.h, offset.h))

type QTimeEditredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QTimeEdit, slot: proc(super: QTimeEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_redirected(self: ptr cQTimeEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTimeEdit_redirected ".} =
  type Cb = proc(super: QTimeEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QTimeEdit(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QTimeEdit, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQTimeEdit_virtualbase_sharedPainter(self.h))

type QTimeEditsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QTimeEdit, slot: proc(super: QTimeEditsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_sharedPainter(self: ptr cQTimeEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QTimeEdit_sharedPainter ".} =
  type Cb = proc(super: QTimeEditsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QTimeEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QTimeEdit, param1: gen_qevent.QInputMethodEvent): void =


  fQTimeEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QTimeEditinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QTimeEdit, slot: proc(super: QTimeEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_inputMethodEvent(self: ptr cQTimeEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_inputMethodEvent ".} =
  type Cb = proc(super: QTimeEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QTimeEdit(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QTimeEdit, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTimeEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTimeEditeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTimeEdit, slot: proc(super: QTimeEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_eventFilter(self: ptr cQTimeEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTimeEdit_eventFilter ".} =
  type Cb = proc(super: QTimeEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTimeEdit(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QTimeEdit, event: gen_qcoreevent.QChildEvent): void =


  fQTimeEdit_virtualbase_childEvent(self.h, event.h)

type QTimeEditchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTimeEdit, slot: proc(super: QTimeEditchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_childEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_childEvent ".} =
  type Cb = proc(super: QTimeEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTimeEdit, event: gen_qcoreevent.QEvent): void =


  fQTimeEdit_virtualbase_customEvent(self.h, event.h)

type QTimeEditcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTimeEdit, slot: proc(super: QTimeEditcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_customEvent(self: ptr cQTimeEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_customEvent ".} =
  type Cb = proc(super: QTimeEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTimeEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTimeEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQTimeEdit_virtualbase_connectNotify(self.h, signal.h)

type QTimeEditconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTimeEdit, slot: proc(super: QTimeEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_connectNotify(self: ptr cQTimeEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_connectNotify ".} =
  type Cb = proc(super: QTimeEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTimeEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTimeEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQTimeEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QTimeEditdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTimeEdit, slot: proc(super: QTimeEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeEdit_disconnectNotify(self: ptr cQTimeEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimeEdit_disconnectNotify ".} =
  type Cb = proc(super: QTimeEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTimeEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTimeEdit): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTimeEdit_staticMetaObject())
proc delete*(self: QTimeEdit) =
  fcQTimeEdit_delete(self.h)

func init*(T: type QDateEdit, h: ptr cQDateEdit): QDateEdit =
  T(h: h)
proc create*(T: type QDateEdit, parent: gen_qwidget.QWidget): QDateEdit =

  QDateEdit.init(fcQDateEdit_new(parent.h))
proc create*(T: type QDateEdit, ): QDateEdit =

  QDateEdit.init(fcQDateEdit_new2())
proc create2*(T: type QDateEdit, date: gen_qdatetime.QDate): QDateEdit =

  QDateEdit.init(fcQDateEdit_new3(date.h))
proc create*(T: type QDateEdit, date: gen_qdatetime.QDate, parent: gen_qwidget.QWidget): QDateEdit =

  QDateEdit.init(fcQDateEdit_new4(date.h, parent.h))
proc metaObject*(self: QDateEdit, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDateEdit_metaObject(self.h))

proc metacast*(self: QDateEdit, param1: cstring): pointer =

  fcQDateEdit_metacast(self.h, param1)

proc metacall*(self: QDateEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDateEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDateEdit, s: cstring): string =

  let v_ms = fcQDateEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc userDateChanged*(self: QDateEdit, date: gen_qdatetime.QDate): void =

  fcQDateEdit_userDateChanged(self.h, date.h)

proc miqt_exec_callback_QDateEdit_userDateChanged(slot: int, date: pointer) {.exportc.} =
  type Cb = proc(date: gen_qdatetime.QDate)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qdatetime.QDate(h: date)


  nimfunc[](slotval1)

proc onuserDateChanged*(self: QDateEdit, slot: proc(date: gen_qdatetime.QDate)) =
  type Cb = proc(date: gen_qdatetime.QDate)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDateEdit_connect_userDateChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDateEdit, s: cstring, c: cstring): string =

  let v_ms = fcQDateEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDateEdit, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDateEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QDateEdit, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQDateEdit_virtualbase_metaObject(self.h))

type QDateEditmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QDateEdit, slot: proc(super: QDateEditmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QDateEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_metaObject(self: ptr cQDateEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateEdit_metaObject ".} =
  type Cb = proc(super: QDateEditmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QDateEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QDateEdit, param1: cstring): pointer =


  fQDateEdit_virtualbase_metacast(self.h, param1)

type QDateEditmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QDateEdit, slot: proc(super: QDateEditmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QDateEditmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_metacast(self: ptr cQDateEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDateEdit_metacast ".} =
  type Cb = proc(super: QDateEditmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QDateEdit(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QDateEdit, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDateEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDateEditmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDateEdit, slot: proc(super: QDateEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDateEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_metacall(self: ptr cQDateEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDateEdit_metacall ".} =
  type Cb = proc(super: QDateEditmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDateEdit(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QDateEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDateEdit_virtualbase_sizeHint(self.h))

type QDateEditsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QDateEdit, slot: proc(super: QDateEditsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDateEditsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_sizeHint(self: ptr cQDateEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateEdit_sizeHint ".} =
  type Cb = proc(super: QDateEditsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QDateEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_clear(self: QDateEdit, ): void =


  fQDateEdit_virtualbase_clear(self.h)

type QDateEditclearBase* = proc(): void
proc onclear*(self: QDateEdit, slot: proc(super: QDateEditclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_clear(self: ptr cQDateEdit, slot: int): void {.exportc: "miqt_exec_callback_QDateEdit_clear ".} =
  type Cb = proc(super: QDateEditclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QDateEdit(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_stepBy(self: QDateEdit, steps: cint): void =


  fQDateEdit_virtualbase_stepBy(self.h, steps)

type QDateEditstepByBase* = proc(steps: cint): void
proc onstepBy*(self: QDateEdit, slot: proc(super: QDateEditstepByBase, steps: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditstepByBase, steps: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_stepBy(self: ptr cQDateEdit, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QDateEdit_stepBy ".} =
  type Cb = proc(super: QDateEditstepByBase, steps: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(steps: cint): auto =
    callVirtualBase_stepBy(QDateEdit(h: self), steps)
  let slotval1 = steps


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QDateEdit, event: gen_qcoreevent.QEvent): bool =


  fQDateEdit_virtualbase_event(self.h, event.h)

type QDateEditeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDateEdit, slot: proc(super: QDateEditeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateEditeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_event(self: ptr cQDateEdit, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDateEdit_event ".} =
  type Cb = proc(super: QDateEditeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDateEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QDateEdit, event: gen_qevent.QKeyEvent): void =


  fQDateEdit_virtualbase_keyPressEvent(self.h, event.h)

type QDateEditkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QDateEdit, slot: proc(super: QDateEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_keyPressEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_keyPressEvent ".} =
  type Cb = proc(super: QDateEditkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QDateEdit, event: gen_qevent.QWheelEvent): void =


  fQDateEdit_virtualbase_wheelEvent(self.h, event.h)

type QDateEditwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QDateEdit, slot: proc(super: QDateEditwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_wheelEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_wheelEvent ".} =
  type Cb = proc(super: QDateEditwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QDateEdit, event: gen_qevent.QFocusEvent): void =


  fQDateEdit_virtualbase_focusInEvent(self.h, event.h)

type QDateEditfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QDateEdit, slot: proc(super: QDateEditfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_focusInEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_focusInEvent ".} =
  type Cb = proc(super: QDateEditfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QDateEdit, next: bool): bool =


  fQDateEdit_virtualbase_focusNextPrevChild(self.h, next)

type QDateEditfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QDateEdit, slot: proc(super: QDateEditfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateEditfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_focusNextPrevChild(self: ptr cQDateEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDateEdit_focusNextPrevChild ".} =
  type Cb = proc(super: QDateEditfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QDateEdit(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_validate(self: QDateEdit, input: string, pos: ptr cint): gen_qvalidator.QValidatorState =


  gen_qvalidator.QValidatorState(fQDateEdit_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QDateEditvalidateBase* = proc(input: string, pos: ptr cint): gen_qvalidator.QValidatorState
proc onvalidate*(self: QDateEdit, slot: proc(super: QDateEditvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QDateEditvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_validate(self: ptr cQDateEdit, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QDateEdit_validate ".} =
  type Cb = proc(super: QDateEditvalidateBase, input: string, pos: ptr cint): gen_qvalidator.QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string, pos: ptr cint): auto =
    callVirtualBase_validate(QDateEdit(h: self), input, pos)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_fixup(self: QDateEdit, input: string): void =


  fQDateEdit_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QDateEditfixupBase* = proc(input: string): void
proc onfixup*(self: QDateEdit, slot: proc(super: QDateEditfixupBase, input: string): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditfixupBase, input: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_fixup(self: ptr cQDateEdit, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QDateEdit_fixup ".} =
  type Cb = proc(super: QDateEditfixupBase, input: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string): auto =
    callVirtualBase_fixup(QDateEdit(h: self), input)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dateTimeFromText(self: QDateEdit, text: string): gen_qdatetime.QDateTime =


  gen_qdatetime.QDateTime(h: fQDateEdit_virtualbase_dateTimeFromText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QDateEditdateTimeFromTextBase* = proc(text: string): gen_qdatetime.QDateTime
proc ondateTimeFromText*(self: QDateEdit, slot: proc(super: QDateEditdateTimeFromTextBase, text: string): gen_qdatetime.QDateTime) =
  # TODO check subclass
  type Cb = proc(super: QDateEditdateTimeFromTextBase, text: string): gen_qdatetime.QDateTime
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dateTimeFromText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dateTimeFromText(self: ptr cQDateEdit, slot: int, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QDateEdit_dateTimeFromText ".} =
  type Cb = proc(super: QDateEditdateTimeFromTextBase, text: string): gen_qdatetime.QDateTime
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(text: string): auto =
    callVirtualBase_dateTimeFromText(QDateEdit(h: self), text)
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_textFromDateTime(self: QDateEdit, dt: gen_qdatetime.QDateTime): string =


  let v_ms = fQDateEdit_virtualbase_textFromDateTime(self.h, dt.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDateEdittextFromDateTimeBase* = proc(dt: gen_qdatetime.QDateTime): string
proc ontextFromDateTime*(self: QDateEdit, slot: proc(super: QDateEdittextFromDateTimeBase, dt: gen_qdatetime.QDateTime): string) =
  # TODO check subclass
  type Cb = proc(super: QDateEdittextFromDateTimeBase, dt: gen_qdatetime.QDateTime): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_textFromDateTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_textFromDateTime(self: ptr cQDateEdit, slot: int, dt: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QDateEdit_textFromDateTime ".} =
  type Cb = proc(super: QDateEdittextFromDateTimeBase, dt: gen_qdatetime.QDateTime): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dt: gen_qdatetime.QDateTime): auto =
    callVirtualBase_textFromDateTime(QDateEdit(h: self), dt)
  let slotval1 = gen_qdatetime.QDateTime(h: dt)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_stepEnabled(self: QDateEdit, ): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag =


  gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag(fQDateEdit_virtualbase_stepEnabled(self.h))

type QDateEditstepEnabledBase* = proc(): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
proc onstepEnabled*(self: QDateEdit, slot: proc(super: QDateEditstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag) =
  # TODO check subclass
  type Cb = proc(super: QDateEditstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_stepEnabled(self: ptr cQDateEdit, slot: int): cint {.exportc: "miqt_exec_callback_QDateEdit_stepEnabled ".} =
  type Cb = proc(super: QDateEditstepEnabledBase): gen_qabstractspinbox.QAbstractSpinBoxStepEnabledFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_stepEnabled(QDateEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_mousePressEvent(self: QDateEdit, event: gen_qevent.QMouseEvent): void =


  fQDateEdit_virtualbase_mousePressEvent(self.h, event.h)

type QDateEditmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QDateEdit, slot: proc(super: QDateEditmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_mousePressEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_mousePressEvent ".} =
  type Cb = proc(super: QDateEditmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QDateEdit, event: gen_qevent.QPaintEvent): void =


  fQDateEdit_virtualbase_paintEvent(self.h, event.h)

type QDateEditpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QDateEdit, slot: proc(super: QDateEditpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_paintEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_paintEvent ".} =
  type Cb = proc(super: QDateEditpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QDateEdit, option: gen_qstyleoption.QStyleOptionSpinBox): void =


  fQDateEdit_virtualbase_initStyleOption(self.h, option.h)

type QDateEditinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: QDateEdit, slot: proc(super: QDateEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_initStyleOption(self: ptr cQDateEdit, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_initStyleOption ".} =
  type Cb = proc(super: QDateEditinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionSpinBox): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionSpinBox): auto =
    callVirtualBase_initStyleOption(QDateEdit(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionSpinBox(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QDateEdit, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDateEdit_virtualbase_minimumSizeHint(self.h))

type QDateEditminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QDateEdit, slot: proc(super: QDateEditminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDateEditminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_minimumSizeHint(self: ptr cQDateEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateEdit_minimumSizeHint ".} =
  type Cb = proc(super: QDateEditminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QDateEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QDateEdit, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDateEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDateEditinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QDateEdit, slot: proc(super: QDateEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDateEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_inputMethodQuery(self: ptr cQDateEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDateEdit_inputMethodQuery ".} =
  type Cb = proc(super: QDateEditinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QDateEdit(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_resizeEvent(self: QDateEdit, event: gen_qevent.QResizeEvent): void =


  fQDateEdit_virtualbase_resizeEvent(self.h, event.h)

type QDateEditresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QDateEdit, slot: proc(super: QDateEditresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_resizeEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_resizeEvent ".} =
  type Cb = proc(super: QDateEditresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QDateEdit, event: gen_qevent.QKeyEvent): void =


  fQDateEdit_virtualbase_keyReleaseEvent(self.h, event.h)

type QDateEditkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QDateEdit, slot: proc(super: QDateEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_keyReleaseEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_keyReleaseEvent ".} =
  type Cb = proc(super: QDateEditkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QDateEdit, event: gen_qevent.QFocusEvent): void =


  fQDateEdit_virtualbase_focusOutEvent(self.h, event.h)

type QDateEditfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QDateEdit, slot: proc(super: QDateEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_focusOutEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_focusOutEvent ".} =
  type Cb = proc(super: QDateEditfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QDateEdit, event: gen_qevent.QContextMenuEvent): void =


  fQDateEdit_virtualbase_contextMenuEvent(self.h, event.h)

type QDateEditcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QDateEdit, slot: proc(super: QDateEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_contextMenuEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_contextMenuEvent ".} =
  type Cb = proc(super: QDateEditcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QDateEdit, event: gen_qcoreevent.QEvent): void =


  fQDateEdit_virtualbase_changeEvent(self.h, event.h)

type QDateEditchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QDateEdit, slot: proc(super: QDateEditchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_changeEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_changeEvent ".} =
  type Cb = proc(super: QDateEditchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QDateEdit, event: gen_qevent.QCloseEvent): void =


  fQDateEdit_virtualbase_closeEvent(self.h, event.h)

type QDateEditcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QDateEdit, slot: proc(super: QDateEditcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_closeEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_closeEvent ".} =
  type Cb = proc(super: QDateEditcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QDateEdit, event: gen_qevent.QHideEvent): void =


  fQDateEdit_virtualbase_hideEvent(self.h, event.h)

type QDateEdithideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QDateEdit, slot: proc(super: QDateEdithideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEdithideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_hideEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_hideEvent ".} =
  type Cb = proc(super: QDateEdithideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QDateEdit, event: gen_qevent.QMouseEvent): void =


  fQDateEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDateEditmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QDateEdit, slot: proc(super: QDateEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_mouseReleaseEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_mouseReleaseEvent ".} =
  type Cb = proc(super: QDateEditmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QDateEdit, event: gen_qevent.QMouseEvent): void =


  fQDateEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type QDateEditmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QDateEdit, slot: proc(super: QDateEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_mouseMoveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_mouseMoveEvent ".} =
  type Cb = proc(super: QDateEditmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QDateEdit, event: gen_qcoreevent.QTimerEvent): void =


  fQDateEdit_virtualbase_timerEvent(self.h, event.h)

type QDateEdittimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDateEdit, slot: proc(super: QDateEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_timerEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_timerEvent ".} =
  type Cb = proc(super: QDateEdittimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QDateEdit, event: gen_qevent.QShowEvent): void =


  fQDateEdit_virtualbase_showEvent(self.h, event.h)

type QDateEditshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QDateEdit, slot: proc(super: QDateEditshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_showEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_showEvent ".} =
  type Cb = proc(super: QDateEditshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QDateEdit, ): cint =


  fQDateEdit_virtualbase_devType(self.h)

type QDateEditdevTypeBase* = proc(): cint
proc ondevType*(self: QDateEdit, slot: proc(super: QDateEditdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QDateEditdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_devType(self: ptr cQDateEdit, slot: int): cint {.exportc: "miqt_exec_callback_QDateEdit_devType ".} =
  type Cb = proc(super: QDateEditdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QDateEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QDateEdit, visible: bool): void =


  fQDateEdit_virtualbase_setVisible(self.h, visible)

type QDateEditsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QDateEdit, slot: proc(super: QDateEditsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_setVisible(self: ptr cQDateEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDateEdit_setVisible ".} =
  type Cb = proc(super: QDateEditsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QDateEdit(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QDateEdit, param1: cint): cint =


  fQDateEdit_virtualbase_heightForWidth(self.h, param1)

type QDateEditheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QDateEdit, slot: proc(super: QDateEditheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QDateEditheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_heightForWidth(self: ptr cQDateEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDateEdit_heightForWidth ".} =
  type Cb = proc(super: QDateEditheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QDateEdit(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QDateEdit, ): bool =


  fQDateEdit_virtualbase_hasHeightForWidth(self.h)

type QDateEdithasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QDateEdit, slot: proc(super: QDateEdithasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateEdithasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_hasHeightForWidth(self: ptr cQDateEdit, slot: int): bool {.exportc: "miqt_exec_callback_QDateEdit_hasHeightForWidth ".} =
  type Cb = proc(super: QDateEdithasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QDateEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QDateEdit, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQDateEdit_virtualbase_paintEngine(self.h))

type QDateEditpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QDateEdit, slot: proc(super: QDateEditpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QDateEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_paintEngine(self: ptr cQDateEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateEdit_paintEngine ".} =
  type Cb = proc(super: QDateEditpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QDateEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mouseDoubleClickEvent(self: QDateEdit, event: gen_qevent.QMouseEvent): void =


  fQDateEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDateEditmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QDateEdit, slot: proc(super: QDateEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_mouseDoubleClickEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QDateEditmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QDateEdit, event: gen_qevent.QEnterEvent): void =


  fQDateEdit_virtualbase_enterEvent(self.h, event.h)

type QDateEditenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QDateEdit, slot: proc(super: QDateEditenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_enterEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_enterEvent ".} =
  type Cb = proc(super: QDateEditenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QDateEdit, event: gen_qcoreevent.QEvent): void =


  fQDateEdit_virtualbase_leaveEvent(self.h, event.h)

type QDateEditleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QDateEdit, slot: proc(super: QDateEditleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_leaveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_leaveEvent ".} =
  type Cb = proc(super: QDateEditleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QDateEdit, event: gen_qevent.QMoveEvent): void =


  fQDateEdit_virtualbase_moveEvent(self.h, event.h)

type QDateEditmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QDateEdit, slot: proc(super: QDateEditmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_moveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_moveEvent ".} =
  type Cb = proc(super: QDateEditmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QDateEdit, event: gen_qevent.QTabletEvent): void =


  fQDateEdit_virtualbase_tabletEvent(self.h, event.h)

type QDateEdittabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QDateEdit, slot: proc(super: QDateEdittabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_tabletEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_tabletEvent ".} =
  type Cb = proc(super: QDateEdittabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QDateEdit, event: gen_qevent.QActionEvent): void =


  fQDateEdit_virtualbase_actionEvent(self.h, event.h)

type QDateEditactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QDateEdit, slot: proc(super: QDateEditactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_actionEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_actionEvent ".} =
  type Cb = proc(super: QDateEditactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QDateEdit, event: gen_qevent.QDragEnterEvent): void =


  fQDateEdit_virtualbase_dragEnterEvent(self.h, event.h)

type QDateEditdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QDateEdit, slot: proc(super: QDateEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dragEnterEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_dragEnterEvent ".} =
  type Cb = proc(super: QDateEditdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QDateEdit, event: gen_qevent.QDragMoveEvent): void =


  fQDateEdit_virtualbase_dragMoveEvent(self.h, event.h)

type QDateEditdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QDateEdit, slot: proc(super: QDateEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dragMoveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_dragMoveEvent ".} =
  type Cb = proc(super: QDateEditdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QDateEdit, event: gen_qevent.QDragLeaveEvent): void =


  fQDateEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type QDateEditdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QDateEdit, slot: proc(super: QDateEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dragLeaveEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_dragLeaveEvent ".} =
  type Cb = proc(super: QDateEditdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QDateEdit, event: gen_qevent.QDropEvent): void =


  fQDateEdit_virtualbase_dropEvent(self.h, event.h)

type QDateEditdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QDateEdit, slot: proc(super: QDateEditdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_dropEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_dropEvent ".} =
  type Cb = proc(super: QDateEditdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QDateEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQDateEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDateEditnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QDateEdit, slot: proc(super: QDateEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_nativeEvent(self: ptr cQDateEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDateEdit_nativeEvent ".} =
  type Cb = proc(super: QDateEditnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QDateEdit(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QDateEdit, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQDateEdit_virtualbase_metric(self.h, cint(param1))

type QDateEditmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QDateEdit, slot: proc(super: QDateEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QDateEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_metric(self: ptr cQDateEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDateEdit_metric ".} =
  type Cb = proc(super: QDateEditmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QDateEdit(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QDateEdit, painter: gen_qpainter.QPainter): void =


  fQDateEdit_virtualbase_initPainter(self.h, painter.h)

type QDateEditinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QDateEdit, slot: proc(super: QDateEditinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_initPainter(self: ptr cQDateEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_initPainter ".} =
  type Cb = proc(super: QDateEditinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QDateEdit(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QDateEdit, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQDateEdit_virtualbase_redirected(self.h, offset.h))

type QDateEditredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QDateEdit, slot: proc(super: QDateEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QDateEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_redirected(self: ptr cQDateEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDateEdit_redirected ".} =
  type Cb = proc(super: QDateEditredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QDateEdit(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QDateEdit, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQDateEdit_virtualbase_sharedPainter(self.h))

type QDateEditsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QDateEdit, slot: proc(super: QDateEditsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QDateEditsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_sharedPainter(self: ptr cQDateEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QDateEdit_sharedPainter ".} =
  type Cb = proc(super: QDateEditsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QDateEdit(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QDateEdit, param1: gen_qevent.QInputMethodEvent): void =


  fQDateEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QDateEditinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QDateEdit, slot: proc(super: QDateEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_inputMethodEvent(self: ptr cQDateEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_inputMethodEvent ".} =
  type Cb = proc(super: QDateEditinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QDateEdit(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QDateEdit, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDateEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDateEditeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDateEdit, slot: proc(super: QDateEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDateEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_eventFilter(self: ptr cQDateEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDateEdit_eventFilter ".} =
  type Cb = proc(super: QDateEditeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDateEdit(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QDateEdit, event: gen_qcoreevent.QChildEvent): void =


  fQDateEdit_virtualbase_childEvent(self.h, event.h)

type QDateEditchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDateEdit, slot: proc(super: QDateEditchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_childEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_childEvent ".} =
  type Cb = proc(super: QDateEditchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDateEdit, event: gen_qcoreevent.QEvent): void =


  fQDateEdit_virtualbase_customEvent(self.h, event.h)

type QDateEditcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDateEdit, slot: proc(super: QDateEditcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_customEvent(self: ptr cQDateEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_customEvent ".} =
  type Cb = proc(super: QDateEditcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDateEdit(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDateEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQDateEdit_virtualbase_connectNotify(self.h, signal.h)

type QDateEditconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDateEdit, slot: proc(super: QDateEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_connectNotify(self: ptr cQDateEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_connectNotify ".} =
  type Cb = proc(super: QDateEditconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDateEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDateEdit, signal: gen_qmetaobject.QMetaMethod): void =


  fQDateEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QDateEditdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDateEdit, slot: proc(super: QDateEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDateEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDateEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDateEdit_disconnectNotify(self: ptr cQDateEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDateEdit_disconnectNotify ".} =
  type Cb = proc(super: QDateEditdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDateEdit(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDateEdit): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDateEdit_staticMetaObject())
proc delete*(self: QDateEdit) =
  fcQDateEdit_delete(self.h)
