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
{.compile("gen_qmessagebox.cpp", cflags).}


type QMessageBoxIcon* = cint
const
  QMessageBoxNoIcon* = 0
  QMessageBoxInformation* = 1
  QMessageBoxWarning* = 2
  QMessageBoxCritical* = 3
  QMessageBoxQuestion* = 4



type QMessageBoxButtonRole* = cint
const
  QMessageBoxInvalidRole* = -1
  QMessageBoxAcceptRole* = 0
  QMessageBoxRejectRole* = 1
  QMessageBoxDestructiveRole* = 2
  QMessageBoxActionRole* = 3
  QMessageBoxHelpRole* = 4
  QMessageBoxYesRole* = 5
  QMessageBoxNoRole* = 6
  QMessageBoxResetRole* = 7
  QMessageBoxApplyRole* = 8
  QMessageBoxNRoles* = 9



type QMessageBoxStandardButton* = cint
const
  QMessageBoxNoButton* = 0
  QMessageBoxOk* = 1024
  QMessageBoxSave* = 2048
  QMessageBoxSaveAll* = 4096
  QMessageBoxOpen* = 8192
  QMessageBoxYes* = 16384
  QMessageBoxYesToAll* = 32768
  QMessageBoxNo* = 65536
  QMessageBoxNoToAll* = 131072
  QMessageBoxAbort* = 262144
  QMessageBoxRetry* = 524288
  QMessageBoxIgnore* = 1048576
  QMessageBoxClose* = 2097152
  QMessageBoxCancel* = 4194304
  QMessageBoxDiscard* = 8388608
  QMessageBoxHelp* = 16777216
  QMessageBoxApply* = 33554432
  QMessageBoxReset* = 67108864
  QMessageBoxRestoreDefaults* = 134217728
  QMessageBoxFirstButton* = 1024
  QMessageBoxLastButton* = 134217728
  QMessageBoxYesAll* = 32768
  QMessageBoxNoAll* = 131072
  QMessageBoxDefault* = 256
  QMessageBoxEscape* = 512
  QMessageBoxFlagMask* = 768
  QMessageBoxButtonMask* = -769



import gen_qmessagebox_types
export gen_qmessagebox_types

import
  gen_qabstractbutton,
  gen_qcheckbox,
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
  gen_qpushbutton,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractbutton,
  gen_qcheckbox,
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
  gen_qpushbutton,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQMessageBox*{.exportc: "QMessageBox", incompleteStruct.} = object

proc fcQMessageBox_new(parent: pointer): ptr cQMessageBox {.importc: "QMessageBox_new".}
proc fcQMessageBox_new2(): ptr cQMessageBox {.importc: "QMessageBox_new2".}
proc fcQMessageBox_new3(icon: cint, title: struct_miqt_string, text: struct_miqt_string): ptr cQMessageBox {.importc: "QMessageBox_new3".}
proc fcQMessageBox_new4(title: struct_miqt_string, text: struct_miqt_string, icon: cint, button0: cint, button1: cint, button2: cint): ptr cQMessageBox {.importc: "QMessageBox_new4".}
proc fcQMessageBox_new5(icon: cint, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): ptr cQMessageBox {.importc: "QMessageBox_new5".}
proc fcQMessageBox_new6(icon: cint, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, parent: pointer): ptr cQMessageBox {.importc: "QMessageBox_new6".}
proc fcQMessageBox_new7(icon: cint, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, parent: pointer, flags: cint): ptr cQMessageBox {.importc: "QMessageBox_new7".}
proc fcQMessageBox_new8(title: struct_miqt_string, text: struct_miqt_string, icon: cint, button0: cint, button1: cint, button2: cint, parent: pointer): ptr cQMessageBox {.importc: "QMessageBox_new8".}
proc fcQMessageBox_new9(title: struct_miqt_string, text: struct_miqt_string, icon: cint, button0: cint, button1: cint, button2: cint, parent: pointer, f: cint): ptr cQMessageBox {.importc: "QMessageBox_new9".}
proc fcQMessageBox_metaObject(self: pointer, ): pointer {.importc: "QMessageBox_metaObject".}
proc fcQMessageBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QMessageBox_metacast".}
proc fcQMessageBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMessageBox_metacall".}
proc fcQMessageBox_tr(s: cstring): struct_miqt_string {.importc: "QMessageBox_tr".}
proc fcQMessageBox_addButton(self: pointer, button: pointer, role: cint): void {.importc: "QMessageBox_addButton".}
proc fcQMessageBox_addButton2(self: pointer, text: struct_miqt_string, role: cint): pointer {.importc: "QMessageBox_addButton2".}
proc fcQMessageBox_addButtonWithButton(self: pointer, button: cint): pointer {.importc: "QMessageBox_addButtonWithButton".}
proc fcQMessageBox_removeButton(self: pointer, button: pointer): void {.importc: "QMessageBox_removeButton".}
proc fcQMessageBox_buttons(self: pointer, ): struct_miqt_array {.importc: "QMessageBox_buttons".}
proc fcQMessageBox_buttonRole(self: pointer, button: pointer): cint {.importc: "QMessageBox_buttonRole".}
proc fcQMessageBox_setStandardButtons(self: pointer, buttons: cint): void {.importc: "QMessageBox_setStandardButtons".}
proc fcQMessageBox_standardButtons(self: pointer, ): cint {.importc: "QMessageBox_standardButtons".}
proc fcQMessageBox_standardButton(self: pointer, button: pointer): cint {.importc: "QMessageBox_standardButton".}
proc fcQMessageBox_button(self: pointer, which: cint): pointer {.importc: "QMessageBox_button".}
proc fcQMessageBox_defaultButton(self: pointer, ): pointer {.importc: "QMessageBox_defaultButton".}
proc fcQMessageBox_setDefaultButton(self: pointer, button: pointer): void {.importc: "QMessageBox_setDefaultButton".}
proc fcQMessageBox_setDefaultButtonWithButton(self: pointer, button: cint): void {.importc: "QMessageBox_setDefaultButtonWithButton".}
proc fcQMessageBox_escapeButton(self: pointer, ): pointer {.importc: "QMessageBox_escapeButton".}
proc fcQMessageBox_setEscapeButton(self: pointer, button: pointer): void {.importc: "QMessageBox_setEscapeButton".}
proc fcQMessageBox_setEscapeButtonWithButton(self: pointer, button: cint): void {.importc: "QMessageBox_setEscapeButtonWithButton".}
proc fcQMessageBox_clickedButton(self: pointer, ): pointer {.importc: "QMessageBox_clickedButton".}
proc fcQMessageBox_text(self: pointer, ): struct_miqt_string {.importc: "QMessageBox_text".}
proc fcQMessageBox_setText(self: pointer, text: struct_miqt_string): void {.importc: "QMessageBox_setText".}
proc fcQMessageBox_icon(self: pointer, ): cint {.importc: "QMessageBox_icon".}
proc fcQMessageBox_setIcon(self: pointer, icon: cint): void {.importc: "QMessageBox_setIcon".}
proc fcQMessageBox_iconPixmap(self: pointer, ): pointer {.importc: "QMessageBox_iconPixmap".}
proc fcQMessageBox_setIconPixmap(self: pointer, pixmap: pointer): void {.importc: "QMessageBox_setIconPixmap".}
proc fcQMessageBox_textFormat(self: pointer, ): cint {.importc: "QMessageBox_textFormat".}
proc fcQMessageBox_setTextFormat(self: pointer, format: cint): void {.importc: "QMessageBox_setTextFormat".}
proc fcQMessageBox_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QMessageBox_setTextInteractionFlags".}
proc fcQMessageBox_textInteractionFlags(self: pointer, ): cint {.importc: "QMessageBox_textInteractionFlags".}
proc fcQMessageBox_setCheckBox(self: pointer, cb: pointer): void {.importc: "QMessageBox_setCheckBox".}
proc fcQMessageBox_checkBox(self: pointer, ): pointer {.importc: "QMessageBox_checkBox".}
proc fcQMessageBox_information(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): cint {.importc: "QMessageBox_information".}
proc fcQMessageBox_information2(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint): cint {.importc: "QMessageBox_information2".}
proc fcQMessageBox_question(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): cint {.importc: "QMessageBox_question".}
proc fcQMessageBox_question2(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_question2".}
proc fcQMessageBox_warning(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): cint {.importc: "QMessageBox_warning".}
proc fcQMessageBox_warning2(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_warning2".}
proc fcQMessageBox_critical(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): cint {.importc: "QMessageBox_critical".}
proc fcQMessageBox_critical2(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_critical2".}
proc fcQMessageBox_about(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): void {.importc: "QMessageBox_about".}
proc fcQMessageBox_aboutQt(parent: pointer): void {.importc: "QMessageBox_aboutQt".}
proc fcQMessageBox_information3(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint): cint {.importc: "QMessageBox_information3".}
proc fcQMessageBox_information4(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string): cint {.importc: "QMessageBox_information4".}
proc fcQMessageBox_question3(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint): cint {.importc: "QMessageBox_question3".}
proc fcQMessageBox_question4(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string): cint {.importc: "QMessageBox_question4".}
proc fcQMessageBox_warning3(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_warning3".}
proc fcQMessageBox_warning4(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string): cint {.importc: "QMessageBox_warning4".}
proc fcQMessageBox_critical3(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_critical3".}
proc fcQMessageBox_critical4(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string): cint {.importc: "QMessageBox_critical4".}
proc fcQMessageBox_buttonText(self: pointer, button: cint): struct_miqt_string {.importc: "QMessageBox_buttonText".}
proc fcQMessageBox_setButtonText(self: pointer, button: cint, text: struct_miqt_string): void {.importc: "QMessageBox_setButtonText".}
proc fcQMessageBox_informativeText(self: pointer, ): struct_miqt_string {.importc: "QMessageBox_informativeText".}
proc fcQMessageBox_setInformativeText(self: pointer, text: struct_miqt_string): void {.importc: "QMessageBox_setInformativeText".}
proc fcQMessageBox_detailedText(self: pointer, ): struct_miqt_string {.importc: "QMessageBox_detailedText".}
proc fcQMessageBox_setDetailedText(self: pointer, text: struct_miqt_string): void {.importc: "QMessageBox_setDetailedText".}
proc fcQMessageBox_setWindowTitle(self: pointer, title: struct_miqt_string): void {.importc: "QMessageBox_setWindowTitle".}
proc fcQMessageBox_setWindowModality(self: pointer, windowModality: cint): void {.importc: "QMessageBox_setWindowModality".}
proc fcQMessageBox_standardIcon(icon: cint): pointer {.importc: "QMessageBox_standardIcon".}
proc fcQMessageBox_buttonClicked(self: pointer, button: pointer): void {.importc: "QMessageBox_buttonClicked".}
proc fQMessageBox_connect_buttonClicked(self: pointer, slot: int) {.importc: "QMessageBox_connect_buttonClicked".}
proc fcQMessageBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMessageBox_tr2".}
proc fcQMessageBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMessageBox_tr3".}
proc fcQMessageBox_information42(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): cint {.importc: "QMessageBox_information42".}
proc fcQMessageBox_information5(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, defaultButton: cint): cint {.importc: "QMessageBox_information5".}
proc fcQMessageBox_information52(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_information52".}
proc fcQMessageBox_question42(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): cint {.importc: "QMessageBox_question42".}
proc fcQMessageBox_question5(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, defaultButton: cint): cint {.importc: "QMessageBox_question5".}
proc fcQMessageBox_warning42(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): cint {.importc: "QMessageBox_warning42".}
proc fcQMessageBox_warning5(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, defaultButton: cint): cint {.importc: "QMessageBox_warning5".}
proc fcQMessageBox_critical42(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): cint {.importc: "QMessageBox_critical42".}
proc fcQMessageBox_critical5(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, defaultButton: cint): cint {.importc: "QMessageBox_critical5".}
proc fcQMessageBox_aboutQt2(parent: pointer, title: struct_miqt_string): void {.importc: "QMessageBox_aboutQt2".}
proc fcQMessageBox_information53(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_information53".}
proc fcQMessageBox_information6(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint, button2: cint): cint {.importc: "QMessageBox_information6".}
proc fcQMessageBox_information54(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string): cint {.importc: "QMessageBox_information54".}
proc fcQMessageBox_information62(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string): cint {.importc: "QMessageBox_information62".}
proc fcQMessageBox_information7(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint): cint {.importc: "QMessageBox_information7".}
proc fcQMessageBox_information8(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.importc: "QMessageBox_information8".}
proc fcQMessageBox_question52(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_question52".}
proc fcQMessageBox_question6(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint, button2: cint): cint {.importc: "QMessageBox_question6".}
proc fcQMessageBox_question53(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string): cint {.importc: "QMessageBox_question53".}
proc fcQMessageBox_question62(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string): cint {.importc: "QMessageBox_question62".}
proc fcQMessageBox_question7(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint): cint {.importc: "QMessageBox_question7".}
proc fcQMessageBox_question8(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.importc: "QMessageBox_question8".}
proc fcQMessageBox_warning6(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint, button2: cint): cint {.importc: "QMessageBox_warning6".}
proc fcQMessageBox_warning52(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string): cint {.importc: "QMessageBox_warning52".}
proc fcQMessageBox_warning62(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string): cint {.importc: "QMessageBox_warning62".}
proc fcQMessageBox_warning7(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint): cint {.importc: "QMessageBox_warning7".}
proc fcQMessageBox_warning8(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.importc: "QMessageBox_warning8".}
proc fcQMessageBox_critical6(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint, button2: cint): cint {.importc: "QMessageBox_critical6".}
proc fcQMessageBox_critical52(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string): cint {.importc: "QMessageBox_critical52".}
proc fcQMessageBox_critical62(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string): cint {.importc: "QMessageBox_critical62".}
proc fcQMessageBox_critical7(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint): cint {.importc: "QMessageBox_critical7".}
proc fcQMessageBox_critical8(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.importc: "QMessageBox_critical8".}
proc fQMessageBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMessageBox_virtualbase_metacall".}
proc fcQMessageBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_metacall".}
proc fQMessageBox_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QMessageBox_virtualbase_event".}
proc fcQMessageBox_override_virtual_event(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_event".}
proc fQMessageBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_resizeEvent".}
proc fcQMessageBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_resizeEvent".}
proc fQMessageBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_showEvent".}
proc fcQMessageBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_showEvent".}
proc fQMessageBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_closeEvent".}
proc fcQMessageBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_closeEvent".}
proc fQMessageBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_keyPressEvent".}
proc fcQMessageBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_keyPressEvent".}
proc fQMessageBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_changeEvent".}
proc fcQMessageBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_changeEvent".}
proc fQMessageBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMessageBox_virtualbase_setVisible".}
proc fcQMessageBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_setVisible".}
proc fQMessageBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMessageBox_virtualbase_sizeHint".}
proc fcQMessageBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_sizeHint".}
proc fQMessageBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMessageBox_virtualbase_minimumSizeHint".}
proc fcQMessageBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_minimumSizeHint".}
proc fQMessageBox_virtualbase_open(self: pointer, ): void{.importc: "QMessageBox_virtualbase_open".}
proc fcQMessageBox_override_virtual_open(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_open".}
proc fQMessageBox_virtualbase_exec(self: pointer, ): cint{.importc: "QMessageBox_virtualbase_exec".}
proc fcQMessageBox_override_virtual_exec(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_exec".}
proc fQMessageBox_virtualbase_done(self: pointer, param1: cint): void{.importc: "QMessageBox_virtualbase_done".}
proc fcQMessageBox_override_virtual_done(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_done".}
proc fQMessageBox_virtualbase_accept(self: pointer, ): void{.importc: "QMessageBox_virtualbase_accept".}
proc fcQMessageBox_override_virtual_accept(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_accept".}
proc fQMessageBox_virtualbase_reject(self: pointer, ): void{.importc: "QMessageBox_virtualbase_reject".}
proc fcQMessageBox_override_virtual_reject(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_reject".}
proc fQMessageBox_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QMessageBox_virtualbase_contextMenuEvent".}
proc fcQMessageBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_contextMenuEvent".}
proc fQMessageBox_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QMessageBox_virtualbase_eventFilter".}
proc fcQMessageBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_eventFilter".}
proc fQMessageBox_virtualbase_devType(self: pointer, ): cint{.importc: "QMessageBox_virtualbase_devType".}
proc fcQMessageBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_devType".}
proc fQMessageBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMessageBox_virtualbase_heightForWidth".}
proc fcQMessageBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_heightForWidth".}
proc fQMessageBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMessageBox_virtualbase_hasHeightForWidth".}
proc fcQMessageBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_hasHeightForWidth".}
proc fQMessageBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMessageBox_virtualbase_paintEngine".}
proc fcQMessageBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_paintEngine".}
proc fQMessageBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_mousePressEvent".}
proc fcQMessageBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_mousePressEvent".}
proc fQMessageBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_mouseReleaseEvent".}
proc fcQMessageBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_mouseReleaseEvent".}
proc fQMessageBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_mouseDoubleClickEvent".}
proc fcQMessageBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_mouseDoubleClickEvent".}
proc fQMessageBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_mouseMoveEvent".}
proc fcQMessageBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_mouseMoveEvent".}
proc fQMessageBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_wheelEvent".}
proc fcQMessageBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_wheelEvent".}
proc fQMessageBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_keyReleaseEvent".}
proc fcQMessageBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_keyReleaseEvent".}
proc fQMessageBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_focusInEvent".}
proc fcQMessageBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_focusInEvent".}
proc fQMessageBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_focusOutEvent".}
proc fcQMessageBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_focusOutEvent".}
proc fQMessageBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_enterEvent".}
proc fcQMessageBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_enterEvent".}
proc fQMessageBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_leaveEvent".}
proc fcQMessageBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_leaveEvent".}
proc fQMessageBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_paintEvent".}
proc fcQMessageBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_paintEvent".}
proc fQMessageBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_moveEvent".}
proc fcQMessageBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_moveEvent".}
proc fQMessageBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_tabletEvent".}
proc fcQMessageBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_tabletEvent".}
proc fQMessageBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_actionEvent".}
proc fcQMessageBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_actionEvent".}
proc fQMessageBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_dragEnterEvent".}
proc fcQMessageBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_dragEnterEvent".}
proc fQMessageBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_dragMoveEvent".}
proc fcQMessageBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_dragMoveEvent".}
proc fQMessageBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_dragLeaveEvent".}
proc fcQMessageBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_dragLeaveEvent".}
proc fQMessageBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_dropEvent".}
proc fcQMessageBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_dropEvent".}
proc fQMessageBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_hideEvent".}
proc fcQMessageBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_hideEvent".}
proc fQMessageBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QMessageBox_virtualbase_nativeEvent".}
proc fcQMessageBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_nativeEvent".}
proc fQMessageBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMessageBox_virtualbase_metric".}
proc fcQMessageBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_metric".}
proc fQMessageBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMessageBox_virtualbase_initPainter".}
proc fcQMessageBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_initPainter".}
proc fQMessageBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMessageBox_virtualbase_redirected".}
proc fcQMessageBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_redirected".}
proc fQMessageBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMessageBox_virtualbase_sharedPainter".}
proc fcQMessageBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_sharedPainter".}
proc fQMessageBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMessageBox_virtualbase_inputMethodEvent".}
proc fcQMessageBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_inputMethodEvent".}
proc fQMessageBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMessageBox_virtualbase_inputMethodQuery".}
proc fcQMessageBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_inputMethodQuery".}
proc fQMessageBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMessageBox_virtualbase_focusNextPrevChild".}
proc fcQMessageBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_focusNextPrevChild".}
proc fQMessageBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_timerEvent".}
proc fcQMessageBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_timerEvent".}
proc fQMessageBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_childEvent".}
proc fcQMessageBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_childEvent".}
proc fQMessageBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_customEvent".}
proc fcQMessageBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_customEvent".}
proc fQMessageBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMessageBox_virtualbase_connectNotify".}
proc fcQMessageBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_connectNotify".}
proc fQMessageBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMessageBox_virtualbase_disconnectNotify".}
proc fcQMessageBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_disconnectNotify".}
proc fcQMessageBox_delete(self: pointer) {.importc: "QMessageBox_delete".}


func init*(T: type QMessageBox, h: ptr cQMessageBox): QMessageBox =
  T(h: h)
proc create*(T: type QMessageBox, parent: gen_qwidget.QWidget): QMessageBox =

  QMessageBox.init(fcQMessageBox_new(parent.h))
proc create*(T: type QMessageBox, ): QMessageBox =

  QMessageBox.init(fcQMessageBox_new2())
proc create*(T: type QMessageBox, icon: QMessageBoxIcon, title: string, text: string): QMessageBox =

  QMessageBox.init(fcQMessageBox_new3(cint(icon), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QMessageBox, title: string, text: string, icon: QMessageBoxIcon, button0: cint, button1: cint, button2: cint): QMessageBox =

  QMessageBox.init(fcQMessageBox_new4(struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(icon), button0, button1, button2))
proc create*(T: type QMessageBox, icon: QMessageBoxIcon, title: string, text: string, buttons: QMessageBoxStandardButton): QMessageBox =

  QMessageBox.init(fcQMessageBox_new5(cint(icon), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))
proc create*(T: type QMessageBox, icon: QMessageBoxIcon, title: string, text: string, buttons: QMessageBoxStandardButton, parent: gen_qwidget.QWidget): QMessageBox =

  QMessageBox.init(fcQMessageBox_new6(cint(icon), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), parent.h))
proc create*(T: type QMessageBox, icon: QMessageBoxIcon, title: string, text: string, buttons: QMessageBoxStandardButton, parent: gen_qwidget.QWidget, flags: gen_qnamespace.WindowType): QMessageBox =

  QMessageBox.init(fcQMessageBox_new7(cint(icon), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), parent.h, cint(flags)))
proc create*(T: type QMessageBox, title: string, text: string, icon: QMessageBoxIcon, button0: cint, button1: cint, button2: cint, parent: gen_qwidget.QWidget): QMessageBox =

  QMessageBox.init(fcQMessageBox_new8(struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(icon), button0, button1, button2, parent.h))
proc create*(T: type QMessageBox, title: string, text: string, icon: QMessageBoxIcon, button0: cint, button1: cint, button2: cint, parent: gen_qwidget.QWidget, f: gen_qnamespace.WindowType): QMessageBox =

  QMessageBox.init(fcQMessageBox_new9(struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(icon), button0, button1, button2, parent.h, cint(f)))
proc metaObject*(self: QMessageBox, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMessageBox_metaObject(self.h))

proc metacast*(self: QMessageBox, param1: cstring): pointer =

  fcQMessageBox_metacast(self.h, param1)

proc metacall*(self: QMessageBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMessageBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMessageBox, s: cstring): string =

  let v_ms = fcQMessageBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addButton*(self: QMessageBox, button: gen_qabstractbutton.QAbstractButton, role: QMessageBoxButtonRole): void =

  fcQMessageBox_addButton(self.h, button.h, cint(role))

proc addButton2*(self: QMessageBox, text: string, role: QMessageBoxButtonRole): gen_qpushbutton.QPushButton =

  gen_qpushbutton.QPushButton(h: fcQMessageBox_addButton2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(role)))

proc addButtonWithButton*(self: QMessageBox, button: QMessageBoxStandardButton): gen_qpushbutton.QPushButton =

  gen_qpushbutton.QPushButton(h: fcQMessageBox_addButtonWithButton(self.h, cint(button)))

proc removeButton*(self: QMessageBox, button: gen_qabstractbutton.QAbstractButton): void =

  fcQMessageBox_removeButton(self.h, button.h)

proc buttons*(self: QMessageBox, ): seq[gen_qabstractbutton.QAbstractButton] =

  var v_ma = fcQMessageBox_buttons(self.h)
  var vx_ret = newSeq[gen_qabstractbutton.QAbstractButton](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractbutton.QAbstractButton(h: v_outCast[i])
  vx_ret

proc buttonRole*(self: QMessageBox, button: gen_qabstractbutton.QAbstractButton): QMessageBoxButtonRole =

  QMessageBoxButtonRole(fcQMessageBox_buttonRole(self.h, button.h))

proc setStandardButtons*(self: QMessageBox, buttons: QMessageBoxStandardButton): void =

  fcQMessageBox_setStandardButtons(self.h, cint(buttons))

proc standardButtons*(self: QMessageBox, ): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_standardButtons(self.h))

proc standardButton*(self: QMessageBox, button: gen_qabstractbutton.QAbstractButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_standardButton(self.h, button.h))

proc button*(self: QMessageBox, which: QMessageBoxStandardButton): gen_qabstractbutton.QAbstractButton =

  gen_qabstractbutton.QAbstractButton(h: fcQMessageBox_button(self.h, cint(which)))

proc defaultButton*(self: QMessageBox, ): gen_qpushbutton.QPushButton =

  gen_qpushbutton.QPushButton(h: fcQMessageBox_defaultButton(self.h))

proc setDefaultButton*(self: QMessageBox, button: gen_qpushbutton.QPushButton): void =

  fcQMessageBox_setDefaultButton(self.h, button.h)

proc setDefaultButtonWithButton*(self: QMessageBox, button: QMessageBoxStandardButton): void =

  fcQMessageBox_setDefaultButtonWithButton(self.h, cint(button))

proc escapeButton*(self: QMessageBox, ): gen_qabstractbutton.QAbstractButton =

  gen_qabstractbutton.QAbstractButton(h: fcQMessageBox_escapeButton(self.h))

proc setEscapeButton*(self: QMessageBox, button: gen_qabstractbutton.QAbstractButton): void =

  fcQMessageBox_setEscapeButton(self.h, button.h)

proc setEscapeButtonWithButton*(self: QMessageBox, button: QMessageBoxStandardButton): void =

  fcQMessageBox_setEscapeButtonWithButton(self.h, cint(button))

proc clickedButton*(self: QMessageBox, ): gen_qabstractbutton.QAbstractButton =

  gen_qabstractbutton.QAbstractButton(h: fcQMessageBox_clickedButton(self.h))

proc text*(self: QMessageBox, ): string =

  let v_ms = fcQMessageBox_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QMessageBox, text: string): void =

  fcQMessageBox_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: QMessageBox, ): QMessageBoxIcon =

  QMessageBoxIcon(fcQMessageBox_icon(self.h))

proc setIcon*(self: QMessageBox, icon: QMessageBoxIcon): void =

  fcQMessageBox_setIcon(self.h, cint(icon))

proc iconPixmap*(self: QMessageBox, ): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQMessageBox_iconPixmap(self.h))

proc setIconPixmap*(self: QMessageBox, pixmap: gen_qpixmap.QPixmap): void =

  fcQMessageBox_setIconPixmap(self.h, pixmap.h)

proc textFormat*(self: QMessageBox, ): gen_qnamespace.TextFormat =

  gen_qnamespace.TextFormat(fcQMessageBox_textFormat(self.h))

proc setTextFormat*(self: QMessageBox, format: gen_qnamespace.TextFormat): void =

  fcQMessageBox_setTextFormat(self.h, cint(format))

proc setTextInteractionFlags*(self: QMessageBox, flags: gen_qnamespace.TextInteractionFlag): void =

  fcQMessageBox_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: QMessageBox, ): gen_qnamespace.TextInteractionFlag =

  gen_qnamespace.TextInteractionFlag(fcQMessageBox_textInteractionFlags(self.h))

proc setCheckBox*(self: QMessageBox, cb: gen_qcheckbox.QCheckBox): void =

  fcQMessageBox_setCheckBox(self.h, cb.h)

proc checkBox*(self: QMessageBox, ): gen_qcheckbox.QCheckBox =

  gen_qcheckbox.QCheckBox(h: fcQMessageBox_checkBox(self.h))

proc information*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_information(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc information2*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_information2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0)))

proc question*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_question(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc question2*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: QMessageBoxStandardButton, button1: QMessageBoxStandardButton): cint =

  fcQMessageBox_question2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0), cint(button1))

proc warning*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_warning(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc warning2*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: QMessageBoxStandardButton, button1: QMessageBoxStandardButton): cint =

  fcQMessageBox_warning2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0), cint(button1))

proc critical*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_critical(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc critical2*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: QMessageBoxStandardButton, button1: QMessageBoxStandardButton): cint =

  fcQMessageBox_critical2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0), cint(button1))

proc about*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string): void =

  fcQMessageBox_about(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))))

proc aboutQt*(_: type QMessageBox, parent: gen_qwidget.QWidget): void =

  fcQMessageBox_aboutQt(parent.h)

proc information3*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint): cint =

  fcQMessageBox_information3(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0)

proc information4*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string): cint =

  fcQMessageBox_information4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))))

proc question3*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint): cint =

  fcQMessageBox_question3(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0)

proc question4*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string): cint =

  fcQMessageBox_question4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))))

proc warning3*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint, button1: cint): cint =

  fcQMessageBox_warning3(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1)

proc warning4*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string): cint =

  fcQMessageBox_warning4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))))

proc critical3*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint, button1: cint): cint =

  fcQMessageBox_critical3(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1)

proc critical4*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string): cint =

  fcQMessageBox_critical4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))))

proc buttonText*(self: QMessageBox, button: cint): string =

  let v_ms = fcQMessageBox_buttonText(self.h, button)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setButtonText*(self: QMessageBox, button: cint, text: string): void =

  fcQMessageBox_setButtonText(self.h, button, struct_miqt_string(data: text, len: csize_t(len(text))))

proc informativeText*(self: QMessageBox, ): string =

  let v_ms = fcQMessageBox_informativeText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setInformativeText*(self: QMessageBox, text: string): void =

  fcQMessageBox_setInformativeText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc detailedText*(self: QMessageBox, ): string =

  let v_ms = fcQMessageBox_detailedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDetailedText*(self: QMessageBox, text: string): void =

  fcQMessageBox_setDetailedText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setWindowTitle*(self: QMessageBox, title: string): void =

  fcQMessageBox_setWindowTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc setWindowModality*(self: QMessageBox, windowModality: gen_qnamespace.WindowModality): void =

  fcQMessageBox_setWindowModality(self.h, cint(windowModality))

proc standardIcon*(_: type QMessageBox, icon: QMessageBoxIcon): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQMessageBox_standardIcon(cint(icon)))

proc buttonClicked*(self: QMessageBox, button: gen_qabstractbutton.QAbstractButton): void =

  fcQMessageBox_buttonClicked(self.h, button.h)

proc miqt_exec_callback_QMessageBox_buttonClicked(slot: int, button: pointer) {.exportc.} =
  type Cb = proc(button: gen_qabstractbutton.QAbstractButton)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton.QAbstractButton(h: button)


  nimfunc[](slotval1)

proc onbuttonClicked*(self: QMessageBox, slot: proc(button: gen_qabstractbutton.QAbstractButton)) =
  type Cb = proc(button: gen_qabstractbutton.QAbstractButton)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMessageBox_connect_buttonClicked(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMessageBox, s: cstring, c: cstring): string =

  let v_ms = fcQMessageBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMessageBox, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMessageBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc information42*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, buttons: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_information42(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))

proc information5*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, buttons: QMessageBoxStandardButton, defaultButton: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_information5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc information52*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: QMessageBoxStandardButton, button1: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_information52(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0), cint(button1)))

proc question42*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, buttons: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_question42(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))

proc question5*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, buttons: QMessageBoxStandardButton, defaultButton: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_question5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc warning42*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, buttons: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_warning42(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))

proc warning5*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, buttons: QMessageBoxStandardButton, defaultButton: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_warning5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc critical42*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, buttons: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_critical42(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))

proc critical5*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, buttons: QMessageBoxStandardButton, defaultButton: QMessageBoxStandardButton): QMessageBoxStandardButton =

  QMessageBoxStandardButton(fcQMessageBox_critical5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc aboutQt2*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string): void =

  fcQMessageBox_aboutQt2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc information53*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint, button1: cint): cint =

  fcQMessageBox_information53(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1)

proc information6*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint, button1: cint, button2: cint): cint =

  fcQMessageBox_information6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1, button2)

proc information54*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string): cint =

  fcQMessageBox_information54(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))))

proc information62*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string): cint =

  fcQMessageBox_information62(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))))

proc information7*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint): cint =

  fcQMessageBox_information7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber)

proc information8*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint =

  fcQMessageBox_information8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc question52*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint, button1: cint): cint =

  fcQMessageBox_question52(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1)

proc question6*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint, button1: cint, button2: cint): cint =

  fcQMessageBox_question6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1, button2)

proc question53*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string): cint =

  fcQMessageBox_question53(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))))

proc question62*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string): cint =

  fcQMessageBox_question62(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))))

proc question7*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint): cint =

  fcQMessageBox_question7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber)

proc question8*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint =

  fcQMessageBox_question8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc warning6*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint, button1: cint, button2: cint): cint =

  fcQMessageBox_warning6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1, button2)

proc warning52*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string): cint =

  fcQMessageBox_warning52(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))))

proc warning62*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string): cint =

  fcQMessageBox_warning62(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))))

proc warning7*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint): cint =

  fcQMessageBox_warning7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber)

proc warning8*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint =

  fcQMessageBox_warning8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc critical6*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0: cint, button1: cint, button2: cint): cint =

  fcQMessageBox_critical6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1, button2)

proc critical52*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string): cint =

  fcQMessageBox_critical52(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))))

proc critical62*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string): cint =

  fcQMessageBox_critical62(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))))

proc critical7*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint): cint =

  fcQMessageBox_critical7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber)

proc critical8*(_: type QMessageBox, parent: gen_qwidget.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint =

  fcQMessageBox_critical8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc callVirtualBase_metacall(self: QMessageBox, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMessageBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMessageBoxmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMessageBox, slot: proc(super: QMessageBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_metacall(self: ptr cQMessageBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMessageBox_metacall ".} =
  type Cb = proc(super: QMessageBoxmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMessageBox(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QMessageBox, e: gen_qcoreevent.QEvent): bool =


  fQMessageBox_virtualbase_event(self.h, e.h)

type QMessageBoxeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMessageBox, slot: proc(super: QMessageBoxeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_event(self: ptr cQMessageBox, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QMessageBox_event ".} =
  type Cb = proc(super: QMessageBoxeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMessageBox(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QMessageBox, event: gen_qevent.QResizeEvent): void =


  fQMessageBox_virtualbase_resizeEvent(self.h, event.h)

type QMessageBoxresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QMessageBox, slot: proc(super: QMessageBoxresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_resizeEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_resizeEvent ".} =
  type Cb = proc(super: QMessageBoxresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QMessageBox, event: gen_qevent.QShowEvent): void =


  fQMessageBox_virtualbase_showEvent(self.h, event.h)

type QMessageBoxshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QMessageBox, slot: proc(super: QMessageBoxshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_showEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_showEvent ".} =
  type Cb = proc(super: QMessageBoxshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QMessageBox, event: gen_qevent.QCloseEvent): void =


  fQMessageBox_virtualbase_closeEvent(self.h, event.h)

type QMessageBoxcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QMessageBox, slot: proc(super: QMessageBoxcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_closeEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_closeEvent ".} =
  type Cb = proc(super: QMessageBoxcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QMessageBox, event: gen_qevent.QKeyEvent): void =


  fQMessageBox_virtualbase_keyPressEvent(self.h, event.h)

type QMessageBoxkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QMessageBox, slot: proc(super: QMessageBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_keyPressEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_keyPressEvent ".} =
  type Cb = proc(super: QMessageBoxkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QMessageBox, event: gen_qcoreevent.QEvent): void =


  fQMessageBox_virtualbase_changeEvent(self.h, event.h)

type QMessageBoxchangeEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QMessageBox, slot: proc(super: QMessageBoxchangeEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_changeEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_changeEvent ".} =
  type Cb = proc(super: QMessageBoxchangeEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setVisible(self: QMessageBox, visible: bool): void =


  fQMessageBox_virtualbase_setVisible(self.h, visible)

type QMessageBoxsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QMessageBox, slot: proc(super: QMessageBoxsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_setVisible(self: ptr cQMessageBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMessageBox_setVisible ".} =
  type Cb = proc(super: QMessageBoxsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QMessageBox(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QMessageBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMessageBox_virtualbase_sizeHint(self.h))

type QMessageBoxsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QMessageBox, slot: proc(super: QMessageBoxsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_sizeHint(self: ptr cQMessageBox, slot: int): pointer {.exportc: "miqt_exec_callback_QMessageBox_sizeHint ".} =
  type Cb = proc(super: QMessageBoxsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QMessageBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QMessageBox, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQMessageBox_virtualbase_minimumSizeHint(self.h))

type QMessageBoxminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QMessageBox, slot: proc(super: QMessageBoxminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_minimumSizeHint(self: ptr cQMessageBox, slot: int): pointer {.exportc: "miqt_exec_callback_QMessageBox_minimumSizeHint ".} =
  type Cb = proc(super: QMessageBoxminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QMessageBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_open(self: QMessageBox, ): void =


  fQMessageBox_virtualbase_open(self.h)

type QMessageBoxopenBase* = proc(): void
proc onopen*(self: QMessageBox, slot: proc(super: QMessageBoxopenBase): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxopenBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_open(self: ptr cQMessageBox, slot: int): void {.exportc: "miqt_exec_callback_QMessageBox_open ".} =
  type Cb = proc(super: QMessageBoxopenBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_open(QMessageBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_exec(self: QMessageBox, ): cint =


  fQMessageBox_virtualbase_exec(self.h)

type QMessageBoxexecBase* = proc(): cint
proc onexec*(self: QMessageBox, slot: proc(super: QMessageBoxexecBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxexecBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_exec(self: ptr cQMessageBox, slot: int): cint {.exportc: "miqt_exec_callback_QMessageBox_exec ".} =
  type Cb = proc(super: QMessageBoxexecBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_exec(QMessageBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_done(self: QMessageBox, param1: cint): void =


  fQMessageBox_virtualbase_done(self.h, param1)

type QMessageBoxdoneBase* = proc(param1: cint): void
proc ondone*(self: QMessageBox, slot: proc(super: QMessageBoxdoneBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxdoneBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_done(self: ptr cQMessageBox, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QMessageBox_done ".} =
  type Cb = proc(super: QMessageBoxdoneBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_done(QMessageBox(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc callVirtualBase_accept(self: QMessageBox, ): void =


  fQMessageBox_virtualbase_accept(self.h)

type QMessageBoxacceptBase* = proc(): void
proc onaccept*(self: QMessageBox, slot: proc(super: QMessageBoxacceptBase): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxacceptBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_accept(self: ptr cQMessageBox, slot: int): void {.exportc: "miqt_exec_callback_QMessageBox_accept ".} =
  type Cb = proc(super: QMessageBoxacceptBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accept(QMessageBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reject(self: QMessageBox, ): void =


  fQMessageBox_virtualbase_reject(self.h)

type QMessageBoxrejectBase* = proc(): void
proc onreject*(self: QMessageBox, slot: proc(super: QMessageBoxrejectBase): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxrejectBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_reject(self: ptr cQMessageBox, slot: int): void {.exportc: "miqt_exec_callback_QMessageBox_reject ".} =
  type Cb = proc(super: QMessageBoxrejectBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reject(QMessageBox(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_contextMenuEvent(self: QMessageBox, param1: gen_qevent.QContextMenuEvent): void =


  fQMessageBox_virtualbase_contextMenuEvent(self.h, param1.h)

type QMessageBoxcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QMessageBox, slot: proc(super: QMessageBoxcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_contextMenuEvent(self: ptr cQMessageBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_contextMenuEvent ".} =
  type Cb = proc(super: QMessageBoxcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QMessageBox(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QMessageBox, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQMessageBox_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QMessageBoxeventFilterBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMessageBox, slot: proc(super: QMessageBoxeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_eventFilter(self: ptr cQMessageBox, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QMessageBox_eventFilter ".} =
  type Cb = proc(super: QMessageBoxeventFilterBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMessageBox(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_devType(self: QMessageBox, ): cint =


  fQMessageBox_virtualbase_devType(self.h)

type QMessageBoxdevTypeBase* = proc(): cint
proc ondevType*(self: QMessageBox, slot: proc(super: QMessageBoxdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_devType(self: ptr cQMessageBox, slot: int): cint {.exportc: "miqt_exec_callback_QMessageBox_devType ".} =
  type Cb = proc(super: QMessageBoxdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QMessageBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QMessageBox, param1: cint): cint =


  fQMessageBox_virtualbase_heightForWidth(self.h, param1)

type QMessageBoxheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QMessageBox, slot: proc(super: QMessageBoxheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_heightForWidth(self: ptr cQMessageBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMessageBox_heightForWidth ".} =
  type Cb = proc(super: QMessageBoxheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QMessageBox(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QMessageBox, ): bool =


  fQMessageBox_virtualbase_hasHeightForWidth(self.h)

type QMessageBoxhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QMessageBox, slot: proc(super: QMessageBoxhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_hasHeightForWidth(self: ptr cQMessageBox, slot: int): bool {.exportc: "miqt_exec_callback_QMessageBox_hasHeightForWidth ".} =
  type Cb = proc(super: QMessageBoxhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QMessageBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QMessageBox, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQMessageBox_virtualbase_paintEngine(self.h))

type QMessageBoxpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QMessageBox, slot: proc(super: QMessageBoxpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_paintEngine(self: ptr cQMessageBox, slot: int): pointer {.exportc: "miqt_exec_callback_QMessageBox_paintEngine ".} =
  type Cb = proc(super: QMessageBoxpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QMessageBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QMessageBox, event: gen_qevent.QMouseEvent): void =


  fQMessageBox_virtualbase_mousePressEvent(self.h, event.h)

type QMessageBoxmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QMessageBox, slot: proc(super: QMessageBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_mousePressEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_mousePressEvent ".} =
  type Cb = proc(super: QMessageBoxmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QMessageBox, event: gen_qevent.QMouseEvent): void =


  fQMessageBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QMessageBoxmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QMessageBox, slot: proc(super: QMessageBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_mouseReleaseEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_mouseReleaseEvent ".} =
  type Cb = proc(super: QMessageBoxmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QMessageBox, event: gen_qevent.QMouseEvent): void =


  fQMessageBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QMessageBoxmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QMessageBox, slot: proc(super: QMessageBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_mouseDoubleClickEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QMessageBoxmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QMessageBox, event: gen_qevent.QMouseEvent): void =


  fQMessageBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QMessageBoxmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QMessageBox, slot: proc(super: QMessageBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_mouseMoveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_mouseMoveEvent ".} =
  type Cb = proc(super: QMessageBoxmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QMessageBox, event: gen_qevent.QWheelEvent): void =


  fQMessageBox_virtualbase_wheelEvent(self.h, event.h)

type QMessageBoxwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QMessageBox, slot: proc(super: QMessageBoxwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_wheelEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_wheelEvent ".} =
  type Cb = proc(super: QMessageBoxwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QMessageBox, event: gen_qevent.QKeyEvent): void =


  fQMessageBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QMessageBoxkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QMessageBox, slot: proc(super: QMessageBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_keyReleaseEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_keyReleaseEvent ".} =
  type Cb = proc(super: QMessageBoxkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QMessageBox, event: gen_qevent.QFocusEvent): void =


  fQMessageBox_virtualbase_focusInEvent(self.h, event.h)

type QMessageBoxfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QMessageBox, slot: proc(super: QMessageBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_focusInEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_focusInEvent ".} =
  type Cb = proc(super: QMessageBoxfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QMessageBox, event: gen_qevent.QFocusEvent): void =


  fQMessageBox_virtualbase_focusOutEvent(self.h, event.h)

type QMessageBoxfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QMessageBox, slot: proc(super: QMessageBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_focusOutEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_focusOutEvent ".} =
  type Cb = proc(super: QMessageBoxfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QMessageBox, event: gen_qevent.QEnterEvent): void =


  fQMessageBox_virtualbase_enterEvent(self.h, event.h)

type QMessageBoxenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QMessageBox, slot: proc(super: QMessageBoxenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_enterEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_enterEvent ".} =
  type Cb = proc(super: QMessageBoxenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QMessageBox, event: gen_qcoreevent.QEvent): void =


  fQMessageBox_virtualbase_leaveEvent(self.h, event.h)

type QMessageBoxleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QMessageBox, slot: proc(super: QMessageBoxleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_leaveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_leaveEvent ".} =
  type Cb = proc(super: QMessageBoxleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QMessageBox, event: gen_qevent.QPaintEvent): void =


  fQMessageBox_virtualbase_paintEvent(self.h, event.h)

type QMessageBoxpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QMessageBox, slot: proc(super: QMessageBoxpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_paintEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_paintEvent ".} =
  type Cb = proc(super: QMessageBoxpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QMessageBox, event: gen_qevent.QMoveEvent): void =


  fQMessageBox_virtualbase_moveEvent(self.h, event.h)

type QMessageBoxmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QMessageBox, slot: proc(super: QMessageBoxmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_moveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_moveEvent ".} =
  type Cb = proc(super: QMessageBoxmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QMessageBox, event: gen_qevent.QTabletEvent): void =


  fQMessageBox_virtualbase_tabletEvent(self.h, event.h)

type QMessageBoxtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QMessageBox, slot: proc(super: QMessageBoxtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_tabletEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_tabletEvent ".} =
  type Cb = proc(super: QMessageBoxtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QMessageBox, event: gen_qevent.QActionEvent): void =


  fQMessageBox_virtualbase_actionEvent(self.h, event.h)

type QMessageBoxactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QMessageBox, slot: proc(super: QMessageBoxactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_actionEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_actionEvent ".} =
  type Cb = proc(super: QMessageBoxactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QMessageBox, event: gen_qevent.QDragEnterEvent): void =


  fQMessageBox_virtualbase_dragEnterEvent(self.h, event.h)

type QMessageBoxdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QMessageBox, slot: proc(super: QMessageBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_dragEnterEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_dragEnterEvent ".} =
  type Cb = proc(super: QMessageBoxdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QMessageBox, event: gen_qevent.QDragMoveEvent): void =


  fQMessageBox_virtualbase_dragMoveEvent(self.h, event.h)

type QMessageBoxdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QMessageBox, slot: proc(super: QMessageBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_dragMoveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_dragMoveEvent ".} =
  type Cb = proc(super: QMessageBoxdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QMessageBox, event: gen_qevent.QDragLeaveEvent): void =


  fQMessageBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QMessageBoxdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QMessageBox, slot: proc(super: QMessageBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_dragLeaveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_dragLeaveEvent ".} =
  type Cb = proc(super: QMessageBoxdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QMessageBox, event: gen_qevent.QDropEvent): void =


  fQMessageBox_virtualbase_dropEvent(self.h, event.h)

type QMessageBoxdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QMessageBox, slot: proc(super: QMessageBoxdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_dropEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_dropEvent ".} =
  type Cb = proc(super: QMessageBoxdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QMessageBox, event: gen_qevent.QHideEvent): void =


  fQMessageBox_virtualbase_hideEvent(self.h, event.h)

type QMessageBoxhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QMessageBox, slot: proc(super: QMessageBoxhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_hideEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_hideEvent ".} =
  type Cb = proc(super: QMessageBoxhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QMessageBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQMessageBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMessageBoxnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QMessageBox, slot: proc(super: QMessageBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_nativeEvent(self: ptr cQMessageBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QMessageBox_nativeEvent ".} =
  type Cb = proc(super: QMessageBoxnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QMessageBox(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QMessageBox, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQMessageBox_virtualbase_metric(self.h, cint(param1))

type QMessageBoxmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QMessageBox, slot: proc(super: QMessageBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_metric(self: ptr cQMessageBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMessageBox_metric ".} =
  type Cb = proc(super: QMessageBoxmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QMessageBox(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QMessageBox, painter: gen_qpainter.QPainter): void =


  fQMessageBox_virtualbase_initPainter(self.h, painter.h)

type QMessageBoxinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QMessageBox, slot: proc(super: QMessageBoxinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_initPainter(self: ptr cQMessageBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_initPainter ".} =
  type Cb = proc(super: QMessageBoxinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QMessageBox(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QMessageBox, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQMessageBox_virtualbase_redirected(self.h, offset.h))

type QMessageBoxredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QMessageBox, slot: proc(super: QMessageBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_redirected(self: ptr cQMessageBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMessageBox_redirected ".} =
  type Cb = proc(super: QMessageBoxredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QMessageBox(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QMessageBox, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQMessageBox_virtualbase_sharedPainter(self.h))

type QMessageBoxsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QMessageBox, slot: proc(super: QMessageBoxsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_sharedPainter(self: ptr cQMessageBox, slot: int): pointer {.exportc: "miqt_exec_callback_QMessageBox_sharedPainter ".} =
  type Cb = proc(super: QMessageBoxsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QMessageBox(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QMessageBox, param1: gen_qevent.QInputMethodEvent): void =


  fQMessageBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QMessageBoxinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QMessageBox, slot: proc(super: QMessageBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_inputMethodEvent(self: ptr cQMessageBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_inputMethodEvent ".} =
  type Cb = proc(super: QMessageBoxinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QMessageBox(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QMessageBox, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQMessageBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMessageBoxinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QMessageBox, slot: proc(super: QMessageBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_inputMethodQuery(self: ptr cQMessageBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMessageBox_inputMethodQuery ".} =
  type Cb = proc(super: QMessageBoxinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QMessageBox(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QMessageBox, next: bool): bool =


  fQMessageBox_virtualbase_focusNextPrevChild(self.h, next)

type QMessageBoxfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QMessageBox, slot: proc(super: QMessageBoxfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_focusNextPrevChild(self: ptr cQMessageBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMessageBox_focusNextPrevChild ".} =
  type Cb = proc(super: QMessageBoxfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QMessageBox(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QMessageBox, event: gen_qcoreevent.QTimerEvent): void =


  fQMessageBox_virtualbase_timerEvent(self.h, event.h)

type QMessageBoxtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMessageBox, slot: proc(super: QMessageBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_timerEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_timerEvent ".} =
  type Cb = proc(super: QMessageBoxtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMessageBox, event: gen_qcoreevent.QChildEvent): void =


  fQMessageBox_virtualbase_childEvent(self.h, event.h)

type QMessageBoxchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMessageBox, slot: proc(super: QMessageBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_childEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_childEvent ".} =
  type Cb = proc(super: QMessageBoxchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMessageBox, event: gen_qcoreevent.QEvent): void =


  fQMessageBox_virtualbase_customEvent(self.h, event.h)

type QMessageBoxcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMessageBox, slot: proc(super: QMessageBoxcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_customEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_customEvent ".} =
  type Cb = proc(super: QMessageBoxcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMessageBox(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMessageBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQMessageBox_virtualbase_connectNotify(self.h, signal.h)

type QMessageBoxconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMessageBox, slot: proc(super: QMessageBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_connectNotify(self: ptr cQMessageBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_connectNotify ".} =
  type Cb = proc(super: QMessageBoxconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMessageBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMessageBox, signal: gen_qmetaobject.QMetaMethod): void =


  fQMessageBox_virtualbase_disconnectNotify(self.h, signal.h)

type QMessageBoxdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMessageBox, slot: proc(super: QMessageBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMessageBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_disconnectNotify(self: ptr cQMessageBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_disconnectNotify ".} =
  type Cb = proc(super: QMessageBoxdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMessageBox(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QMessageBox) =
  fcQMessageBox_delete(self.h)
