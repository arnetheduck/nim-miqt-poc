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
{.compile("gen_qwizard.cpp", cflags).}


type QWizardWizardButton* = cint
const
  QWizardBackButton* = 0
  QWizardNextButton* = 1
  QWizardCommitButton* = 2
  QWizardFinishButton* = 3
  QWizardCancelButton* = 4
  QWizardHelpButton* = 5
  QWizardCustomButton1* = 6
  QWizardCustomButton2* = 7
  QWizardCustomButton3* = 8
  QWizardStretch* = 9
  QWizardNoButton* = -1
  QWizardNStandardButtons* = 6
  QWizardNButtons* = 9



type QWizardWizardPixmap* = cint
const
  QWizardWatermarkPixmap* = 0
  QWizardLogoPixmap* = 1
  QWizardBannerPixmap* = 2
  QWizardBackgroundPixmap* = 3
  QWizardNPixmaps* = 4



type QWizardWizardStyle* = cint
const
  QWizardClassicStyle* = 0
  QWizardModernStyle* = 1
  QWizardMacStyle* = 2
  QWizardAeroStyle* = 3
  QWizardNStyles* = 4



type QWizardWizardOption* = cint
const
  QWizardIndependentPages* = 1
  QWizardIgnoreSubTitles* = 2
  QWizardExtendedWatermarkPixmap* = 4
  QWizardNoDefaultButton* = 8
  QWizardNoBackButtonOnStartPage* = 16
  QWizardNoBackButtonOnLastPage* = 32
  QWizardDisabledBackButtonOnLastPage* = 64
  QWizardHaveNextButtonOnLastPage* = 128
  QWizardHaveFinishButtonOnEarlyPages* = 256
  QWizardNoCancelButton* = 512
  QWizardCancelButtonOnLeft* = 1024
  QWizardHaveHelpButton* = 2048
  QWizardHelpButtonOnRight* = 4096
  QWizardHaveCustomButton1* = 8192
  QWizardHaveCustomButton2* = 16384
  QWizardHaveCustomButton3* = 32768
  QWizardNoCancelButtonOnLastPage* = 65536



import gen_qwizard_types
export gen_qwizard_types

import
  gen_qabstractbutton,
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
  gen_qpixmap,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractbutton,
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
  gen_qpixmap,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQWizard*{.exportc: "QWizard", incompleteStruct.} = object
type cQWizardPage*{.exportc: "QWizardPage", incompleteStruct.} = object

proc fcQWizard_new(parent: pointer): ptr cQWizard {.importc: "QWizard_new".}
proc fcQWizard_new2(): ptr cQWizard {.importc: "QWizard_new2".}
proc fcQWizard_new3(parent: pointer, flags: cint): ptr cQWizard {.importc: "QWizard_new3".}
proc fcQWizard_metaObject(self: pointer, ): pointer {.importc: "QWizard_metaObject".}
proc fcQWizard_metacast(self: pointer, param1: cstring): pointer {.importc: "QWizard_metacast".}
proc fcQWizard_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWizard_metacall".}
proc fcQWizard_tr(s: cstring): struct_miqt_string {.importc: "QWizard_tr".}
proc fcQWizard_trUtf8(s: cstring): struct_miqt_string {.importc: "QWizard_trUtf8".}
proc fcQWizard_addPage(self: pointer, page: pointer): cint {.importc: "QWizard_addPage".}
proc fcQWizard_setPage(self: pointer, id: cint, page: pointer): void {.importc: "QWizard_setPage".}
proc fcQWizard_removePage(self: pointer, id: cint): void {.importc: "QWizard_removePage".}
proc fcQWizard_page(self: pointer, id: cint): pointer {.importc: "QWizard_page".}
proc fcQWizard_hasVisitedPage(self: pointer, id: cint): bool {.importc: "QWizard_hasVisitedPage".}
proc fcQWizard_visitedPages(self: pointer, ): struct_miqt_array {.importc: "QWizard_visitedPages".}
proc fcQWizard_visitedIds(self: pointer, ): struct_miqt_array {.importc: "QWizard_visitedIds".}
proc fcQWizard_pageIds(self: pointer, ): struct_miqt_array {.importc: "QWizard_pageIds".}
proc fcQWizard_setStartId(self: pointer, id: cint): void {.importc: "QWizard_setStartId".}
proc fcQWizard_startId(self: pointer, ): cint {.importc: "QWizard_startId".}
proc fcQWizard_currentPage(self: pointer, ): pointer {.importc: "QWizard_currentPage".}
proc fcQWizard_currentId(self: pointer, ): cint {.importc: "QWizard_currentId".}
proc fcQWizard_validateCurrentPage(self: pointer, ): bool {.importc: "QWizard_validateCurrentPage".}
proc fcQWizard_nextId(self: pointer, ): cint {.importc: "QWizard_nextId".}
proc fcQWizard_setField(self: pointer, name: struct_miqt_string, value: pointer): void {.importc: "QWizard_setField".}
proc fcQWizard_field(self: pointer, name: struct_miqt_string): pointer {.importc: "QWizard_field".}
proc fcQWizard_setWizardStyle(self: pointer, style: cint): void {.importc: "QWizard_setWizardStyle".}
proc fcQWizard_wizardStyle(self: pointer, ): cint {.importc: "QWizard_wizardStyle".}
proc fcQWizard_setOption(self: pointer, option: cint): void {.importc: "QWizard_setOption".}
proc fcQWizard_testOption(self: pointer, option: cint): bool {.importc: "QWizard_testOption".}
proc fcQWizard_setOptions(self: pointer, options: cint): void {.importc: "QWizard_setOptions".}
proc fcQWizard_options(self: pointer, ): cint {.importc: "QWizard_options".}
proc fcQWizard_setButtonText(self: pointer, which: cint, text: struct_miqt_string): void {.importc: "QWizard_setButtonText".}
proc fcQWizard_buttonText(self: pointer, which: cint): struct_miqt_string {.importc: "QWizard_buttonText".}
proc fcQWizard_setButtonLayout(self: pointer, layout: struct_miqt_array): void {.importc: "QWizard_setButtonLayout".}
proc fcQWizard_setButton(self: pointer, which: cint, button: pointer): void {.importc: "QWizard_setButton".}
proc fcQWizard_button(self: pointer, which: cint): pointer {.importc: "QWizard_button".}
proc fcQWizard_setTitleFormat(self: pointer, format: cint): void {.importc: "QWizard_setTitleFormat".}
proc fcQWizard_titleFormat(self: pointer, ): cint {.importc: "QWizard_titleFormat".}
proc fcQWizard_setSubTitleFormat(self: pointer, format: cint): void {.importc: "QWizard_setSubTitleFormat".}
proc fcQWizard_subTitleFormat(self: pointer, ): cint {.importc: "QWizard_subTitleFormat".}
proc fcQWizard_setPixmap(self: pointer, which: cint, pixmap: pointer): void {.importc: "QWizard_setPixmap".}
proc fcQWizard_pixmap(self: pointer, which: cint): pointer {.importc: "QWizard_pixmap".}
proc fcQWizard_setSideWidget(self: pointer, widget: pointer): void {.importc: "QWizard_setSideWidget".}
proc fcQWizard_sideWidget(self: pointer, ): pointer {.importc: "QWizard_sideWidget".}
proc fcQWizard_setDefaultProperty(self: pointer, className: cstring, property: cstring, changedSignal: cstring): void {.importc: "QWizard_setDefaultProperty".}
proc fcQWizard_setVisible(self: pointer, visible: bool): void {.importc: "QWizard_setVisible".}
proc fcQWizard_sizeHint(self: pointer, ): pointer {.importc: "QWizard_sizeHint".}
proc fcQWizard_currentIdChanged(self: pointer, id: cint): void {.importc: "QWizard_currentIdChanged".}
proc fQWizard_connect_currentIdChanged(self: pointer, slot: int) {.importc: "QWizard_connect_currentIdChanged".}
proc fcQWizard_helpRequested(self: pointer, ): void {.importc: "QWizard_helpRequested".}
proc fQWizard_connect_helpRequested(self: pointer, slot: int) {.importc: "QWizard_connect_helpRequested".}
proc fcQWizard_customButtonClicked(self: pointer, which: cint): void {.importc: "QWizard_customButtonClicked".}
proc fQWizard_connect_customButtonClicked(self: pointer, slot: int) {.importc: "QWizard_connect_customButtonClicked".}
proc fcQWizard_pageAdded(self: pointer, id: cint): void {.importc: "QWizard_pageAdded".}
proc fQWizard_connect_pageAdded(self: pointer, slot: int) {.importc: "QWizard_connect_pageAdded".}
proc fcQWizard_pageRemoved(self: pointer, id: cint): void {.importc: "QWizard_pageRemoved".}
proc fQWizard_connect_pageRemoved(self: pointer, slot: int) {.importc: "QWizard_connect_pageRemoved".}
proc fcQWizard_back(self: pointer, ): void {.importc: "QWizard_back".}
proc fcQWizard_next(self: pointer, ): void {.importc: "QWizard_next".}
proc fcQWizard_restart(self: pointer, ): void {.importc: "QWizard_restart".}
proc fcQWizard_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWizard_tr2".}
proc fcQWizard_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWizard_tr3".}
proc fcQWizard_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWizard_trUtf82".}
proc fcQWizard_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWizard_trUtf83".}
proc fcQWizard_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QWizard_setOption2".}
proc fQWizard_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWizard_virtualbase_metacall".}
proc fcQWizard_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWizard_override_virtual_metacall".}
proc fQWizard_virtualbase_validateCurrentPage(self: pointer, ): bool{.importc: "QWizard_virtualbase_validateCurrentPage".}
proc fcQWizard_override_virtual_validateCurrentPage(self: pointer, slot: int) {.importc: "QWizard_override_virtual_validateCurrentPage".}
proc fQWizard_virtualbase_nextId(self: pointer, ): cint{.importc: "QWizard_virtualbase_nextId".}
proc fcQWizard_override_virtual_nextId(self: pointer, slot: int) {.importc: "QWizard_override_virtual_nextId".}
proc fQWizard_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWizard_virtualbase_setVisible".}
proc fcQWizard_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWizard_override_virtual_setVisible".}
proc fQWizard_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWizard_virtualbase_sizeHint".}
proc fcQWizard_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWizard_override_virtual_sizeHint".}
proc fQWizard_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWizard_virtualbase_event".}
proc fcQWizard_override_virtual_event(self: pointer, slot: int) {.importc: "QWizard_override_virtual_event".}
proc fQWizard_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_resizeEvent".}
proc fcQWizard_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_resizeEvent".}
proc fQWizard_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_paintEvent".}
proc fcQWizard_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_paintEvent".}
proc fQWizard_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QWizard_virtualbase_done".}
proc fcQWizard_override_virtual_done(self: pointer, slot: int) {.importc: "QWizard_override_virtual_done".}
proc fQWizard_virtualbase_initializePage(self: pointer, id: cint): void{.importc: "QWizard_virtualbase_initializePage".}
proc fcQWizard_override_virtual_initializePage(self: pointer, slot: int) {.importc: "QWizard_override_virtual_initializePage".}
proc fQWizard_virtualbase_cleanupPage(self: pointer, id: cint): void{.importc: "QWizard_virtualbase_cleanupPage".}
proc fcQWizard_override_virtual_cleanupPage(self: pointer, slot: int) {.importc: "QWizard_override_virtual_cleanupPage".}
proc fQWizard_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWizard_virtualbase_minimumSizeHint".}
proc fcQWizard_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWizard_override_virtual_minimumSizeHint".}
proc fQWizard_virtualbase_open(self: pointer, ): void{.importc: "QWizard_virtualbase_open".}
proc fcQWizard_override_virtual_open(self: pointer, slot: int) {.importc: "QWizard_override_virtual_open".}
proc fQWizard_virtualbase_exec(self: pointer, ): cint{.importc: "QWizard_virtualbase_exec".}
proc fcQWizard_override_virtual_exec(self: pointer, slot: int) {.importc: "QWizard_override_virtual_exec".}
proc fQWizard_virtualbase_accept(self: pointer, ): void{.importc: "QWizard_virtualbase_accept".}
proc fcQWizard_override_virtual_accept(self: pointer, slot: int) {.importc: "QWizard_override_virtual_accept".}
proc fQWizard_virtualbase_reject(self: pointer, ): void{.importc: "QWizard_virtualbase_reject".}
proc fcQWizard_override_virtual_reject(self: pointer, slot: int) {.importc: "QWizard_override_virtual_reject".}
proc fQWizard_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_keyPressEvent".}
proc fcQWizard_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_keyPressEvent".}
proc fQWizard_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_closeEvent".}
proc fcQWizard_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_closeEvent".}
proc fQWizard_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_showEvent".}
proc fcQWizard_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_showEvent".}
proc fQWizard_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_contextMenuEvent".}
proc fcQWizard_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_contextMenuEvent".}
proc fQWizard_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QWizard_virtualbase_eventFilter".}
proc fcQWizard_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWizard_override_virtual_eventFilter".}
proc fQWizard_virtualbase_devType(self: pointer, ): cint{.importc: "QWizard_virtualbase_devType".}
proc fcQWizard_override_virtual_devType(self: pointer, slot: int) {.importc: "QWizard_override_virtual_devType".}
proc fQWizard_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWizard_virtualbase_heightForWidth".}
proc fcQWizard_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWizard_override_virtual_heightForWidth".}
proc fQWizard_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWizard_virtualbase_hasHeightForWidth".}
proc fcQWizard_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWizard_override_virtual_hasHeightForWidth".}
proc fQWizard_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWizard_virtualbase_paintEngine".}
proc fcQWizard_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWizard_override_virtual_paintEngine".}
proc fQWizard_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_mousePressEvent".}
proc fcQWizard_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_mousePressEvent".}
proc fQWizard_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_mouseReleaseEvent".}
proc fcQWizard_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_mouseReleaseEvent".}
proc fQWizard_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_mouseDoubleClickEvent".}
proc fcQWizard_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_mouseDoubleClickEvent".}
proc fQWizard_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_mouseMoveEvent".}
proc fcQWizard_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_mouseMoveEvent".}
proc fQWizard_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_wheelEvent".}
proc fcQWizard_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_wheelEvent".}
proc fQWizard_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_keyReleaseEvent".}
proc fcQWizard_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_keyReleaseEvent".}
proc fQWizard_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_focusInEvent".}
proc fcQWizard_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_focusInEvent".}
proc fQWizard_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_focusOutEvent".}
proc fcQWizard_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_focusOutEvent".}
proc fQWizard_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_enterEvent".}
proc fcQWizard_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_enterEvent".}
proc fQWizard_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_leaveEvent".}
proc fcQWizard_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_leaveEvent".}
proc fQWizard_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_moveEvent".}
proc fcQWizard_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_moveEvent".}
proc fQWizard_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_tabletEvent".}
proc fcQWizard_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_tabletEvent".}
proc fQWizard_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_actionEvent".}
proc fcQWizard_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_actionEvent".}
proc fQWizard_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_dragEnterEvent".}
proc fcQWizard_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_dragEnterEvent".}
proc fQWizard_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_dragMoveEvent".}
proc fcQWizard_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_dragMoveEvent".}
proc fQWizard_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_dragLeaveEvent".}
proc fcQWizard_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_dragLeaveEvent".}
proc fQWizard_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_dropEvent".}
proc fcQWizard_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_dropEvent".}
proc fQWizard_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_hideEvent".}
proc fcQWizard_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_hideEvent".}
proc fQWizard_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWizard_virtualbase_nativeEvent".}
proc fcQWizard_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_nativeEvent".}
proc fQWizard_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_changeEvent".}
proc fcQWizard_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_changeEvent".}
proc fQWizard_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWizard_virtualbase_metric".}
proc fcQWizard_override_virtual_metric(self: pointer, slot: int) {.importc: "QWizard_override_virtual_metric".}
proc fQWizard_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWizard_virtualbase_initPainter".}
proc fcQWizard_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWizard_override_virtual_initPainter".}
proc fQWizard_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWizard_virtualbase_redirected".}
proc fcQWizard_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWizard_override_virtual_redirected".}
proc fQWizard_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWizard_virtualbase_sharedPainter".}
proc fcQWizard_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWizard_override_virtual_sharedPainter".}
proc fQWizard_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWizard_virtualbase_inputMethodEvent".}
proc fcQWizard_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_inputMethodEvent".}
proc fQWizard_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWizard_virtualbase_inputMethodQuery".}
proc fcQWizard_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWizard_override_virtual_inputMethodQuery".}
proc fQWizard_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWizard_virtualbase_focusNextPrevChild".}
proc fcQWizard_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWizard_override_virtual_focusNextPrevChild".}
proc fQWizard_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_timerEvent".}
proc fcQWizard_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_timerEvent".}
proc fQWizard_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_childEvent".}
proc fcQWizard_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_childEvent".}
proc fQWizard_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWizard_virtualbase_customEvent".}
proc fcQWizard_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWizard_override_virtual_customEvent".}
proc fQWizard_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWizard_virtualbase_connectNotify".}
proc fcQWizard_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWizard_override_virtual_connectNotify".}
proc fQWizard_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWizard_virtualbase_disconnectNotify".}
proc fcQWizard_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWizard_override_virtual_disconnectNotify".}
proc fcQWizard_delete(self: pointer) {.importc: "QWizard_delete".}
proc fcQWizardPage_new(parent: pointer): ptr cQWizardPage {.importc: "QWizardPage_new".}
proc fcQWizardPage_new2(): ptr cQWizardPage {.importc: "QWizardPage_new2".}
proc fcQWizardPage_metaObject(self: pointer, ): pointer {.importc: "QWizardPage_metaObject".}
proc fcQWizardPage_metacast(self: pointer, param1: cstring): pointer {.importc: "QWizardPage_metacast".}
proc fcQWizardPage_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWizardPage_metacall".}
proc fcQWizardPage_tr(s: cstring): struct_miqt_string {.importc: "QWizardPage_tr".}
proc fcQWizardPage_trUtf8(s: cstring): struct_miqt_string {.importc: "QWizardPage_trUtf8".}
proc fcQWizardPage_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QWizardPage_setTitle".}
proc fcQWizardPage_title(self: pointer, ): struct_miqt_string {.importc: "QWizardPage_title".}
proc fcQWizardPage_setSubTitle(self: pointer, subTitle: struct_miqt_string): void {.importc: "QWizardPage_setSubTitle".}
proc fcQWizardPage_subTitle(self: pointer, ): struct_miqt_string {.importc: "QWizardPage_subTitle".}
proc fcQWizardPage_setPixmap(self: pointer, which: cint, pixmap: pointer): void {.importc: "QWizardPage_setPixmap".}
proc fcQWizardPage_pixmap(self: pointer, which: cint): pointer {.importc: "QWizardPage_pixmap".}
proc fcQWizardPage_setFinalPage(self: pointer, finalPage: bool): void {.importc: "QWizardPage_setFinalPage".}
proc fcQWizardPage_isFinalPage(self: pointer, ): bool {.importc: "QWizardPage_isFinalPage".}
proc fcQWizardPage_setCommitPage(self: pointer, commitPage: bool): void {.importc: "QWizardPage_setCommitPage".}
proc fcQWizardPage_isCommitPage(self: pointer, ): bool {.importc: "QWizardPage_isCommitPage".}
proc fcQWizardPage_setButtonText(self: pointer, which: cint, text: struct_miqt_string): void {.importc: "QWizardPage_setButtonText".}
proc fcQWizardPage_buttonText(self: pointer, which: cint): struct_miqt_string {.importc: "QWizardPage_buttonText".}
proc fcQWizardPage_initializePage(self: pointer, ): void {.importc: "QWizardPage_initializePage".}
proc fcQWizardPage_cleanupPage(self: pointer, ): void {.importc: "QWizardPage_cleanupPage".}
proc fcQWizardPage_validatePage(self: pointer, ): bool {.importc: "QWizardPage_validatePage".}
proc fcQWizardPage_isComplete(self: pointer, ): bool {.importc: "QWizardPage_isComplete".}
proc fcQWizardPage_nextId(self: pointer, ): cint {.importc: "QWizardPage_nextId".}
proc fcQWizardPage_completeChanged(self: pointer, ): void {.importc: "QWizardPage_completeChanged".}
proc fQWizardPage_connect_completeChanged(self: pointer, slot: int) {.importc: "QWizardPage_connect_completeChanged".}
proc fcQWizardPage_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWizardPage_tr2".}
proc fcQWizardPage_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWizardPage_tr3".}
proc fcQWizardPage_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWizardPage_trUtf82".}
proc fcQWizardPage_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWizardPage_trUtf83".}
proc fQWizardPage_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWizardPage_virtualbase_metacall".}
proc fcQWizardPage_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_metacall".}
proc fQWizardPage_virtualbase_initializePage(self: pointer, ): void{.importc: "QWizardPage_virtualbase_initializePage".}
proc fcQWizardPage_override_virtual_initializePage(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_initializePage".}
proc fQWizardPage_virtualbase_cleanupPage(self: pointer, ): void{.importc: "QWizardPage_virtualbase_cleanupPage".}
proc fcQWizardPage_override_virtual_cleanupPage(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_cleanupPage".}
proc fQWizardPage_virtualbase_validatePage(self: pointer, ): bool{.importc: "QWizardPage_virtualbase_validatePage".}
proc fcQWizardPage_override_virtual_validatePage(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_validatePage".}
proc fQWizardPage_virtualbase_isComplete(self: pointer, ): bool{.importc: "QWizardPage_virtualbase_isComplete".}
proc fcQWizardPage_override_virtual_isComplete(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_isComplete".}
proc fQWizardPage_virtualbase_nextId(self: pointer, ): cint{.importc: "QWizardPage_virtualbase_nextId".}
proc fcQWizardPage_override_virtual_nextId(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_nextId".}
proc fQWizardPage_virtualbase_devType(self: pointer, ): cint{.importc: "QWizardPage_virtualbase_devType".}
proc fcQWizardPage_override_virtual_devType(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_devType".}
proc fQWizardPage_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QWizardPage_virtualbase_setVisible".}
proc fcQWizardPage_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_setVisible".}
proc fQWizardPage_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QWizardPage_virtualbase_sizeHint".}
proc fcQWizardPage_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_sizeHint".}
proc fQWizardPage_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QWizardPage_virtualbase_minimumSizeHint".}
proc fcQWizardPage_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_minimumSizeHint".}
proc fQWizardPage_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QWizardPage_virtualbase_heightForWidth".}
proc fcQWizardPage_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_heightForWidth".}
proc fQWizardPage_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QWizardPage_virtualbase_hasHeightForWidth".}
proc fcQWizardPage_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_hasHeightForWidth".}
proc fQWizardPage_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QWizardPage_virtualbase_paintEngine".}
proc fcQWizardPage_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_paintEngine".}
proc fQWizardPage_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWizardPage_virtualbase_event".}
proc fcQWizardPage_override_virtual_event(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_event".}
proc fQWizardPage_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_mousePressEvent".}
proc fcQWizardPage_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_mousePressEvent".}
proc fQWizardPage_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_mouseReleaseEvent".}
proc fcQWizardPage_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_mouseReleaseEvent".}
proc fQWizardPage_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_mouseDoubleClickEvent".}
proc fcQWizardPage_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_mouseDoubleClickEvent".}
proc fQWizardPage_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_mouseMoveEvent".}
proc fcQWizardPage_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_mouseMoveEvent".}
proc fQWizardPage_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_wheelEvent".}
proc fcQWizardPage_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_wheelEvent".}
proc fQWizardPage_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_keyPressEvent".}
proc fcQWizardPage_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_keyPressEvent".}
proc fQWizardPage_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_keyReleaseEvent".}
proc fcQWizardPage_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_keyReleaseEvent".}
proc fQWizardPage_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_focusInEvent".}
proc fcQWizardPage_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_focusInEvent".}
proc fQWizardPage_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_focusOutEvent".}
proc fcQWizardPage_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_focusOutEvent".}
proc fQWizardPage_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_enterEvent".}
proc fcQWizardPage_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_enterEvent".}
proc fQWizardPage_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_leaveEvent".}
proc fcQWizardPage_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_leaveEvent".}
proc fQWizardPage_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_paintEvent".}
proc fcQWizardPage_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_paintEvent".}
proc fQWizardPage_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_moveEvent".}
proc fcQWizardPage_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_moveEvent".}
proc fQWizardPage_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_resizeEvent".}
proc fcQWizardPage_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_resizeEvent".}
proc fQWizardPage_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_closeEvent".}
proc fcQWizardPage_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_closeEvent".}
proc fQWizardPage_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_contextMenuEvent".}
proc fcQWizardPage_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_contextMenuEvent".}
proc fQWizardPage_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_tabletEvent".}
proc fcQWizardPage_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_tabletEvent".}
proc fQWizardPage_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_actionEvent".}
proc fcQWizardPage_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_actionEvent".}
proc fQWizardPage_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_dragEnterEvent".}
proc fcQWizardPage_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_dragEnterEvent".}
proc fQWizardPage_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_dragMoveEvent".}
proc fcQWizardPage_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_dragMoveEvent".}
proc fQWizardPage_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_dragLeaveEvent".}
proc fcQWizardPage_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_dragLeaveEvent".}
proc fQWizardPage_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_dropEvent".}
proc fcQWizardPage_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_dropEvent".}
proc fQWizardPage_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_showEvent".}
proc fcQWizardPage_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_showEvent".}
proc fQWizardPage_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_hideEvent".}
proc fcQWizardPage_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_hideEvent".}
proc fQWizardPage_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QWizardPage_virtualbase_nativeEvent".}
proc fcQWizardPage_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_nativeEvent".}
proc fQWizardPage_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QWizardPage_virtualbase_changeEvent".}
proc fcQWizardPage_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_changeEvent".}
proc fQWizardPage_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QWizardPage_virtualbase_metric".}
proc fcQWizardPage_override_virtual_metric(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_metric".}
proc fQWizardPage_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QWizardPage_virtualbase_initPainter".}
proc fcQWizardPage_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_initPainter".}
proc fQWizardPage_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QWizardPage_virtualbase_redirected".}
proc fcQWizardPage_override_virtual_redirected(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_redirected".}
proc fQWizardPage_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QWizardPage_virtualbase_sharedPainter".}
proc fcQWizardPage_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_sharedPainter".}
proc fQWizardPage_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QWizardPage_virtualbase_inputMethodEvent".}
proc fcQWizardPage_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_inputMethodEvent".}
proc fQWizardPage_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QWizardPage_virtualbase_inputMethodQuery".}
proc fcQWizardPage_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_inputMethodQuery".}
proc fQWizardPage_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QWizardPage_virtualbase_focusNextPrevChild".}
proc fcQWizardPage_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_focusNextPrevChild".}
proc fQWizardPage_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWizardPage_virtualbase_eventFilter".}
proc fcQWizardPage_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_eventFilter".}
proc fQWizardPage_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_timerEvent".}
proc fcQWizardPage_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_timerEvent".}
proc fQWizardPage_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_childEvent".}
proc fcQWizardPage_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_childEvent".}
proc fQWizardPage_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWizardPage_virtualbase_customEvent".}
proc fcQWizardPage_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_customEvent".}
proc fQWizardPage_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWizardPage_virtualbase_connectNotify".}
proc fcQWizardPage_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_connectNotify".}
proc fQWizardPage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWizardPage_virtualbase_disconnectNotify".}
proc fcQWizardPage_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWizardPage_override_virtual_disconnectNotify".}
proc fcQWizardPage_delete(self: pointer) {.importc: "QWizardPage_delete".}


func init*(T: type QWizard, h: ptr cQWizard): QWizard =
  T(h: h)
proc create*(T: type QWizard, parent: gen_qwidget.QWidget): QWizard =

  QWizard.init(fcQWizard_new(parent.h))
proc create*(T: type QWizard, ): QWizard =

  QWizard.init(fcQWizard_new2())
proc create*(T: type QWizard, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QWizard =

  QWizard.init(fcQWizard_new3(parent.h, cint(flags)))
proc metaObject*(self: QWizard, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWizard_metaObject(self.h))

proc metacast*(self: QWizard, param1: cstring): pointer =

  fcQWizard_metacast(self.h, param1)

proc metacall*(self: QWizard, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWizard_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWizard, s: cstring): string =

  let v_ms = fcQWizard_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWizard, s: cstring): string =

  let v_ms = fcQWizard_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPage*(self: QWizard, page: QWizardPage): cint =

  fcQWizard_addPage(self.h, page.h)

proc setPage*(self: QWizard, id: cint, page: QWizardPage): void =

  fcQWizard_setPage(self.h, id, page.h)

proc removePage*(self: QWizard, id: cint): void =

  fcQWizard_removePage(self.h, id)

proc page*(self: QWizard, id: cint): QWizardPage =

  QWizardPage(h: fcQWizard_page(self.h, id))

proc hasVisitedPage*(self: QWizard, id: cint): bool =

  fcQWizard_hasVisitedPage(self.h, id)

proc visitedPages*(self: QWizard, ): seq[cint] =

  var v_ma = fcQWizard_visitedPages(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc visitedIds*(self: QWizard, ): seq[cint] =

  var v_ma = fcQWizard_visitedIds(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc pageIds*(self: QWizard, ): seq[cint] =

  var v_ma = fcQWizard_pageIds(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc setStartId*(self: QWizard, id: cint): void =

  fcQWizard_setStartId(self.h, id)

proc startId*(self: QWizard, ): cint =

  fcQWizard_startId(self.h)

proc currentPage*(self: QWizard, ): QWizardPage =

  QWizardPage(h: fcQWizard_currentPage(self.h))

proc currentId*(self: QWizard, ): cint =

  fcQWizard_currentId(self.h)

proc validateCurrentPage*(self: QWizard, ): bool =

  fcQWizard_validateCurrentPage(self.h)

proc nextId*(self: QWizard, ): cint =

  fcQWizard_nextId(self.h)

proc setField*(self: QWizard, name: string, value: gen_qvariant.QVariant): void =

  fcQWizard_setField(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), value.h)

proc field*(self: QWizard, name: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQWizard_field(self.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc setWizardStyle*(self: QWizard, style: QWizardWizardStyle): void =

  fcQWizard_setWizardStyle(self.h, cint(style))

proc wizardStyle*(self: QWizard, ): QWizardWizardStyle =

  QWizardWizardStyle(fcQWizard_wizardStyle(self.h))

proc setOption*(self: QWizard, option: QWizardWizardOption): void =

  fcQWizard_setOption(self.h, cint(option))

proc testOption*(self: QWizard, option: QWizardWizardOption): bool =

  fcQWizard_testOption(self.h, cint(option))

proc setOptions*(self: QWizard, options: QWizardWizardOption): void =

  fcQWizard_setOptions(self.h, cint(options))

proc options*(self: QWizard, ): QWizardWizardOption =

  QWizardWizardOption(fcQWizard_options(self.h))

proc setButtonText*(self: QWizard, which: QWizardWizardButton, text: string): void =

  fcQWizard_setButtonText(self.h, cint(which), struct_miqt_string(data: text, len: csize_t(len(text))))

proc buttonText*(self: QWizard, which: QWizardWizardButton): string =

  let v_ms = fcQWizard_buttonText(self.h, cint(which))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setButtonLayout*(self: QWizard, layout: seq[QWizardWizardButton]): void =

  var layout_CArray = newSeq[cint](len(layout))
  for i in 0..<len(layout):
    layout_CArray[i] = cint(layout[i])

  fcQWizard_setButtonLayout(self.h, struct_miqt_array(len: csize_t(len(layout)), data: if len(layout) == 0: nil else: addr(layout_CArray[0])))

proc setButton*(self: QWizard, which: QWizardWizardButton, button: gen_qabstractbutton.QAbstractButton): void =

  fcQWizard_setButton(self.h, cint(which), button.h)

proc button*(self: QWizard, which: QWizardWizardButton): gen_qabstractbutton.QAbstractButton =

  gen_qabstractbutton.QAbstractButton(h: fcQWizard_button(self.h, cint(which)))

proc setTitleFormat*(self: QWizard, format: gen_qnamespace.TextFormat): void =

  fcQWizard_setTitleFormat(self.h, cint(format))

proc titleFormat*(self: QWizard, ): gen_qnamespace.TextFormat =

  gen_qnamespace.TextFormat(fcQWizard_titleFormat(self.h))

proc setSubTitleFormat*(self: QWizard, format: gen_qnamespace.TextFormat): void =

  fcQWizard_setSubTitleFormat(self.h, cint(format))

proc subTitleFormat*(self: QWizard, ): gen_qnamespace.TextFormat =

  gen_qnamespace.TextFormat(fcQWizard_subTitleFormat(self.h))

proc setPixmap*(self: QWizard, which: QWizardWizardPixmap, pixmap: gen_qpixmap.QPixmap): void =

  fcQWizard_setPixmap(self.h, cint(which), pixmap.h)

proc pixmap*(self: QWizard, which: QWizardWizardPixmap): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQWizard_pixmap(self.h, cint(which)))

proc setSideWidget*(self: QWizard, widget: gen_qwidget.QWidget): void =

  fcQWizard_setSideWidget(self.h, widget.h)

proc sideWidget*(self: QWizard, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQWizard_sideWidget(self.h))

proc setDefaultProperty*(self: QWizard, className: cstring, property: cstring, changedSignal: cstring): void =

  fcQWizard_setDefaultProperty(self.h, className, property, changedSignal)

proc setVisible*(self: QWizard, visible: bool): void =

  fcQWizard_setVisible(self.h, visible)

proc sizeHint*(self: QWizard, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQWizard_sizeHint(self.h))

proc currentIdChanged*(self: QWizard, id: cint): void =

  fcQWizard_currentIdChanged(self.h, id)

proc miqt_exec_callback_QWizard_currentIdChanged(slot: int, id: cint) {.exportc.} =
  type Cb = proc(id: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)

proc oncurrentIdChanged*(self: QWizard, slot: proc(id: cint)) =
  type Cb = proc(id: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWizard_connect_currentIdChanged(self.h, cast[int](addr tmp[]))
proc helpRequested*(self: QWizard, ): void =

  fcQWizard_helpRequested(self.h)

proc miqt_exec_callback_QWizard_helpRequested(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onhelpRequested*(self: QWizard, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWizard_connect_helpRequested(self.h, cast[int](addr tmp[]))
proc customButtonClicked*(self: QWizard, which: cint): void =

  fcQWizard_customButtonClicked(self.h, which)

proc miqt_exec_callback_QWizard_customButtonClicked(slot: int, which: cint) {.exportc.} =
  type Cb = proc(which: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = which


  nimfunc[](slotval1)

proc oncustomButtonClicked*(self: QWizard, slot: proc(which: cint)) =
  type Cb = proc(which: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWizard_connect_customButtonClicked(self.h, cast[int](addr tmp[]))
proc pageAdded*(self: QWizard, id: cint): void =

  fcQWizard_pageAdded(self.h, id)

proc miqt_exec_callback_QWizard_pageAdded(slot: int, id: cint) {.exportc.} =
  type Cb = proc(id: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)

proc onpageAdded*(self: QWizard, slot: proc(id: cint)) =
  type Cb = proc(id: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWizard_connect_pageAdded(self.h, cast[int](addr tmp[]))
proc pageRemoved*(self: QWizard, id: cint): void =

  fcQWizard_pageRemoved(self.h, id)

proc miqt_exec_callback_QWizard_pageRemoved(slot: int, id: cint) {.exportc.} =
  type Cb = proc(id: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id


  nimfunc[](slotval1)

proc onpageRemoved*(self: QWizard, slot: proc(id: cint)) =
  type Cb = proc(id: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWizard_connect_pageRemoved(self.h, cast[int](addr tmp[]))
proc back*(self: QWizard, ): void =

  fcQWizard_back(self.h)

proc next*(self: QWizard, ): void =

  fcQWizard_next(self.h)

proc restart*(self: QWizard, ): void =

  fcQWizard_restart(self.h)

proc tr2*(_: type QWizard, s: cstring, c: cstring): string =

  let v_ms = fcQWizard_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWizard, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWizard_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWizard, s: cstring, c: cstring): string =

  let v_ms = fcQWizard_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWizard, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWizard_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption2*(self: QWizard, option: QWizardWizardOption, on: bool): void =

  fcQWizard_setOption2(self.h, cint(option), on)

proc callVirtualBase_metacall(self: QWizard, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWizard_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWizardmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWizard, slot: proc(super: QWizardmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_metacall(self: ptr cQWizard, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWizard_metacall ".} =
  type Cb = proc(super: QWizardmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWizard(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_validateCurrentPage(self: QWizard, ): bool =


  fQWizard_virtualbase_validateCurrentPage(self.h)

type QWizardvalidateCurrentPageBase* = proc(): bool
proc onvalidateCurrentPage*(self: QWizard, slot: proc(super: QWizardvalidateCurrentPageBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardvalidateCurrentPageBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_validateCurrentPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_validateCurrentPage(self: ptr cQWizard, slot: int): bool {.exportc: "miqt_exec_callback_QWizard_validateCurrentPage ".} =
  type Cb = proc(super: QWizardvalidateCurrentPageBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_validateCurrentPage(QWizard(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_nextId(self: QWizard, ): cint =


  fQWizard_virtualbase_nextId(self.h)

type QWizardnextIdBase* = proc(): cint
proc onnextId*(self: QWizard, slot: proc(super: QWizardnextIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardnextIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_nextId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_nextId(self: ptr cQWizard, slot: int): cint {.exportc: "miqt_exec_callback_QWizard_nextId ".} =
  type Cb = proc(super: QWizardnextIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextId(QWizard(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QWizard, visible: bool): void =


  fQWizard_virtualbase_setVisible(self.h, visible)

type QWizardsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QWizard, slot: proc(super: QWizardsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_setVisible(self: ptr cQWizard, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWizard_setVisible ".} =
  type Cb = proc(super: QWizardsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QWizard(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QWizard, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWizard_virtualbase_sizeHint(self.h))

type QWizardsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QWizard, slot: proc(super: QWizardsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWizardsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_sizeHint(self: ptr cQWizard, slot: int): pointer {.exportc: "miqt_exec_callback_QWizard_sizeHint ".} =
  type Cb = proc(super: QWizardsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QWizard(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QWizard, event: gen_qcoreevent.QEvent): bool =


  fQWizard_virtualbase_event(self.h, event.h)

type QWizardeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWizard, slot: proc(super: QWizardeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_event(self: ptr cQWizard, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWizard_event ".} =
  type Cb = proc(super: QWizardeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWizard(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QWizard, event: gen_qevent.QResizeEvent): void =


  fQWizard_virtualbase_resizeEvent(self.h, event.h)

type QWizardresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QWizard, slot: proc(super: QWizardresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_resizeEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_resizeEvent ".} =
  type Cb = proc(super: QWizardresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QWizard, event: gen_qevent.QPaintEvent): void =


  fQWizard_virtualbase_paintEvent(self.h, event.h)

type QWizardpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QWizard, slot: proc(super: QWizardpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_paintEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_paintEvent ".} =
  type Cb = proc(super: QWizardpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_done(self: QWizard, resultVal: cint): void =


  fQWizard_virtualbase_done(self.h, resultVal)

type QWizarddoneBase* = proc(resultVal: cint): void
proc ondone*(self: QWizard, slot: proc(super: QWizarddoneBase, resultVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QWizarddoneBase, resultVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_done(self: ptr cQWizard, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QWizard_done ".} =
  type Cb = proc(super: QWizarddoneBase, resultVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(resultVal: cint): auto =
    callVirtualBase_done(QWizard(h: self), resultVal)
  let slotval1 = resultVal


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initializePage(self: QWizard, id: cint): void =


  fQWizard_virtualbase_initializePage(self.h, id)

type QWizardinitializePageBase* = proc(id: cint): void
proc oninitializePage*(self: QWizard, slot: proc(super: QWizardinitializePageBase, id: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardinitializePageBase, id: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_initializePage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_initializePage(self: ptr cQWizard, slot: int, id: cint): void {.exportc: "miqt_exec_callback_QWizard_initializePage ".} =
  type Cb = proc(super: QWizardinitializePageBase, id: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: cint): auto =
    callVirtualBase_initializePage(QWizard(h: self), id)
  let slotval1 = id


  nimfunc[](superCall, slotval1)
proc callVirtualBase_cleanupPage(self: QWizard, id: cint): void =


  fQWizard_virtualbase_cleanupPage(self.h, id)

type QWizardcleanupPageBase* = proc(id: cint): void
proc oncleanupPage*(self: QWizard, slot: proc(super: QWizardcleanupPageBase, id: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardcleanupPageBase, id: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_cleanupPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_cleanupPage(self: ptr cQWizard, slot: int, id: cint): void {.exportc: "miqt_exec_callback_QWizard_cleanupPage ".} =
  type Cb = proc(super: QWizardcleanupPageBase, id: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: cint): auto =
    callVirtualBase_cleanupPage(QWizard(h: self), id)
  let slotval1 = id


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QWizard, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWizard_virtualbase_minimumSizeHint(self.h))

type QWizardminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QWizard, slot: proc(super: QWizardminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWizardminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_minimumSizeHint(self: ptr cQWizard, slot: int): pointer {.exportc: "miqt_exec_callback_QWizard_minimumSizeHint ".} =
  type Cb = proc(super: QWizardminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QWizard(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QWizard, ): void =


  fQWizard_virtualbase_open(self.h)

type QWizardopenBase* = proc(): void
proc onopen*(self: QWizard, slot: proc(super: QWizardopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_open(self: ptr cQWizard, slot: int): void {.exportc: "miqt_exec_callback_QWizard_open ".} =
  type Cb = proc(super: QWizardopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QWizard(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QWizard, ): cint =


  fQWizard_virtualbase_exec(self.h)

type QWizardexecBase* = proc(): cint
proc onexec*(self: QWizard, slot: proc(super: QWizardexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_exec(self: ptr cQWizard, slot: int): cint {.exportc: "miqt_exec_callback_QWizard_exec ".} =
  type Cb = proc(super: QWizardexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QWizard(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_accept(self: QWizard, ): void =


  fQWizard_virtualbase_accept(self.h)

type QWizardacceptBase* = proc(): void
proc onaccept*(self: QWizard, slot: proc(super: QWizardacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_accept(self: ptr cQWizard, slot: int): void {.exportc: "miqt_exec_callback_QWizard_accept ".} =
  type Cb = proc(super: QWizardacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QWizard(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QWizard, ): void =


  fQWizard_virtualbase_reject(self.h)

type QWizardrejectBase* = proc(): void
proc onreject*(self: QWizard, slot: proc(super: QWizardrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_reject(self: ptr cQWizard, slot: int): void {.exportc: "miqt_exec_callback_QWizard_reject ".} =
  type Cb = proc(super: QWizardrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QWizard(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_keyPressEvent(self: QWizard, param1: gen_qevent.QKeyEvent): void =


  fQWizard_virtualbase_keyPressEvent(self.h, param1.h)

type QWizardkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QWizard, slot: proc(super: QWizardkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_keyPressEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_keyPressEvent ".} =
  type Cb = proc(super: QWizardkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QWizard(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QWizard, param1: gen_qevent.QCloseEvent): void =


  fQWizard_virtualbase_closeEvent(self.h, param1.h)

type QWizardcloseEventBase* = proc(param1: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QWizard, slot: proc(super: QWizardcloseEventBase, param1: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_closeEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_closeEvent ".} =
  type Cb = proc(super: QWizardcloseEventBase, param1: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QWizard(h: self), param1)
  let slotval1 = gen_qevent.QCloseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QWizard, param1: gen_qevent.QShowEvent): void =


  fQWizard_virtualbase_showEvent(self.h, param1.h)

type QWizardshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QWizard, slot: proc(super: QWizardshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_showEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_showEvent ".} =
  type Cb = proc(super: QWizardshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QWizard(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QWizard, param1: gen_qevent.QContextMenuEvent): void =


  fQWizard_virtualbase_contextMenuEvent(self.h, param1.h)

type QWizardcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QWizard, slot: proc(super: QWizardcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_contextMenuEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_contextMenuEvent ".} =
  type Cb = proc(super: QWizardcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QWizard(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QWizard, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQWizard_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QWizardeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWizard, slot: proc(super: QWizardeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_eventFilter(self: ptr cQWizard, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QWizard_eventFilter ".} =
  type Cb = proc(super: QWizardeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWizard(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QWizard, ): cint =


  fQWizard_virtualbase_devType(self.h)

type QWizarddevTypeBase* = proc(): cint
proc ondevType*(self: QWizard, slot: proc(super: QWizarddevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizarddevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_devType(self: ptr cQWizard, slot: int): cint {.exportc: "miqt_exec_callback_QWizard_devType ".} =
  type Cb = proc(super: QWizarddevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QWizard(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QWizard, param1: cint): cint =


  fQWizard_virtualbase_heightForWidth(self.h, param1)

type QWizardheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QWizard, slot: proc(super: QWizardheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_heightForWidth(self: ptr cQWizard, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWizard_heightForWidth ".} =
  type Cb = proc(super: QWizardheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QWizard(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QWizard, ): bool =


  fQWizard_virtualbase_hasHeightForWidth(self.h)

type QWizardhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QWizard, slot: proc(super: QWizardhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_hasHeightForWidth(self: ptr cQWizard, slot: int): bool {.exportc: "miqt_exec_callback_QWizard_hasHeightForWidth ".} =
  type Cb = proc(super: QWizardhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QWizard(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QWizard, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQWizard_virtualbase_paintEngine(self.h))

type QWizardpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QWizard, slot: proc(super: QWizardpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QWizardpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_paintEngine(self: ptr cQWizard, slot: int): pointer {.exportc: "miqt_exec_callback_QWizard_paintEngine ".} =
  type Cb = proc(super: QWizardpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QWizard(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QWizard, event: gen_qevent.QMouseEvent): void =


  fQWizard_virtualbase_mousePressEvent(self.h, event.h)

type QWizardmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QWizard, slot: proc(super: QWizardmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_mousePressEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_mousePressEvent ".} =
  type Cb = proc(super: QWizardmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QWizard, event: gen_qevent.QMouseEvent): void =


  fQWizard_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWizardmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QWizard, slot: proc(super: QWizardmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_mouseReleaseEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_mouseReleaseEvent ".} =
  type Cb = proc(super: QWizardmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QWizard, event: gen_qevent.QMouseEvent): void =


  fQWizard_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWizardmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QWizard, slot: proc(super: QWizardmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_mouseDoubleClickEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QWizardmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QWizard, event: gen_qevent.QMouseEvent): void =


  fQWizard_virtualbase_mouseMoveEvent(self.h, event.h)

type QWizardmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QWizard, slot: proc(super: QWizardmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_mouseMoveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_mouseMoveEvent ".} =
  type Cb = proc(super: QWizardmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QWizard, event: gen_qevent.QWheelEvent): void =


  fQWizard_virtualbase_wheelEvent(self.h, event.h)

type QWizardwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QWizard, slot: proc(super: QWizardwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_wheelEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_wheelEvent ".} =
  type Cb = proc(super: QWizardwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QWizard, event: gen_qevent.QKeyEvent): void =


  fQWizard_virtualbase_keyReleaseEvent(self.h, event.h)

type QWizardkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QWizard, slot: proc(super: QWizardkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_keyReleaseEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_keyReleaseEvent ".} =
  type Cb = proc(super: QWizardkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QWizard, event: gen_qevent.QFocusEvent): void =


  fQWizard_virtualbase_focusInEvent(self.h, event.h)

type QWizardfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QWizard, slot: proc(super: QWizardfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_focusInEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_focusInEvent ".} =
  type Cb = proc(super: QWizardfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QWizard, event: gen_qevent.QFocusEvent): void =


  fQWizard_virtualbase_focusOutEvent(self.h, event.h)

type QWizardfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QWizard, slot: proc(super: QWizardfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_focusOutEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_focusOutEvent ".} =
  type Cb = proc(super: QWizardfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QWizard, event: gen_qcoreevent.QEvent): void =


  fQWizard_virtualbase_enterEvent(self.h, event.h)

type QWizardenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QWizard, slot: proc(super: QWizardenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_enterEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_enterEvent ".} =
  type Cb = proc(super: QWizardenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QWizard(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QWizard, event: gen_qcoreevent.QEvent): void =


  fQWizard_virtualbase_leaveEvent(self.h, event.h)

type QWizardleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QWizard, slot: proc(super: QWizardleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_leaveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_leaveEvent ".} =
  type Cb = proc(super: QWizardleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QWizard(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QWizard, event: gen_qevent.QMoveEvent): void =


  fQWizard_virtualbase_moveEvent(self.h, event.h)

type QWizardmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QWizard, slot: proc(super: QWizardmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_moveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_moveEvent ".} =
  type Cb = proc(super: QWizardmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QWizard, event: gen_qevent.QTabletEvent): void =


  fQWizard_virtualbase_tabletEvent(self.h, event.h)

type QWizardtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QWizard, slot: proc(super: QWizardtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_tabletEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_tabletEvent ".} =
  type Cb = proc(super: QWizardtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QWizard, event: gen_qevent.QActionEvent): void =


  fQWizard_virtualbase_actionEvent(self.h, event.h)

type QWizardactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QWizard, slot: proc(super: QWizardactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_actionEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_actionEvent ".} =
  type Cb = proc(super: QWizardactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QWizard, event: gen_qevent.QDragEnterEvent): void =


  fQWizard_virtualbase_dragEnterEvent(self.h, event.h)

type QWizarddragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QWizard, slot: proc(super: QWizarddragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizarddragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_dragEnterEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_dragEnterEvent ".} =
  type Cb = proc(super: QWizarddragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QWizard, event: gen_qevent.QDragMoveEvent): void =


  fQWizard_virtualbase_dragMoveEvent(self.h, event.h)

type QWizarddragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QWizard, slot: proc(super: QWizarddragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizarddragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_dragMoveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_dragMoveEvent ".} =
  type Cb = proc(super: QWizarddragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QWizard, event: gen_qevent.QDragLeaveEvent): void =


  fQWizard_virtualbase_dragLeaveEvent(self.h, event.h)

type QWizarddragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QWizard, slot: proc(super: QWizarddragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizarddragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_dragLeaveEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_dragLeaveEvent ".} =
  type Cb = proc(super: QWizarddragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QWizard, event: gen_qevent.QDropEvent): void =


  fQWizard_virtualbase_dropEvent(self.h, event.h)

type QWizarddropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QWizard, slot: proc(super: QWizarddropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizarddropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_dropEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_dropEvent ".} =
  type Cb = proc(super: QWizarddropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QWizard, event: gen_qevent.QHideEvent): void =


  fQWizard_virtualbase_hideEvent(self.h, event.h)

type QWizardhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QWizard, slot: proc(super: QWizardhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_hideEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_hideEvent ".} =
  type Cb = proc(super: QWizardhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QWizard(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QWizard, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQWizard_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWizardnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QWizard, slot: proc(super: QWizardnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_nativeEvent(self: ptr cQWizard, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWizard_nativeEvent ".} =
  type Cb = proc(super: QWizardnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QWizard(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QWizard, param1: gen_qcoreevent.QEvent): void =


  fQWizard_virtualbase_changeEvent(self.h, param1.h)

type QWizardchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QWizard, slot: proc(super: QWizardchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_changeEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_changeEvent ".} =
  type Cb = proc(super: QWizardchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QWizard(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QWizard, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQWizard_virtualbase_metric(self.h, cint(param1))

type QWizardmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QWizard, slot: proc(super: QWizardmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_metric(self: ptr cQWizard, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWizard_metric ".} =
  type Cb = proc(super: QWizardmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QWizard(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QWizard, painter: gen_qpainter.QPainter): void =


  fQWizard_virtualbase_initPainter(self.h, painter.h)

type QWizardinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QWizard, slot: proc(super: QWizardinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_initPainter(self: ptr cQWizard, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWizard_initPainter ".} =
  type Cb = proc(super: QWizardinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QWizard(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QWizard, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQWizard_virtualbase_redirected(self.h, offset.h))

type QWizardredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QWizard, slot: proc(super: QWizardredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QWizardredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_redirected(self: ptr cQWizard, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWizard_redirected ".} =
  type Cb = proc(super: QWizardredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QWizard(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QWizard, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQWizard_virtualbase_sharedPainter(self.h))

type QWizardsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QWizard, slot: proc(super: QWizardsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QWizardsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_sharedPainter(self: ptr cQWizard, slot: int): pointer {.exportc: "miqt_exec_callback_QWizard_sharedPainter ".} =
  type Cb = proc(super: QWizardsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QWizard(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QWizard, param1: gen_qevent.QInputMethodEvent): void =


  fQWizard_virtualbase_inputMethodEvent(self.h, param1.h)

type QWizardinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QWizard, slot: proc(super: QWizardinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_inputMethodEvent(self: ptr cQWizard, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizard_inputMethodEvent ".} =
  type Cb = proc(super: QWizardinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QWizard(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QWizard, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQWizard_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWizardinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QWizard, slot: proc(super: QWizardinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QWizardinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_inputMethodQuery(self: ptr cQWizard, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWizard_inputMethodQuery ".} =
  type Cb = proc(super: QWizardinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QWizard(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QWizard, next: bool): bool =


  fQWizard_virtualbase_focusNextPrevChild(self.h, next)

type QWizardfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QWizard, slot: proc(super: QWizardfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_focusNextPrevChild(self: ptr cQWizard, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWizard_focusNextPrevChild ".} =
  type Cb = proc(super: QWizardfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QWizard(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWizard, event: gen_qcoreevent.QTimerEvent): void =


  fQWizard_virtualbase_timerEvent(self.h, event.h)

type QWizardtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWizard, slot: proc(super: QWizardtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_timerEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_timerEvent ".} =
  type Cb = proc(super: QWizardtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWizard(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWizard, event: gen_qcoreevent.QChildEvent): void =


  fQWizard_virtualbase_childEvent(self.h, event.h)

type QWizardchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWizard, slot: proc(super: QWizardchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_childEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_childEvent ".} =
  type Cb = proc(super: QWizardchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWizard(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWizard, event: gen_qcoreevent.QEvent): void =


  fQWizard_virtualbase_customEvent(self.h, event.h)

type QWizardcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWizard, slot: proc(super: QWizardcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_customEvent(self: ptr cQWizard, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizard_customEvent ".} =
  type Cb = proc(super: QWizardcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWizard(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWizard, signal: gen_qmetaobject.QMetaMethod): void =


  fQWizard_virtualbase_connectNotify(self.h, signal.h)

type QWizardconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWizard, slot: proc(super: QWizardconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_connectNotify(self: ptr cQWizard, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWizard_connectNotify ".} =
  type Cb = proc(super: QWizardconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWizard(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWizard, signal: gen_qmetaobject.QMetaMethod): void =


  fQWizard_virtualbase_disconnectNotify(self.h, signal.h)

type QWizarddisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWizard, slot: proc(super: QWizarddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWizarddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizard_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizard_disconnectNotify(self: ptr cQWizard, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWizard_disconnectNotify ".} =
  type Cb = proc(super: QWizarddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWizard(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QWizard) =
  fcQWizard_delete(self.h)

func init*(T: type QWizardPage, h: ptr cQWizardPage): QWizardPage =
  T(h: h)
proc create*(T: type QWizardPage, parent: gen_qwidget.QWidget): QWizardPage =

  QWizardPage.init(fcQWizardPage_new(parent.h))
proc create*(T: type QWizardPage, ): QWizardPage =

  QWizardPage.init(fcQWizardPage_new2())
proc metaObject*(self: QWizardPage, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWizardPage_metaObject(self.h))

proc metacast*(self: QWizardPage, param1: cstring): pointer =

  fcQWizardPage_metacast(self.h, param1)

proc metacall*(self: QWizardPage, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWizardPage_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWizardPage, s: cstring): string =

  let v_ms = fcQWizardPage_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWizardPage, s: cstring): string =

  let v_ms = fcQWizardPage_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: QWizardPage, title: string): void =

  fcQWizardPage_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc title*(self: QWizardPage, ): string =

  let v_ms = fcQWizardPage_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSubTitle*(self: QWizardPage, subTitle: string): void =

  fcQWizardPage_setSubTitle(self.h, struct_miqt_string(data: subTitle, len: csize_t(len(subTitle))))

proc subTitle*(self: QWizardPage, ): string =

  let v_ms = fcQWizardPage_subTitle(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPixmap*(self: QWizardPage, which: QWizardWizardPixmap, pixmap: gen_qpixmap.QPixmap): void =

  fcQWizardPage_setPixmap(self.h, cint(which), pixmap.h)

proc pixmap*(self: QWizardPage, which: QWizardWizardPixmap): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQWizardPage_pixmap(self.h, cint(which)))

proc setFinalPage*(self: QWizardPage, finalPage: bool): void =

  fcQWizardPage_setFinalPage(self.h, finalPage)

proc isFinalPage*(self: QWizardPage, ): bool =

  fcQWizardPage_isFinalPage(self.h)

proc setCommitPage*(self: QWizardPage, commitPage: bool): void =

  fcQWizardPage_setCommitPage(self.h, commitPage)

proc isCommitPage*(self: QWizardPage, ): bool =

  fcQWizardPage_isCommitPage(self.h)

proc setButtonText*(self: QWizardPage, which: QWizardWizardButton, text: string): void =

  fcQWizardPage_setButtonText(self.h, cint(which), struct_miqt_string(data: text, len: csize_t(len(text))))

proc buttonText*(self: QWizardPage, which: QWizardWizardButton): string =

  let v_ms = fcQWizardPage_buttonText(self.h, cint(which))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc initializePage*(self: QWizardPage, ): void =

  fcQWizardPage_initializePage(self.h)

proc cleanupPage*(self: QWizardPage, ): void =

  fcQWizardPage_cleanupPage(self.h)

proc validatePage*(self: QWizardPage, ): bool =

  fcQWizardPage_validatePage(self.h)

proc isComplete*(self: QWizardPage, ): bool =

  fcQWizardPage_isComplete(self.h)

proc nextId*(self: QWizardPage, ): cint =

  fcQWizardPage_nextId(self.h)

proc completeChanged*(self: QWizardPage, ): void =

  fcQWizardPage_completeChanged(self.h)

proc miqt_exec_callback_QWizardPage_completeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncompleteChanged*(self: QWizardPage, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWizardPage_connect_completeChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWizardPage, s: cstring, c: cstring): string =

  let v_ms = fcQWizardPage_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWizardPage, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWizardPage_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWizardPage, s: cstring, c: cstring): string =

  let v_ms = fcQWizardPage_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWizardPage, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWizardPage_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QWizardPage, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWizardPage_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWizardPagemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWizardPage, slot: proc(super: QWizardPagemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_metacall(self: ptr cQWizardPage, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWizardPage_metacall ".} =
  type Cb = proc(super: QWizardPagemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWizardPage(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_initializePage(self: QWizardPage, ): void =


  fQWizardPage_virtualbase_initializePage(self.h)

type QWizardPageinitializePageBase* = proc(): void
proc oninitializePage*(self: QWizardPage, slot: proc(super: QWizardPageinitializePageBase): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageinitializePageBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_initializePage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_initializePage(self: ptr cQWizardPage, slot: int): void {.exportc: "miqt_exec_callback_QWizardPage_initializePage ".} =
  type Cb = proc(super: QWizardPageinitializePageBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_initializePage(QWizardPage(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_cleanupPage(self: QWizardPage, ): void =


  fQWizardPage_virtualbase_cleanupPage(self.h)

type QWizardPagecleanupPageBase* = proc(): void
proc oncleanupPage*(self: QWizardPage, slot: proc(super: QWizardPagecleanupPageBase): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagecleanupPageBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_cleanupPage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_cleanupPage(self: ptr cQWizardPage, slot: int): void {.exportc: "miqt_exec_callback_QWizardPage_cleanupPage ".} =
  type Cb = proc(super: QWizardPagecleanupPageBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_cleanupPage(QWizardPage(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_validatePage(self: QWizardPage, ): bool =


  fQWizardPage_virtualbase_validatePage(self.h)

type QWizardPagevalidatePageBase* = proc(): bool
proc onvalidatePage*(self: QWizardPage, slot: proc(super: QWizardPagevalidatePageBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagevalidatePageBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_validatePage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_validatePage(self: ptr cQWizardPage, slot: int): bool {.exportc: "miqt_exec_callback_QWizardPage_validatePage ".} =
  type Cb = proc(super: QWizardPagevalidatePageBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_validatePage(QWizardPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isComplete(self: QWizardPage, ): bool =


  fQWizardPage_virtualbase_isComplete(self.h)

type QWizardPageisCompleteBase* = proc(): bool
proc onisComplete*(self: QWizardPage, slot: proc(super: QWizardPageisCompleteBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageisCompleteBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_isComplete(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_isComplete(self: ptr cQWizardPage, slot: int): bool {.exportc: "miqt_exec_callback_QWizardPage_isComplete ".} =
  type Cb = proc(super: QWizardPageisCompleteBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isComplete(QWizardPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_nextId(self: QWizardPage, ): cint =


  fQWizardPage_virtualbase_nextId(self.h)

type QWizardPagenextIdBase* = proc(): cint
proc onnextId*(self: QWizardPage, slot: proc(super: QWizardPagenextIdBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagenextIdBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_nextId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_nextId(self: ptr cQWizardPage, slot: int): cint {.exportc: "miqt_exec_callback_QWizardPage_nextId ".} =
  type Cb = proc(super: QWizardPagenextIdBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextId(QWizardPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_devType(self: QWizardPage, ): cint =


  fQWizardPage_virtualbase_devType(self.h)

type QWizardPagedevTypeBase* = proc(): cint
proc ondevType*(self: QWizardPage, slot: proc(super: QWizardPagedevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagedevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_devType(self: ptr cQWizardPage, slot: int): cint {.exportc: "miqt_exec_callback_QWizardPage_devType ".} =
  type Cb = proc(super: QWizardPagedevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QWizardPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QWizardPage, visible: bool): void =


  fQWizardPage_virtualbase_setVisible(self.h, visible)

type QWizardPagesetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QWizardPage, slot: proc(super: QWizardPagesetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagesetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_setVisible(self: ptr cQWizardPage, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QWizardPage_setVisible ".} =
  type Cb = proc(super: QWizardPagesetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QWizardPage(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QWizardPage, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWizardPage_virtualbase_sizeHint(self.h))

type QWizardPagesizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QWizardPage, slot: proc(super: QWizardPagesizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagesizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_sizeHint(self: ptr cQWizardPage, slot: int): pointer {.exportc: "miqt_exec_callback_QWizardPage_sizeHint ".} =
  type Cb = proc(super: QWizardPagesizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QWizardPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QWizardPage, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQWizardPage_virtualbase_minimumSizeHint(self.h))

type QWizardPageminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QWizardPage, slot: proc(super: QWizardPageminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_minimumSizeHint(self: ptr cQWizardPage, slot: int): pointer {.exportc: "miqt_exec_callback_QWizardPage_minimumSizeHint ".} =
  type Cb = proc(super: QWizardPageminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QWizardPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QWizardPage, param1: cint): cint =


  fQWizardPage_virtualbase_heightForWidth(self.h, param1)

type QWizardPageheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QWizardPage, slot: proc(super: QWizardPageheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_heightForWidth(self: ptr cQWizardPage, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWizardPage_heightForWidth ".} =
  type Cb = proc(super: QWizardPageheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QWizardPage(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QWizardPage, ): bool =


  fQWizardPage_virtualbase_hasHeightForWidth(self.h)

type QWizardPagehasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QWizardPage, slot: proc(super: QWizardPagehasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagehasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_hasHeightForWidth(self: ptr cQWizardPage, slot: int): bool {.exportc: "miqt_exec_callback_QWizardPage_hasHeightForWidth ".} =
  type Cb = proc(super: QWizardPagehasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QWizardPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QWizardPage, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQWizardPage_virtualbase_paintEngine(self.h))

type QWizardPagepaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QWizardPage, slot: proc(super: QWizardPagepaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagepaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_paintEngine(self: ptr cQWizardPage, slot: int): pointer {.exportc: "miqt_exec_callback_QWizardPage_paintEngine ".} =
  type Cb = proc(super: QWizardPagepaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QWizardPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QWizardPage, event: gen_qcoreevent.QEvent): bool =


  fQWizardPage_virtualbase_event(self.h, event.h)

type QWizardPageeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWizardPage, slot: proc(super: QWizardPageeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_event(self: ptr cQWizardPage, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWizardPage_event ".} =
  type Cb = proc(super: QWizardPageeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWizardPage(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QWizardPage, event: gen_qevent.QMouseEvent): void =


  fQWizardPage_virtualbase_mousePressEvent(self.h, event.h)

type QWizardPagemousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QWizardPage, slot: proc(super: QWizardPagemousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_mousePressEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_mousePressEvent ".} =
  type Cb = proc(super: QWizardPagemousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QWizardPage, event: gen_qevent.QMouseEvent): void =


  fQWizardPage_virtualbase_mouseReleaseEvent(self.h, event.h)

type QWizardPagemouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QWizardPage, slot: proc(super: QWizardPagemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_mouseReleaseEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_mouseReleaseEvent ".} =
  type Cb = proc(super: QWizardPagemouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QWizardPage, event: gen_qevent.QMouseEvent): void =


  fQWizardPage_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QWizardPagemouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QWizardPage, slot: proc(super: QWizardPagemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_mouseDoubleClickEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QWizardPagemouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QWizardPage, event: gen_qevent.QMouseEvent): void =


  fQWizardPage_virtualbase_mouseMoveEvent(self.h, event.h)

type QWizardPagemouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QWizardPage, slot: proc(super: QWizardPagemouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_mouseMoveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_mouseMoveEvent ".} =
  type Cb = proc(super: QWizardPagemouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QWizardPage, event: gen_qevent.QWheelEvent): void =


  fQWizardPage_virtualbase_wheelEvent(self.h, event.h)

type QWizardPagewheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QWizardPage, slot: proc(super: QWizardPagewheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagewheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_wheelEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_wheelEvent ".} =
  type Cb = proc(super: QWizardPagewheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QWizardPage, event: gen_qevent.QKeyEvent): void =


  fQWizardPage_virtualbase_keyPressEvent(self.h, event.h)

type QWizardPagekeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QWizardPage, slot: proc(super: QWizardPagekeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_keyPressEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_keyPressEvent ".} =
  type Cb = proc(super: QWizardPagekeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QWizardPage, event: gen_qevent.QKeyEvent): void =


  fQWizardPage_virtualbase_keyReleaseEvent(self.h, event.h)

type QWizardPagekeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QWizardPage, slot: proc(super: QWizardPagekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_keyReleaseEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_keyReleaseEvent ".} =
  type Cb = proc(super: QWizardPagekeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QWizardPage, event: gen_qevent.QFocusEvent): void =


  fQWizardPage_virtualbase_focusInEvent(self.h, event.h)

type QWizardPagefocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QWizardPage, slot: proc(super: QWizardPagefocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_focusInEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_focusInEvent ".} =
  type Cb = proc(super: QWizardPagefocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QWizardPage, event: gen_qevent.QFocusEvent): void =


  fQWizardPage_virtualbase_focusOutEvent(self.h, event.h)

type QWizardPagefocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QWizardPage, slot: proc(super: QWizardPagefocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_focusOutEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_focusOutEvent ".} =
  type Cb = proc(super: QWizardPagefocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QWizardPage, event: gen_qcoreevent.QEvent): void =


  fQWizardPage_virtualbase_enterEvent(self.h, event.h)

type QWizardPageenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QWizardPage, slot: proc(super: QWizardPageenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_enterEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_enterEvent ".} =
  type Cb = proc(super: QWizardPageenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QWizardPage, event: gen_qcoreevent.QEvent): void =


  fQWizardPage_virtualbase_leaveEvent(self.h, event.h)

type QWizardPageleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QWizardPage, slot: proc(super: QWizardPageleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_leaveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_leaveEvent ".} =
  type Cb = proc(super: QWizardPageleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QWizardPage, event: gen_qevent.QPaintEvent): void =


  fQWizardPage_virtualbase_paintEvent(self.h, event.h)

type QWizardPagepaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QWizardPage, slot: proc(super: QWizardPagepaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagepaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_paintEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_paintEvent ".} =
  type Cb = proc(super: QWizardPagepaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QWizardPage, event: gen_qevent.QMoveEvent): void =


  fQWizardPage_virtualbase_moveEvent(self.h, event.h)

type QWizardPagemoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QWizardPage, slot: proc(super: QWizardPagemoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagemoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_moveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_moveEvent ".} =
  type Cb = proc(super: QWizardPagemoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QWizardPage, event: gen_qevent.QResizeEvent): void =


  fQWizardPage_virtualbase_resizeEvent(self.h, event.h)

type QWizardPageresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QWizardPage, slot: proc(super: QWizardPageresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_resizeEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_resizeEvent ".} =
  type Cb = proc(super: QWizardPageresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QWizardPage, event: gen_qevent.QCloseEvent): void =


  fQWizardPage_virtualbase_closeEvent(self.h, event.h)

type QWizardPagecloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QWizardPage, slot: proc(super: QWizardPagecloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagecloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_closeEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_closeEvent ".} =
  type Cb = proc(super: QWizardPagecloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QWizardPage, event: gen_qevent.QContextMenuEvent): void =


  fQWizardPage_virtualbase_contextMenuEvent(self.h, event.h)

type QWizardPagecontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QWizardPage, slot: proc(super: QWizardPagecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_contextMenuEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_contextMenuEvent ".} =
  type Cb = proc(super: QWizardPagecontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QWizardPage, event: gen_qevent.QTabletEvent): void =


  fQWizardPage_virtualbase_tabletEvent(self.h, event.h)

type QWizardPagetabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QWizardPage, slot: proc(super: QWizardPagetabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagetabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_tabletEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_tabletEvent ".} =
  type Cb = proc(super: QWizardPagetabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QWizardPage, event: gen_qevent.QActionEvent): void =


  fQWizardPage_virtualbase_actionEvent(self.h, event.h)

type QWizardPageactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QWizardPage, slot: proc(super: QWizardPageactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_actionEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_actionEvent ".} =
  type Cb = proc(super: QWizardPageactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QWizardPage, event: gen_qevent.QDragEnterEvent): void =


  fQWizardPage_virtualbase_dragEnterEvent(self.h, event.h)

type QWizardPagedragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QWizardPage, slot: proc(super: QWizardPagedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_dragEnterEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_dragEnterEvent ".} =
  type Cb = proc(super: QWizardPagedragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QWizardPage, event: gen_qevent.QDragMoveEvent): void =


  fQWizardPage_virtualbase_dragMoveEvent(self.h, event.h)

type QWizardPagedragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QWizardPage, slot: proc(super: QWizardPagedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_dragMoveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_dragMoveEvent ".} =
  type Cb = proc(super: QWizardPagedragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QWizardPage, event: gen_qevent.QDragLeaveEvent): void =


  fQWizardPage_virtualbase_dragLeaveEvent(self.h, event.h)

type QWizardPagedragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QWizardPage, slot: proc(super: QWizardPagedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_dragLeaveEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_dragLeaveEvent ".} =
  type Cb = proc(super: QWizardPagedragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QWizardPage, event: gen_qevent.QDropEvent): void =


  fQWizardPage_virtualbase_dropEvent(self.h, event.h)

type QWizardPagedropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QWizardPage, slot: proc(super: QWizardPagedropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagedropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_dropEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_dropEvent ".} =
  type Cb = proc(super: QWizardPagedropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QWizardPage, event: gen_qevent.QShowEvent): void =


  fQWizardPage_virtualbase_showEvent(self.h, event.h)

type QWizardPageshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QWizardPage, slot: proc(super: QWizardPageshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_showEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_showEvent ".} =
  type Cb = proc(super: QWizardPageshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QWizardPage, event: gen_qevent.QHideEvent): void =


  fQWizardPage_virtualbase_hideEvent(self.h, event.h)

type QWizardPagehideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QWizardPage, slot: proc(super: QWizardPagehideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagehideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_hideEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_hideEvent ".} =
  type Cb = proc(super: QWizardPagehideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QWizardPage, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQWizardPage_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QWizardPagenativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QWizardPage, slot: proc(super: QWizardPagenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_nativeEvent(self: ptr cQWizardPage, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QWizardPage_nativeEvent ".} =
  type Cb = proc(super: QWizardPagenativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QWizardPage(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QWizardPage, param1: gen_qcoreevent.QEvent): void =


  fQWizardPage_virtualbase_changeEvent(self.h, param1.h)

type QWizardPagechangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QWizardPage, slot: proc(super: QWizardPagechangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_changeEvent(self: ptr cQWizardPage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_changeEvent ".} =
  type Cb = proc(super: QWizardPagechangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QWizardPage(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QWizardPage, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQWizardPage_virtualbase_metric(self.h, cint(param1))

type QWizardPagemetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QWizardPage, slot: proc(super: QWizardPagemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_metric(self: ptr cQWizardPage, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QWizardPage_metric ".} =
  type Cb = proc(super: QWizardPagemetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QWizardPage(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QWizardPage, painter: gen_qpainter.QPainter): void =


  fQWizardPage_virtualbase_initPainter(self.h, painter.h)

type QWizardPageinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QWizardPage, slot: proc(super: QWizardPageinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_initPainter(self: ptr cQWizardPage, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_initPainter ".} =
  type Cb = proc(super: QWizardPageinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QWizardPage(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QWizardPage, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQWizardPage_virtualbase_redirected(self.h, offset.h))

type QWizardPageredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QWizardPage, slot: proc(super: QWizardPageredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_redirected(self: ptr cQWizardPage, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QWizardPage_redirected ".} =
  type Cb = proc(super: QWizardPageredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QWizardPage(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QWizardPage, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQWizardPage_virtualbase_sharedPainter(self.h))

type QWizardPagesharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QWizardPage, slot: proc(super: QWizardPagesharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagesharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_sharedPainter(self: ptr cQWizardPage, slot: int): pointer {.exportc: "miqt_exec_callback_QWizardPage_sharedPainter ".} =
  type Cb = proc(super: QWizardPagesharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QWizardPage(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QWizardPage, param1: gen_qevent.QInputMethodEvent): void =


  fQWizardPage_virtualbase_inputMethodEvent(self.h, param1.h)

type QWizardPageinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QWizardPage, slot: proc(super: QWizardPageinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_inputMethodEvent(self: ptr cQWizardPage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_inputMethodEvent ".} =
  type Cb = proc(super: QWizardPageinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QWizardPage(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QWizardPage, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQWizardPage_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QWizardPageinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QWizardPage, slot: proc(super: QWizardPageinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_inputMethodQuery(self: ptr cQWizardPage, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QWizardPage_inputMethodQuery ".} =
  type Cb = proc(super: QWizardPageinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QWizardPage(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QWizardPage, next: bool): bool =


  fQWizardPage_virtualbase_focusNextPrevChild(self.h, next)

type QWizardPagefocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QWizardPage, slot: proc(super: QWizardPagefocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagefocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_focusNextPrevChild(self: ptr cQWizardPage, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QWizardPage_focusNextPrevChild ".} =
  type Cb = proc(super: QWizardPagefocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QWizardPage(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWizardPage, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWizardPage_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWizardPageeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWizardPage, slot: proc(super: QWizardPageeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_eventFilter(self: ptr cQWizardPage, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWizardPage_eventFilter ".} =
  type Cb = proc(super: QWizardPageeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWizardPage(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWizardPage, event: gen_qcoreevent.QTimerEvent): void =


  fQWizardPage_virtualbase_timerEvent(self.h, event.h)

type QWizardPagetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWizardPage, slot: proc(super: QWizardPagetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_timerEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_timerEvent ".} =
  type Cb = proc(super: QWizardPagetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWizardPage, event: gen_qcoreevent.QChildEvent): void =


  fQWizardPage_virtualbase_childEvent(self.h, event.h)

type QWizardPagechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWizardPage, slot: proc(super: QWizardPagechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_childEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_childEvent ".} =
  type Cb = proc(super: QWizardPagechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWizardPage, event: gen_qcoreevent.QEvent): void =


  fQWizardPage_virtualbase_customEvent(self.h, event.h)

type QWizardPagecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWizardPage, slot: proc(super: QWizardPagecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_customEvent(self: ptr cQWizardPage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_customEvent ".} =
  type Cb = proc(super: QWizardPagecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWizardPage(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWizardPage, signal: gen_qmetaobject.QMetaMethod): void =


  fQWizardPage_virtualbase_connectNotify(self.h, signal.h)

type QWizardPageconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWizardPage, slot: proc(super: QWizardPageconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPageconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_connectNotify(self: ptr cQWizardPage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_connectNotify ".} =
  type Cb = proc(super: QWizardPageconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWizardPage(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWizardPage, signal: gen_qmetaobject.QMetaMethod): void =


  fQWizardPage_virtualbase_disconnectNotify(self.h, signal.h)

type QWizardPagedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWizardPage, slot: proc(super: QWizardPagedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWizardPagedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWizardPage_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWizardPage_disconnectNotify(self: ptr cQWizardPage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWizardPage_disconnectNotify ".} =
  type Cb = proc(super: QWizardPagedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWizardPage(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QWizardPage) =
  fcQWizardPage_delete(self.h)
