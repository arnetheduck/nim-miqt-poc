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
{.compile("gen_qvalidator.cpp", cflags).}


type QValidatorState* = cint
const
  QValidatorInvalid* = 0
  QValidatorIntermediate* = 1
  QValidatorAcceptable* = 2



type QDoubleValidatorNotation* = cint
const
  QDoubleValidatorStandardNotation* = 0
  QDoubleValidatorScientificNotation* = 1



import gen_qvalidator_types
export gen_qvalidator_types

import
  gen_qcoreevent,
  gen_qlocale,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qregexp,
  gen_qregularexpression
export
  gen_qcoreevent,
  gen_qlocale,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qregexp,
  gen_qregularexpression

type cQValidator*{.exportc: "QValidator", incompleteStruct.} = object
type cQIntValidator*{.exportc: "QIntValidator", incompleteStruct.} = object
type cQDoubleValidator*{.exportc: "QDoubleValidator", incompleteStruct.} = object
type cQRegExpValidator*{.exportc: "QRegExpValidator", incompleteStruct.} = object
type cQRegularExpressionValidator*{.exportc: "QRegularExpressionValidator", incompleteStruct.} = object

proc fcQValidator_new(): ptr cQValidator {.importc: "QValidator_new".}
proc fcQValidator_new2(parent: pointer): ptr cQValidator {.importc: "QValidator_new2".}
proc fcQValidator_metaObject(self: pointer, ): pointer {.importc: "QValidator_metaObject".}
proc fcQValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QValidator_metacast".}
proc fcQValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QValidator_metacall".}
proc fcQValidator_tr(s: cstring): struct_miqt_string {.importc: "QValidator_tr".}
proc fcQValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QValidator_trUtf8".}
proc fcQValidator_setLocale(self: pointer, locale: pointer): void {.importc: "QValidator_setLocale".}
proc fcQValidator_locale(self: pointer, ): pointer {.importc: "QValidator_locale".}
proc fcQValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QValidator_validate".}
proc fcQValidator_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QValidator_fixup".}
proc fcQValidator_changed(self: pointer, ): void {.importc: "QValidator_changed".}
proc fQValidator_connect_changed(self: pointer, slot: int) {.importc: "QValidator_connect_changed".}
proc fcQValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QValidator_tr2".}
proc fcQValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QValidator_tr3".}
proc fcQValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QValidator_trUtf82".}
proc fcQValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QValidator_trUtf83".}
proc fQValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QValidator_virtualbase_metacall".}
proc fcQValidator_override_virtual_metacall(self: pointer, slot: int) {.importc: "QValidator_override_virtual_metacall".}
proc fcQValidator_override_virtual_validate(self: pointer, slot: int) {.importc: "QValidator_override_virtual_validate".}
proc fQValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void{.importc: "QValidator_virtualbase_fixup".}
proc fcQValidator_override_virtual_fixup(self: pointer, slot: int) {.importc: "QValidator_override_virtual_fixup".}
proc fQValidator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QValidator_virtualbase_event".}
proc fcQValidator_override_virtual_event(self: pointer, slot: int) {.importc: "QValidator_override_virtual_event".}
proc fQValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QValidator_virtualbase_eventFilter".}
proc fcQValidator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QValidator_override_virtual_eventFilter".}
proc fQValidator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QValidator_virtualbase_timerEvent".}
proc fcQValidator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QValidator_override_virtual_timerEvent".}
proc fQValidator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QValidator_virtualbase_childEvent".}
proc fcQValidator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QValidator_override_virtual_childEvent".}
proc fQValidator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QValidator_virtualbase_customEvent".}
proc fcQValidator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QValidator_override_virtual_customEvent".}
proc fQValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QValidator_virtualbase_connectNotify".}
proc fcQValidator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QValidator_override_virtual_connectNotify".}
proc fQValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QValidator_virtualbase_disconnectNotify".}
proc fcQValidator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QValidator_override_virtual_disconnectNotify".}
proc fcQValidator_delete(self: pointer) {.importc: "QValidator_delete".}
proc fcQIntValidator_new(): ptr cQIntValidator {.importc: "QIntValidator_new".}
proc fcQIntValidator_new2(bottom: cint, top: cint): ptr cQIntValidator {.importc: "QIntValidator_new2".}
proc fcQIntValidator_new3(parent: pointer): ptr cQIntValidator {.importc: "QIntValidator_new3".}
proc fcQIntValidator_new4(bottom: cint, top: cint, parent: pointer): ptr cQIntValidator {.importc: "QIntValidator_new4".}
proc fcQIntValidator_metaObject(self: pointer, ): pointer {.importc: "QIntValidator_metaObject".}
proc fcQIntValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QIntValidator_metacast".}
proc fcQIntValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIntValidator_metacall".}
proc fcQIntValidator_tr(s: cstring): struct_miqt_string {.importc: "QIntValidator_tr".}
proc fcQIntValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QIntValidator_trUtf8".}
proc fcQIntValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QIntValidator_validate".}
proc fcQIntValidator_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QIntValidator_fixup".}
proc fcQIntValidator_setBottom(self: pointer, bottom: cint): void {.importc: "QIntValidator_setBottom".}
proc fcQIntValidator_setTop(self: pointer, top: cint): void {.importc: "QIntValidator_setTop".}
proc fcQIntValidator_setRange(self: pointer, bottom: cint, top: cint): void {.importc: "QIntValidator_setRange".}
proc fcQIntValidator_bottom(self: pointer, ): cint {.importc: "QIntValidator_bottom".}
proc fcQIntValidator_top(self: pointer, ): cint {.importc: "QIntValidator_top".}
proc fcQIntValidator_bottomChanged(self: pointer, bottom: cint): void {.importc: "QIntValidator_bottomChanged".}
proc fQIntValidator_connect_bottomChanged(self: pointer, slot: int) {.importc: "QIntValidator_connect_bottomChanged".}
proc fcQIntValidator_topChanged(self: pointer, top: cint): void {.importc: "QIntValidator_topChanged".}
proc fQIntValidator_connect_topChanged(self: pointer, slot: int) {.importc: "QIntValidator_connect_topChanged".}
proc fcQIntValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIntValidator_tr2".}
proc fcQIntValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIntValidator_tr3".}
proc fcQIntValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QIntValidator_trUtf82".}
proc fcQIntValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIntValidator_trUtf83".}
proc fQIntValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QIntValidator_virtualbase_metacall".}
proc fcQIntValidator_override_virtual_metacall(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_metacall".}
proc fQIntValidator_virtualbase_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint{.importc: "QIntValidator_virtualbase_validate".}
proc fcQIntValidator_override_virtual_validate(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_validate".}
proc fQIntValidator_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QIntValidator_virtualbase_fixup".}
proc fcQIntValidator_override_virtual_fixup(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_fixup".}
proc fQIntValidator_virtualbase_setRange(self: pointer, bottom: cint, top: cint): void{.importc: "QIntValidator_virtualbase_setRange".}
proc fcQIntValidator_override_virtual_setRange(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_setRange".}
proc fQIntValidator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QIntValidator_virtualbase_event".}
proc fcQIntValidator_override_virtual_event(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_event".}
proc fQIntValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QIntValidator_virtualbase_eventFilter".}
proc fcQIntValidator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_eventFilter".}
proc fQIntValidator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QIntValidator_virtualbase_timerEvent".}
proc fcQIntValidator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_timerEvent".}
proc fQIntValidator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QIntValidator_virtualbase_childEvent".}
proc fcQIntValidator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_childEvent".}
proc fQIntValidator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QIntValidator_virtualbase_customEvent".}
proc fcQIntValidator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_customEvent".}
proc fQIntValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QIntValidator_virtualbase_connectNotify".}
proc fcQIntValidator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_connectNotify".}
proc fQIntValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QIntValidator_virtualbase_disconnectNotify".}
proc fcQIntValidator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QIntValidator_override_virtual_disconnectNotify".}
proc fcQIntValidator_delete(self: pointer) {.importc: "QIntValidator_delete".}
proc fcQDoubleValidator_new(): ptr cQDoubleValidator {.importc: "QDoubleValidator_new".}
proc fcQDoubleValidator_new2(bottom: float64, top: float64, decimals: cint): ptr cQDoubleValidator {.importc: "QDoubleValidator_new2".}
proc fcQDoubleValidator_new3(parent: pointer): ptr cQDoubleValidator {.importc: "QDoubleValidator_new3".}
proc fcQDoubleValidator_new4(bottom: float64, top: float64, decimals: cint, parent: pointer): ptr cQDoubleValidator {.importc: "QDoubleValidator_new4".}
proc fcQDoubleValidator_metaObject(self: pointer, ): pointer {.importc: "QDoubleValidator_metaObject".}
proc fcQDoubleValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleValidator_metacast".}
proc fcQDoubleValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleValidator_metacall".}
proc fcQDoubleValidator_tr(s: cstring): struct_miqt_string {.importc: "QDoubleValidator_tr".}
proc fcQDoubleValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QDoubleValidator_trUtf8".}
proc fcQDoubleValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QDoubleValidator_validate".}
proc fcQDoubleValidator_setRange(self: pointer, bottom: float64, top: float64, decimals: cint): void {.importc: "QDoubleValidator_setRange".}
proc fcQDoubleValidator_setBottom(self: pointer, bottom: float64): void {.importc: "QDoubleValidator_setBottom".}
proc fcQDoubleValidator_setTop(self: pointer, top: float64): void {.importc: "QDoubleValidator_setTop".}
proc fcQDoubleValidator_setDecimals(self: pointer, decimals: cint): void {.importc: "QDoubleValidator_setDecimals".}
proc fcQDoubleValidator_setNotation(self: pointer, notation: cint): void {.importc: "QDoubleValidator_setNotation".}
proc fcQDoubleValidator_bottom(self: pointer, ): float64 {.importc: "QDoubleValidator_bottom".}
proc fcQDoubleValidator_top(self: pointer, ): float64 {.importc: "QDoubleValidator_top".}
proc fcQDoubleValidator_decimals(self: pointer, ): cint {.importc: "QDoubleValidator_decimals".}
proc fcQDoubleValidator_notation(self: pointer, ): cint {.importc: "QDoubleValidator_notation".}
proc fcQDoubleValidator_bottomChanged(self: pointer, bottom: float64): void {.importc: "QDoubleValidator_bottomChanged".}
proc fQDoubleValidator_connect_bottomChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_bottomChanged".}
proc fcQDoubleValidator_topChanged(self: pointer, top: float64): void {.importc: "QDoubleValidator_topChanged".}
proc fQDoubleValidator_connect_topChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_topChanged".}
proc fcQDoubleValidator_decimalsChanged(self: pointer, decimals: cint): void {.importc: "QDoubleValidator_decimalsChanged".}
proc fQDoubleValidator_connect_decimalsChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_decimalsChanged".}
proc fcQDoubleValidator_notationChanged(self: pointer, notation: cint): void {.importc: "QDoubleValidator_notationChanged".}
proc fQDoubleValidator_connect_notationChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_notationChanged".}
proc fcQDoubleValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleValidator_tr2".}
proc fcQDoubleValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleValidator_tr3".}
proc fcQDoubleValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleValidator_trUtf82".}
proc fcQDoubleValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleValidator_trUtf83".}
proc fQDoubleValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDoubleValidator_virtualbase_metacall".}
proc fcQDoubleValidator_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_metacall".}
proc fQDoubleValidator_virtualbase_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint{.importc: "QDoubleValidator_virtualbase_validate".}
proc fcQDoubleValidator_override_virtual_validate(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_validate".}
proc fQDoubleValidator_virtualbase_setRange(self: pointer, bottom: float64, top: float64, decimals: cint): void{.importc: "QDoubleValidator_virtualbase_setRange".}
proc fcQDoubleValidator_override_virtual_setRange(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_setRange".}
proc fQDoubleValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void{.importc: "QDoubleValidator_virtualbase_fixup".}
proc fcQDoubleValidator_override_virtual_fixup(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_fixup".}
proc fQDoubleValidator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDoubleValidator_virtualbase_event".}
proc fcQDoubleValidator_override_virtual_event(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_event".}
proc fQDoubleValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDoubleValidator_virtualbase_eventFilter".}
proc fcQDoubleValidator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_eventFilter".}
proc fQDoubleValidator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDoubleValidator_virtualbase_timerEvent".}
proc fcQDoubleValidator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_timerEvent".}
proc fQDoubleValidator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDoubleValidator_virtualbase_childEvent".}
proc fcQDoubleValidator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_childEvent".}
proc fQDoubleValidator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDoubleValidator_virtualbase_customEvent".}
proc fcQDoubleValidator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_customEvent".}
proc fQDoubleValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDoubleValidator_virtualbase_connectNotify".}
proc fcQDoubleValidator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_connectNotify".}
proc fQDoubleValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDoubleValidator_virtualbase_disconnectNotify".}
proc fcQDoubleValidator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDoubleValidator_override_virtual_disconnectNotify".}
proc fcQDoubleValidator_delete(self: pointer) {.importc: "QDoubleValidator_delete".}
proc fcQRegExpValidator_new(): ptr cQRegExpValidator {.importc: "QRegExpValidator_new".}
proc fcQRegExpValidator_new2(rx: pointer): ptr cQRegExpValidator {.importc: "QRegExpValidator_new2".}
proc fcQRegExpValidator_new3(parent: pointer): ptr cQRegExpValidator {.importc: "QRegExpValidator_new3".}
proc fcQRegExpValidator_new4(rx: pointer, parent: pointer): ptr cQRegExpValidator {.importc: "QRegExpValidator_new4".}
proc fcQRegExpValidator_metaObject(self: pointer, ): pointer {.importc: "QRegExpValidator_metaObject".}
proc fcQRegExpValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegExpValidator_metacast".}
proc fcQRegExpValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRegExpValidator_metacall".}
proc fcQRegExpValidator_tr(s: cstring): struct_miqt_string {.importc: "QRegExpValidator_tr".}
proc fcQRegExpValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QRegExpValidator_trUtf8".}
proc fcQRegExpValidator_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegExpValidator_validate".}
proc fcQRegExpValidator_setRegExp(self: pointer, rx: pointer): void {.importc: "QRegExpValidator_setRegExp".}
proc fcQRegExpValidator_regExp(self: pointer, ): pointer {.importc: "QRegExpValidator_regExp".}
proc fcQRegExpValidator_regExpChanged(self: pointer, regExp: pointer): void {.importc: "QRegExpValidator_regExpChanged".}
proc fQRegExpValidator_connect_regExpChanged(self: pointer, slot: int) {.importc: "QRegExpValidator_connect_regExpChanged".}
proc fcQRegExpValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegExpValidator_tr2".}
proc fcQRegExpValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegExpValidator_tr3".}
proc fcQRegExpValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegExpValidator_trUtf82".}
proc fcQRegExpValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegExpValidator_trUtf83".}
proc fQRegExpValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QRegExpValidator_virtualbase_metacall".}
proc fcQRegExpValidator_override_virtual_metacall(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_metacall".}
proc fQRegExpValidator_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QRegExpValidator_virtualbase_validate".}
proc fcQRegExpValidator_override_virtual_validate(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_validate".}
proc fQRegExpValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void{.importc: "QRegExpValidator_virtualbase_fixup".}
proc fcQRegExpValidator_override_virtual_fixup(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_fixup".}
proc fQRegExpValidator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QRegExpValidator_virtualbase_event".}
proc fcQRegExpValidator_override_virtual_event(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_event".}
proc fQRegExpValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRegExpValidator_virtualbase_eventFilter".}
proc fcQRegExpValidator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_eventFilter".}
proc fQRegExpValidator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QRegExpValidator_virtualbase_timerEvent".}
proc fcQRegExpValidator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_timerEvent".}
proc fQRegExpValidator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRegExpValidator_virtualbase_childEvent".}
proc fcQRegExpValidator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_childEvent".}
proc fQRegExpValidator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRegExpValidator_virtualbase_customEvent".}
proc fcQRegExpValidator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_customEvent".}
proc fQRegExpValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRegExpValidator_virtualbase_connectNotify".}
proc fcQRegExpValidator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_connectNotify".}
proc fQRegExpValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRegExpValidator_virtualbase_disconnectNotify".}
proc fcQRegExpValidator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRegExpValidator_override_virtual_disconnectNotify".}
proc fcQRegExpValidator_delete(self: pointer) {.importc: "QRegExpValidator_delete".}
proc fcQRegularExpressionValidator_new(): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new".}
proc fcQRegularExpressionValidator_new2(re: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new2".}
proc fcQRegularExpressionValidator_new3(parent: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new3".}
proc fcQRegularExpressionValidator_new4(re: pointer, parent: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new4".}
proc fcQRegularExpressionValidator_metaObject(self: pointer, ): pointer {.importc: "QRegularExpressionValidator_metaObject".}
proc fcQRegularExpressionValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegularExpressionValidator_metacast".}
proc fcQRegularExpressionValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRegularExpressionValidator_metacall".}
proc fcQRegularExpressionValidator_tr(s: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr".}
proc fcQRegularExpressionValidator_trUtf8(s: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_trUtf8".}
proc fcQRegularExpressionValidator_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegularExpressionValidator_validate".}
proc fcQRegularExpressionValidator_regularExpression(self: pointer, ): pointer {.importc: "QRegularExpressionValidator_regularExpression".}
proc fcQRegularExpressionValidator_setRegularExpression(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_setRegularExpression".}
proc fcQRegularExpressionValidator_regularExpressionChanged(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_regularExpressionChanged".}
proc fQRegularExpressionValidator_connect_regularExpressionChanged(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_connect_regularExpressionChanged".}
proc fcQRegularExpressionValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr2".}
proc fcQRegularExpressionValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegularExpressionValidator_tr3".}
proc fcQRegularExpressionValidator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_trUtf82".}
proc fcQRegularExpressionValidator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegularExpressionValidator_trUtf83".}
proc fQRegularExpressionValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QRegularExpressionValidator_virtualbase_metacall".}
proc fcQRegularExpressionValidator_override_virtual_metacall(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_metacall".}
proc fQRegularExpressionValidator_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QRegularExpressionValidator_virtualbase_validate".}
proc fcQRegularExpressionValidator_override_virtual_validate(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_validate".}
proc fQRegularExpressionValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void{.importc: "QRegularExpressionValidator_virtualbase_fixup".}
proc fcQRegularExpressionValidator_override_virtual_fixup(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_fixup".}
proc fQRegularExpressionValidator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QRegularExpressionValidator_virtualbase_event".}
proc fcQRegularExpressionValidator_override_virtual_event(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_event".}
proc fQRegularExpressionValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRegularExpressionValidator_virtualbase_eventFilter".}
proc fcQRegularExpressionValidator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_eventFilter".}
proc fQRegularExpressionValidator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_timerEvent".}
proc fcQRegularExpressionValidator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_timerEvent".}
proc fQRegularExpressionValidator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_childEvent".}
proc fcQRegularExpressionValidator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_childEvent".}
proc fQRegularExpressionValidator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_customEvent".}
proc fcQRegularExpressionValidator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_customEvent".}
proc fQRegularExpressionValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_connectNotify".}
proc fcQRegularExpressionValidator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_connectNotify".}
proc fQRegularExpressionValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRegularExpressionValidator_virtualbase_disconnectNotify".}
proc fcQRegularExpressionValidator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_override_virtual_disconnectNotify".}
proc fcQRegularExpressionValidator_delete(self: pointer) {.importc: "QRegularExpressionValidator_delete".}


func init*(T: type QValidator, h: ptr cQValidator): QValidator =
  T(h: h)
proc create*(T: type QValidator, ): QValidator =

  QValidator.init(fcQValidator_new())
proc create*(T: type QValidator, parent: gen_qobject.QObject): QValidator =

  QValidator.init(fcQValidator_new2(parent.h))
proc metaObject*(self: QValidator, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQValidator_metaObject(self.h))

proc metacast*(self: QValidator, param1: cstring): pointer =

  fcQValidator_metacast(self.h, param1)

proc metacall*(self: QValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QValidator, s: cstring): string =

  let v_ms = fcQValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QValidator, s: cstring): string =

  let v_ms = fcQValidator_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLocale*(self: QValidator, locale: gen_qlocale.QLocale): void =

  fcQValidator_setLocale(self.h, locale.h)

proc locale*(self: QValidator, ): gen_qlocale.QLocale =

  gen_qlocale.QLocale(h: fcQValidator_locale(self.h))

proc validate*(self: QValidator, param1: string, param2: ptr cint): QValidatorState =

  QValidatorState(fcQValidator_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc fixup*(self: QValidator, param1: string): void =

  fcQValidator_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc changed*(self: QValidator, ): void =

  fcQValidator_changed(self.h)

proc miqt_exec_callback_QValidator_changed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onchanged*(self: QValidator, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQValidator_connect_changed(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QValidator, s: cstring, c: cstring): string =

  let v_ms = fcQValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QValidator, s: cstring, c: cstring): string =

  let v_ms = fcQValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QValidatormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QValidator, slot: proc(super: QValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_metacall(self: ptr cQValidator, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QValidator_metacall ".} =
  type Cb = proc(super: QValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QValidator(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QValidatorvalidateBase* = proc(param1: string, param2: ptr cint): QValidatorState
proc onvalidate*(self: QValidator, slot: proc(param1: string, param2: ptr cint): QValidatorState) =
  # TODO check subclass
  type Cb = proc(param1: string, param2: ptr cint): QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_validate(self: ptr cQValidator, slot: int, param1: struct_miqt_string, param2: ptr cint): cint {.exportc: "miqt_exec_callback_QValidator_validate ".} =
  type Cb = proc(param1: string, param2: ptr cint): QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  let slotval2 = param2


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_fixup(self: QValidator, param1: string): void =


  fQValidator_virtualbase_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QValidatorfixupBase* = proc(param1: string): void
proc onfixup*(self: QValidator, slot: proc(super: QValidatorfixupBase, param1: string): void) =
  # TODO check subclass
  type Cb = proc(super: QValidatorfixupBase, param1: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_fixup(self: ptr cQValidator, slot: int, param1: struct_miqt_string): void {.exportc: "miqt_exec_callback_QValidator_fixup ".} =
  type Cb = proc(super: QValidatorfixupBase, param1: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: string): auto =
    callVirtualBase_fixup(QValidator(h: self), param1)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QValidator, event: gen_qcoreevent.QEvent): bool =


  fQValidator_virtualbase_event(self.h, event.h)

type QValidatoreventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QValidator, slot: proc(super: QValidatoreventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_event(self: ptr cQValidator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QValidator_event ".} =
  type Cb = proc(super: QValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QValidator, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QValidatoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QValidator, slot: proc(super: QValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_eventFilter(self: ptr cQValidator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QValidator_eventFilter ".} =
  type Cb = proc(super: QValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QValidator(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QValidator, event: gen_qcoreevent.QTimerEvent): void =


  fQValidator_virtualbase_timerEvent(self.h, event.h)

type QValidatortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QValidator, slot: proc(super: QValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_timerEvent(self: ptr cQValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QValidator_timerEvent ".} =
  type Cb = proc(super: QValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QValidator, event: gen_qcoreevent.QChildEvent): void =


  fQValidator_virtualbase_childEvent(self.h, event.h)

type QValidatorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QValidator, slot: proc(super: QValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_childEvent(self: ptr cQValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QValidator_childEvent ".} =
  type Cb = proc(super: QValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QValidator, event: gen_qcoreevent.QEvent): void =


  fQValidator_virtualbase_customEvent(self.h, event.h)

type QValidatorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QValidator, slot: proc(super: QValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_customEvent(self: ptr cQValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QValidator_customEvent ".} =
  type Cb = proc(super: QValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQValidator_virtualbase_connectNotify(self.h, signal.h)

type QValidatorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QValidator, slot: proc(super: QValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_connectNotify(self: ptr cQValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QValidator_connectNotify ".} =
  type Cb = proc(super: QValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQValidator_virtualbase_disconnectNotify(self.h, signal.h)

type QValidatordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QValidator, slot: proc(super: QValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QValidator_disconnectNotify(self: ptr cQValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QValidator_disconnectNotify ".} =
  type Cb = proc(super: QValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QValidator) =
  fcQValidator_delete(self.h)

func init*(T: type QIntValidator, h: ptr cQIntValidator): QIntValidator =
  T(h: h)
proc create*(T: type QIntValidator, ): QIntValidator =

  QIntValidator.init(fcQIntValidator_new())
proc create*(T: type QIntValidator, bottom: cint, top: cint): QIntValidator =

  QIntValidator.init(fcQIntValidator_new2(bottom, top))
proc create*(T: type QIntValidator, parent: gen_qobject.QObject): QIntValidator =

  QIntValidator.init(fcQIntValidator_new3(parent.h))
proc create*(T: type QIntValidator, bottom: cint, top: cint, parent: gen_qobject.QObject): QIntValidator =

  QIntValidator.init(fcQIntValidator_new4(bottom, top, parent.h))
proc metaObject*(self: QIntValidator, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQIntValidator_metaObject(self.h))

proc metacast*(self: QIntValidator, param1: cstring): pointer =

  fcQIntValidator_metacast(self.h, param1)

proc metacall*(self: QIntValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQIntValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QIntValidator, s: cstring): string =

  let v_ms = fcQIntValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QIntValidator, s: cstring): string =

  let v_ms = fcQIntValidator_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: QIntValidator, param1: string, param2: ptr cint): QValidatorState =

  QValidatorState(fcQIntValidator_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc fixup*(self: QIntValidator, input: string): void =

  fcQIntValidator_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc setBottom*(self: QIntValidator, bottom: cint): void =

  fcQIntValidator_setBottom(self.h, bottom)

proc setTop*(self: QIntValidator, top: cint): void =

  fcQIntValidator_setTop(self.h, top)

proc setRange*(self: QIntValidator, bottom: cint, top: cint): void =

  fcQIntValidator_setRange(self.h, bottom, top)

proc bottom*(self: QIntValidator, ): cint =

  fcQIntValidator_bottom(self.h)

proc top*(self: QIntValidator, ): cint =

  fcQIntValidator_top(self.h)

proc bottomChanged*(self: QIntValidator, bottom: cint): void =

  fcQIntValidator_bottomChanged(self.h, bottom)

proc miqt_exec_callback_QIntValidator_bottomChanged(slot: int, bottom: cint) {.exportc.} =
  type Cb = proc(bottom: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = bottom


  nimfunc[](slotval1)

proc onbottomChanged*(self: QIntValidator, slot: proc(bottom: cint)) =
  type Cb = proc(bottom: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQIntValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]))
proc topChanged*(self: QIntValidator, top: cint): void =

  fcQIntValidator_topChanged(self.h, top)

proc miqt_exec_callback_QIntValidator_topChanged(slot: int, top: cint) {.exportc.} =
  type Cb = proc(top: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = top


  nimfunc[](slotval1)

proc ontopChanged*(self: QIntValidator, slot: proc(top: cint)) =
  type Cb = proc(top: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQIntValidator_connect_topChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QIntValidator, s: cstring, c: cstring): string =

  let v_ms = fcQIntValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QIntValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQIntValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QIntValidator, s: cstring, c: cstring): string =

  let v_ms = fcQIntValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QIntValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQIntValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QIntValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQIntValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QIntValidatormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QIntValidator, slot: proc(super: QIntValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_metacall(self: ptr cQIntValidator, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QIntValidator_metacall ".} =
  type Cb = proc(super: QIntValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QIntValidator(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_validate(self: QIntValidator, param1: string, param2: ptr cint): QValidatorState =


  QValidatorState(fQIntValidator_virtualbase_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

type QIntValidatorvalidateBase* = proc(param1: string, param2: ptr cint): QValidatorState
proc onvalidate*(self: QIntValidator, slot: proc(super: QIntValidatorvalidateBase, param1: string, param2: ptr cint): QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatorvalidateBase, param1: string, param2: ptr cint): QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_validate(self: ptr cQIntValidator, slot: int, param1: struct_miqt_string, param2: ptr cint): cint {.exportc: "miqt_exec_callback_QIntValidator_validate ".} =
  type Cb = proc(super: QIntValidatorvalidateBase, param1: string, param2: ptr cint): QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: string, param2: ptr cint): auto =
    callVirtualBase_validate(QIntValidator(h: self), param1, param2)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  let slotval2 = param2


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_fixup(self: QIntValidator, input: string): void =


  fQIntValidator_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QIntValidatorfixupBase* = proc(input: string): void
proc onfixup*(self: QIntValidator, slot: proc(super: QIntValidatorfixupBase, input: string): void) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatorfixupBase, input: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_fixup(self: ptr cQIntValidator, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QIntValidator_fixup ".} =
  type Cb = proc(super: QIntValidatorfixupBase, input: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string): auto =
    callVirtualBase_fixup(QIntValidator(h: self), input)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setRange(self: QIntValidator, bottom: cint, top: cint): void =


  fQIntValidator_virtualbase_setRange(self.h, bottom, top)

type QIntValidatorsetRangeBase* = proc(bottom: cint, top: cint): void
proc onsetRange*(self: QIntValidator, slot: proc(super: QIntValidatorsetRangeBase, bottom: cint, top: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatorsetRangeBase, bottom: cint, top: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_setRange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_setRange(self: ptr cQIntValidator, slot: int, bottom: cint, top: cint): void {.exportc: "miqt_exec_callback_QIntValidator_setRange ".} =
  type Cb = proc(super: QIntValidatorsetRangeBase, bottom: cint, top: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(bottom: cint, top: cint): auto =
    callVirtualBase_setRange(QIntValidator(h: self), bottom, top)
  let slotval1 = bottom

  let slotval2 = top


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_event(self: QIntValidator, event: gen_qcoreevent.QEvent): bool =


  fQIntValidator_virtualbase_event(self.h, event.h)

type QIntValidatoreventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QIntValidator, slot: proc(super: QIntValidatoreventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_event(self: ptr cQIntValidator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QIntValidator_event ".} =
  type Cb = proc(super: QIntValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QIntValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QIntValidator, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQIntValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QIntValidatoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QIntValidator, slot: proc(super: QIntValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_eventFilter(self: ptr cQIntValidator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QIntValidator_eventFilter ".} =
  type Cb = proc(super: QIntValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QIntValidator(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QIntValidator, event: gen_qcoreevent.QTimerEvent): void =


  fQIntValidator_virtualbase_timerEvent(self.h, event.h)

type QIntValidatortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QIntValidator, slot: proc(super: QIntValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_timerEvent(self: ptr cQIntValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_timerEvent ".} =
  type Cb = proc(super: QIntValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QIntValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QIntValidator, event: gen_qcoreevent.QChildEvent): void =


  fQIntValidator_virtualbase_childEvent(self.h, event.h)

type QIntValidatorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QIntValidator, slot: proc(super: QIntValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_childEvent(self: ptr cQIntValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_childEvent ".} =
  type Cb = proc(super: QIntValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QIntValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QIntValidator, event: gen_qcoreevent.QEvent): void =


  fQIntValidator_virtualbase_customEvent(self.h, event.h)

type QIntValidatorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QIntValidator, slot: proc(super: QIntValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_customEvent(self: ptr cQIntValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_customEvent ".} =
  type Cb = proc(super: QIntValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QIntValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QIntValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQIntValidator_virtualbase_connectNotify(self.h, signal.h)

type QIntValidatorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QIntValidator, slot: proc(super: QIntValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_connectNotify(self: ptr cQIntValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_connectNotify ".} =
  type Cb = proc(super: QIntValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QIntValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QIntValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQIntValidator_virtualbase_disconnectNotify(self.h, signal.h)

type QIntValidatordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QIntValidator, slot: proc(super: QIntValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QIntValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIntValidator_disconnectNotify(self: ptr cQIntValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIntValidator_disconnectNotify ".} =
  type Cb = proc(super: QIntValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QIntValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QIntValidator) =
  fcQIntValidator_delete(self.h)

func init*(T: type QDoubleValidator, h: ptr cQDoubleValidator): QDoubleValidator =
  T(h: h)
proc create*(T: type QDoubleValidator, ): QDoubleValidator =

  QDoubleValidator.init(fcQDoubleValidator_new())
proc create*(T: type QDoubleValidator, bottom: float64, top: float64, decimals: cint): QDoubleValidator =

  QDoubleValidator.init(fcQDoubleValidator_new2(bottom, top, decimals))
proc create*(T: type QDoubleValidator, parent: gen_qobject.QObject): QDoubleValidator =

  QDoubleValidator.init(fcQDoubleValidator_new3(parent.h))
proc create*(T: type QDoubleValidator, bottom: float64, top: float64, decimals: cint, parent: gen_qobject.QObject): QDoubleValidator =

  QDoubleValidator.init(fcQDoubleValidator_new4(bottom, top, decimals, parent.h))
proc metaObject*(self: QDoubleValidator, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDoubleValidator_metaObject(self.h))

proc metacast*(self: QDoubleValidator, param1: cstring): pointer =

  fcQDoubleValidator_metacast(self.h, param1)

proc metacall*(self: QDoubleValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDoubleValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDoubleValidator, s: cstring): string =

  let v_ms = fcQDoubleValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QDoubleValidator, s: cstring): string =

  let v_ms = fcQDoubleValidator_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: QDoubleValidator, param1: string, param2: ptr cint): QValidatorState =

  QValidatorState(fcQDoubleValidator_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc setRange*(self: QDoubleValidator, bottom: float64, top: float64, decimals: cint): void =

  fcQDoubleValidator_setRange(self.h, bottom, top, decimals)

proc setBottom*(self: QDoubleValidator, bottom: float64): void =

  fcQDoubleValidator_setBottom(self.h, bottom)

proc setTop*(self: QDoubleValidator, top: float64): void =

  fcQDoubleValidator_setTop(self.h, top)

proc setDecimals*(self: QDoubleValidator, decimals: cint): void =

  fcQDoubleValidator_setDecimals(self.h, decimals)

proc setNotation*(self: QDoubleValidator, notation: QDoubleValidatorNotation): void =

  fcQDoubleValidator_setNotation(self.h, cint(notation))

proc bottom*(self: QDoubleValidator, ): float64 =

  fcQDoubleValidator_bottom(self.h)

proc top*(self: QDoubleValidator, ): float64 =

  fcQDoubleValidator_top(self.h)

proc decimals*(self: QDoubleValidator, ): cint =

  fcQDoubleValidator_decimals(self.h)

proc notation*(self: QDoubleValidator, ): QDoubleValidatorNotation =

  QDoubleValidatorNotation(fcQDoubleValidator_notation(self.h))

proc bottomChanged*(self: QDoubleValidator, bottom: float64): void =

  fcQDoubleValidator_bottomChanged(self.h, bottom)

proc miqt_exec_callback_QDoubleValidator_bottomChanged(slot: int, bottom: float64) {.exportc.} =
  type Cb = proc(bottom: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = bottom


  nimfunc[](slotval1)

proc onbottomChanged*(self: QDoubleValidator, slot: proc(bottom: float64)) =
  type Cb = proc(bottom: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDoubleValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]))
proc topChanged*(self: QDoubleValidator, top: float64): void =

  fcQDoubleValidator_topChanged(self.h, top)

proc miqt_exec_callback_QDoubleValidator_topChanged(slot: int, top: float64) {.exportc.} =
  type Cb = proc(top: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = top


  nimfunc[](slotval1)

proc ontopChanged*(self: QDoubleValidator, slot: proc(top: float64)) =
  type Cb = proc(top: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDoubleValidator_connect_topChanged(self.h, cast[int](addr tmp[]))
proc decimalsChanged*(self: QDoubleValidator, decimals: cint): void =

  fcQDoubleValidator_decimalsChanged(self.h, decimals)

proc miqt_exec_callback_QDoubleValidator_decimalsChanged(slot: int, decimals: cint) {.exportc.} =
  type Cb = proc(decimals: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = decimals


  nimfunc[](slotval1)

proc ondecimalsChanged*(self: QDoubleValidator, slot: proc(decimals: cint)) =
  type Cb = proc(decimals: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDoubleValidator_connect_decimalsChanged(self.h, cast[int](addr tmp[]))
proc notationChanged*(self: QDoubleValidator, notation: QDoubleValidatorNotation): void =

  fcQDoubleValidator_notationChanged(self.h, cint(notation))

proc miqt_exec_callback_QDoubleValidator_notationChanged(slot: int, notation: cint) {.exportc.} =
  type Cb = proc(notation: QDoubleValidatorNotation)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QDoubleValidatorNotation(notation)


  nimfunc[](slotval1)

proc onnotationChanged*(self: QDoubleValidator, slot: proc(notation: QDoubleValidatorNotation)) =
  type Cb = proc(notation: QDoubleValidatorNotation)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDoubleValidator_connect_notationChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDoubleValidator, s: cstring, c: cstring): string =

  let v_ms = fcQDoubleValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDoubleValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDoubleValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QDoubleValidator, s: cstring, c: cstring): string =

  let v_ms = fcQDoubleValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QDoubleValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDoubleValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QDoubleValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDoubleValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDoubleValidatormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDoubleValidator, slot: proc(super: QDoubleValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_metacall(self: ptr cQDoubleValidator, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDoubleValidator_metacall ".} =
  type Cb = proc(super: QDoubleValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDoubleValidator(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_validate(self: QDoubleValidator, param1: string, param2: ptr cint): QValidatorState =


  QValidatorState(fQDoubleValidator_virtualbase_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

type QDoubleValidatorvalidateBase* = proc(param1: string, param2: ptr cint): QValidatorState
proc onvalidate*(self: QDoubleValidator, slot: proc(super: QDoubleValidatorvalidateBase, param1: string, param2: ptr cint): QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatorvalidateBase, param1: string, param2: ptr cint): QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_validate(self: ptr cQDoubleValidator, slot: int, param1: struct_miqt_string, param2: ptr cint): cint {.exportc: "miqt_exec_callback_QDoubleValidator_validate ".} =
  type Cb = proc(super: QDoubleValidatorvalidateBase, param1: string, param2: ptr cint): QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: string, param2: ptr cint): auto =
    callVirtualBase_validate(QDoubleValidator(h: self), param1, param2)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  let slotval2 = param2


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_setRange(self: QDoubleValidator, bottom: float64, top: float64, decimals: cint): void =


  fQDoubleValidator_virtualbase_setRange(self.h, bottom, top, decimals)

type QDoubleValidatorsetRangeBase* = proc(bottom: float64, top: float64, decimals: cint): void
proc onsetRange*(self: QDoubleValidator, slot: proc(super: QDoubleValidatorsetRangeBase, bottom: float64, top: float64, decimals: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatorsetRangeBase, bottom: float64, top: float64, decimals: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_setRange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_setRange(self: ptr cQDoubleValidator, slot: int, bottom: float64, top: float64, decimals: cint): void {.exportc: "miqt_exec_callback_QDoubleValidator_setRange ".} =
  type Cb = proc(super: QDoubleValidatorsetRangeBase, bottom: float64, top: float64, decimals: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(bottom: float64, top: float64, decimals: cint): auto =
    callVirtualBase_setRange(QDoubleValidator(h: self), bottom, top, decimals)
  let slotval1 = bottom

  let slotval2 = top

  let slotval3 = decimals


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_fixup(self: QDoubleValidator, param1: string): void =


  fQDoubleValidator_virtualbase_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QDoubleValidatorfixupBase* = proc(param1: string): void
proc onfixup*(self: QDoubleValidator, slot: proc(super: QDoubleValidatorfixupBase, param1: string): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatorfixupBase, param1: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_fixup(self: ptr cQDoubleValidator, slot: int, param1: struct_miqt_string): void {.exportc: "miqt_exec_callback_QDoubleValidator_fixup ".} =
  type Cb = proc(super: QDoubleValidatorfixupBase, param1: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: string): auto =
    callVirtualBase_fixup(QDoubleValidator(h: self), param1)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QDoubleValidator, event: gen_qcoreevent.QEvent): bool =


  fQDoubleValidator_virtualbase_event(self.h, event.h)

type QDoubleValidatoreventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDoubleValidator, slot: proc(super: QDoubleValidatoreventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_event(self: ptr cQDoubleValidator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDoubleValidator_event ".} =
  type Cb = proc(super: QDoubleValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDoubleValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDoubleValidator, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDoubleValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDoubleValidatoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDoubleValidator, slot: proc(super: QDoubleValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_eventFilter(self: ptr cQDoubleValidator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDoubleValidator_eventFilter ".} =
  type Cb = proc(super: QDoubleValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDoubleValidator(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDoubleValidator, event: gen_qcoreevent.QTimerEvent): void =


  fQDoubleValidator_virtualbase_timerEvent(self.h, event.h)

type QDoubleValidatortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDoubleValidator, slot: proc(super: QDoubleValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_timerEvent(self: ptr cQDoubleValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_timerEvent ".} =
  type Cb = proc(super: QDoubleValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDoubleValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDoubleValidator, event: gen_qcoreevent.QChildEvent): void =


  fQDoubleValidator_virtualbase_childEvent(self.h, event.h)

type QDoubleValidatorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDoubleValidator, slot: proc(super: QDoubleValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_childEvent(self: ptr cQDoubleValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_childEvent ".} =
  type Cb = proc(super: QDoubleValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDoubleValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDoubleValidator, event: gen_qcoreevent.QEvent): void =


  fQDoubleValidator_virtualbase_customEvent(self.h, event.h)

type QDoubleValidatorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDoubleValidator, slot: proc(super: QDoubleValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_customEvent(self: ptr cQDoubleValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_customEvent ".} =
  type Cb = proc(super: QDoubleValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDoubleValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDoubleValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQDoubleValidator_virtualbase_connectNotify(self.h, signal.h)

type QDoubleValidatorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDoubleValidator, slot: proc(super: QDoubleValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_connectNotify(self: ptr cQDoubleValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_connectNotify ".} =
  type Cb = proc(super: QDoubleValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDoubleValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDoubleValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQDoubleValidator_virtualbase_disconnectNotify(self.h, signal.h)

type QDoubleValidatordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDoubleValidator, slot: proc(super: QDoubleValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDoubleValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDoubleValidator_disconnectNotify(self: ptr cQDoubleValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDoubleValidator_disconnectNotify ".} =
  type Cb = proc(super: QDoubleValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDoubleValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QDoubleValidator) =
  fcQDoubleValidator_delete(self.h)

func init*(T: type QRegExpValidator, h: ptr cQRegExpValidator): QRegExpValidator =
  T(h: h)
proc create*(T: type QRegExpValidator, ): QRegExpValidator =

  QRegExpValidator.init(fcQRegExpValidator_new())
proc create*(T: type QRegExpValidator, rx: gen_qregexp.QRegExp): QRegExpValidator =

  QRegExpValidator.init(fcQRegExpValidator_new2(rx.h))
proc create2*(T: type QRegExpValidator, parent: gen_qobject.QObject): QRegExpValidator =

  QRegExpValidator.init(fcQRegExpValidator_new3(parent.h))
proc create*(T: type QRegExpValidator, rx: gen_qregexp.QRegExp, parent: gen_qobject.QObject): QRegExpValidator =

  QRegExpValidator.init(fcQRegExpValidator_new4(rx.h, parent.h))
proc metaObject*(self: QRegExpValidator, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQRegExpValidator_metaObject(self.h))

proc metacast*(self: QRegExpValidator, param1: cstring): pointer =

  fcQRegExpValidator_metacast(self.h, param1)

proc metacall*(self: QRegExpValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQRegExpValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QRegExpValidator, s: cstring): string =

  let v_ms = fcQRegExpValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QRegExpValidator, s: cstring): string =

  let v_ms = fcQRegExpValidator_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: QRegExpValidator, input: string, pos: ptr cint): QValidatorState =

  QValidatorState(fcQRegExpValidator_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc setRegExp*(self: QRegExpValidator, rx: gen_qregexp.QRegExp): void =

  fcQRegExpValidator_setRegExp(self.h, rx.h)

proc regExp*(self: QRegExpValidator, ): gen_qregexp.QRegExp =

  gen_qregexp.QRegExp(h: fcQRegExpValidator_regExp(self.h))

proc regExpChanged*(self: QRegExpValidator, regExp: gen_qregexp.QRegExp): void =

  fcQRegExpValidator_regExpChanged(self.h, regExp.h)

proc miqt_exec_callback_QRegExpValidator_regExpChanged(slot: int, regExp: pointer) {.exportc.} =
  type Cb = proc(regExp: gen_qregexp.QRegExp)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qregexp.QRegExp(h: regExp)


  nimfunc[](slotval1)

proc onregExpChanged*(self: QRegExpValidator, slot: proc(regExp: gen_qregexp.QRegExp)) =
  type Cb = proc(regExp: gen_qregexp.QRegExp)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRegExpValidator_connect_regExpChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QRegExpValidator, s: cstring, c: cstring): string =

  let v_ms = fcQRegExpValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QRegExpValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRegExpValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QRegExpValidator, s: cstring, c: cstring): string =

  let v_ms = fcQRegExpValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QRegExpValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRegExpValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QRegExpValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQRegExpValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QRegExpValidatormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QRegExpValidator, slot: proc(super: QRegExpValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_metacall(self: ptr cQRegExpValidator, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QRegExpValidator_metacall ".} =
  type Cb = proc(super: QRegExpValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QRegExpValidator(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_validate(self: QRegExpValidator, input: string, pos: ptr cint): QValidatorState =


  QValidatorState(fQRegExpValidator_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QRegExpValidatorvalidateBase* = proc(input: string, pos: ptr cint): QValidatorState
proc onvalidate*(self: QRegExpValidator, slot: proc(super: QRegExpValidatorvalidateBase, input: string, pos: ptr cint): QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatorvalidateBase, input: string, pos: ptr cint): QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_validate(self: ptr cQRegExpValidator, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QRegExpValidator_validate ".} =
  type Cb = proc(super: QRegExpValidatorvalidateBase, input: string, pos: ptr cint): QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string, pos: ptr cint): auto =
    callVirtualBase_validate(QRegExpValidator(h: self), input, pos)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_fixup(self: QRegExpValidator, param1: string): void =


  fQRegExpValidator_virtualbase_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QRegExpValidatorfixupBase* = proc(param1: string): void
proc onfixup*(self: QRegExpValidator, slot: proc(super: QRegExpValidatorfixupBase, param1: string): void) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatorfixupBase, param1: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_fixup(self: ptr cQRegExpValidator, slot: int, param1: struct_miqt_string): void {.exportc: "miqt_exec_callback_QRegExpValidator_fixup ".} =
  type Cb = proc(super: QRegExpValidatorfixupBase, param1: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: string): auto =
    callVirtualBase_fixup(QRegExpValidator(h: self), param1)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QRegExpValidator, event: gen_qcoreevent.QEvent): bool =


  fQRegExpValidator_virtualbase_event(self.h, event.h)

type QRegExpValidatoreventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QRegExpValidator, slot: proc(super: QRegExpValidatoreventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_event(self: ptr cQRegExpValidator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QRegExpValidator_event ".} =
  type Cb = proc(super: QRegExpValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QRegExpValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QRegExpValidator, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQRegExpValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRegExpValidatoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QRegExpValidator, slot: proc(super: QRegExpValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_eventFilter(self: ptr cQRegExpValidator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRegExpValidator_eventFilter ".} =
  type Cb = proc(super: QRegExpValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QRegExpValidator(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QRegExpValidator, event: gen_qcoreevent.QTimerEvent): void =


  fQRegExpValidator_virtualbase_timerEvent(self.h, event.h)

type QRegExpValidatortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QRegExpValidator, slot: proc(super: QRegExpValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_timerEvent(self: ptr cQRegExpValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRegExpValidator_timerEvent ".} =
  type Cb = proc(super: QRegExpValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QRegExpValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QRegExpValidator, event: gen_qcoreevent.QChildEvent): void =


  fQRegExpValidator_virtualbase_childEvent(self.h, event.h)

type QRegExpValidatorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QRegExpValidator, slot: proc(super: QRegExpValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_childEvent(self: ptr cQRegExpValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRegExpValidator_childEvent ".} =
  type Cb = proc(super: QRegExpValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QRegExpValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QRegExpValidator, event: gen_qcoreevent.QEvent): void =


  fQRegExpValidator_virtualbase_customEvent(self.h, event.h)

type QRegExpValidatorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QRegExpValidator, slot: proc(super: QRegExpValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_customEvent(self: ptr cQRegExpValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRegExpValidator_customEvent ".} =
  type Cb = proc(super: QRegExpValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QRegExpValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QRegExpValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQRegExpValidator_virtualbase_connectNotify(self.h, signal.h)

type QRegExpValidatorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QRegExpValidator, slot: proc(super: QRegExpValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_connectNotify(self: ptr cQRegExpValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRegExpValidator_connectNotify ".} =
  type Cb = proc(super: QRegExpValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QRegExpValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QRegExpValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQRegExpValidator_virtualbase_disconnectNotify(self.h, signal.h)

type QRegExpValidatordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QRegExpValidator, slot: proc(super: QRegExpValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRegExpValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegExpValidator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegExpValidator_disconnectNotify(self: ptr cQRegExpValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRegExpValidator_disconnectNotify ".} =
  type Cb = proc(super: QRegExpValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QRegExpValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QRegExpValidator) =
  fcQRegExpValidator_delete(self.h)

func init*(T: type QRegularExpressionValidator, h: ptr cQRegularExpressionValidator): QRegularExpressionValidator =
  T(h: h)
proc create*(T: type QRegularExpressionValidator, ): QRegularExpressionValidator =

  QRegularExpressionValidator.init(fcQRegularExpressionValidator_new())
proc create*(T: type QRegularExpressionValidator, re: gen_qregularexpression.QRegularExpression): QRegularExpressionValidator =

  QRegularExpressionValidator.init(fcQRegularExpressionValidator_new2(re.h))
proc create2*(T: type QRegularExpressionValidator, parent: gen_qobject.QObject): QRegularExpressionValidator =

  QRegularExpressionValidator.init(fcQRegularExpressionValidator_new3(parent.h))
proc create*(T: type QRegularExpressionValidator, re: gen_qregularexpression.QRegularExpression, parent: gen_qobject.QObject): QRegularExpressionValidator =

  QRegularExpressionValidator.init(fcQRegularExpressionValidator_new4(re.h, parent.h))
proc metaObject*(self: QRegularExpressionValidator, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQRegularExpressionValidator_metaObject(self.h))

proc metacast*(self: QRegularExpressionValidator, param1: cstring): pointer =

  fcQRegularExpressionValidator_metacast(self.h, param1)

proc metacall*(self: QRegularExpressionValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQRegularExpressionValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QRegularExpressionValidator, s: cstring): string =

  let v_ms = fcQRegularExpressionValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QRegularExpressionValidator, s: cstring): string =

  let v_ms = fcQRegularExpressionValidator_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: QRegularExpressionValidator, input: string, pos: ptr cint): QValidatorState =

  QValidatorState(fcQRegularExpressionValidator_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc regularExpression*(self: QRegularExpressionValidator, ): gen_qregularexpression.QRegularExpression =

  gen_qregularexpression.QRegularExpression(h: fcQRegularExpressionValidator_regularExpression(self.h))

proc setRegularExpression*(self: QRegularExpressionValidator, re: gen_qregularexpression.QRegularExpression): void =

  fcQRegularExpressionValidator_setRegularExpression(self.h, re.h)

proc regularExpressionChanged*(self: QRegularExpressionValidator, re: gen_qregularexpression.QRegularExpression): void =

  fcQRegularExpressionValidator_regularExpressionChanged(self.h, re.h)

proc miqt_exec_callback_QRegularExpressionValidator_regularExpressionChanged(slot: int, re: pointer) {.exportc.} =
  type Cb = proc(re: gen_qregularexpression.QRegularExpression)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qregularexpression.QRegularExpression(h: re)


  nimfunc[](slotval1)

proc onregularExpressionChanged*(self: QRegularExpressionValidator, slot: proc(re: gen_qregularexpression.QRegularExpression)) =
  type Cb = proc(re: gen_qregularexpression.QRegularExpression)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQRegularExpressionValidator_connect_regularExpressionChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QRegularExpressionValidator, s: cstring, c: cstring): string =

  let v_ms = fcQRegularExpressionValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QRegularExpressionValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRegularExpressionValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QRegularExpressionValidator, s: cstring, c: cstring): string =

  let v_ms = fcQRegularExpressionValidator_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QRegularExpressionValidator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQRegularExpressionValidator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QRegularExpressionValidator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQRegularExpressionValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QRegularExpressionValidatormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_metacall(self: ptr cQRegularExpressionValidator, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QRegularExpressionValidator_metacall ".} =
  type Cb = proc(super: QRegularExpressionValidatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QRegularExpressionValidator(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_validate(self: QRegularExpressionValidator, input: string, pos: ptr cint): QValidatorState =


  QValidatorState(fQRegularExpressionValidator_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QRegularExpressionValidatorvalidateBase* = proc(input: string, pos: ptr cint): QValidatorState
proc onvalidate*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatorvalidateBase, input: string, pos: ptr cint): QValidatorState) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatorvalidateBase, input: string, pos: ptr cint): QValidatorState
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_validate(self: ptr cQRegularExpressionValidator, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QRegularExpressionValidator_validate ".} =
  type Cb = proc(super: QRegularExpressionValidatorvalidateBase, input: string, pos: ptr cint): QValidatorState
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(input: string, pos: ptr cint): auto =
    callVirtualBase_validate(QRegularExpressionValidator(h: self), input, pos)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_fixup(self: QRegularExpressionValidator, param1: string): void =


  fQRegularExpressionValidator_virtualbase_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QRegularExpressionValidatorfixupBase* = proc(param1: string): void
proc onfixup*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatorfixupBase, param1: string): void) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatorfixupBase, param1: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_fixup(self: ptr cQRegularExpressionValidator, slot: int, param1: struct_miqt_string): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_fixup ".} =
  type Cb = proc(super: QRegularExpressionValidatorfixupBase, param1: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: string): auto =
    callVirtualBase_fixup(QRegularExpressionValidator(h: self), param1)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QRegularExpressionValidator, event: gen_qcoreevent.QEvent): bool =


  fQRegularExpressionValidator_virtualbase_event(self.h, event.h)

type QRegularExpressionValidatoreventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatoreventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_event(self: ptr cQRegularExpressionValidator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QRegularExpressionValidator_event ".} =
  type Cb = proc(super: QRegularExpressionValidatoreventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QRegularExpressionValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QRegularExpressionValidator, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQRegularExpressionValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRegularExpressionValidatoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_eventFilter(self: ptr cQRegularExpressionValidator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRegularExpressionValidator_eventFilter ".} =
  type Cb = proc(super: QRegularExpressionValidatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QRegularExpressionValidator(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QRegularExpressionValidator, event: gen_qcoreevent.QTimerEvent): void =


  fQRegularExpressionValidator_virtualbase_timerEvent(self.h, event.h)

type QRegularExpressionValidatortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_timerEvent(self: ptr cQRegularExpressionValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_timerEvent ".} =
  type Cb = proc(super: QRegularExpressionValidatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QRegularExpressionValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QRegularExpressionValidator, event: gen_qcoreevent.QChildEvent): void =


  fQRegularExpressionValidator_virtualbase_childEvent(self.h, event.h)

type QRegularExpressionValidatorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_childEvent(self: ptr cQRegularExpressionValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_childEvent ".} =
  type Cb = proc(super: QRegularExpressionValidatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QRegularExpressionValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QRegularExpressionValidator, event: gen_qcoreevent.QEvent): void =


  fQRegularExpressionValidator_virtualbase_customEvent(self.h, event.h)

type QRegularExpressionValidatorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_customEvent(self: ptr cQRegularExpressionValidator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_customEvent ".} =
  type Cb = proc(super: QRegularExpressionValidatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QRegularExpressionValidator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QRegularExpressionValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQRegularExpressionValidator_virtualbase_connectNotify(self.h, signal.h)

type QRegularExpressionValidatorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_connectNotify(self: ptr cQRegularExpressionValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_connectNotify ".} =
  type Cb = proc(super: QRegularExpressionValidatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QRegularExpressionValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QRegularExpressionValidator, signal: gen_qmetaobject.QMetaMethod): void =


  fQRegularExpressionValidator_virtualbase_disconnectNotify(self.h, signal.h)

type QRegularExpressionValidatordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QRegularExpressionValidator, slot: proc(super: QRegularExpressionValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QRegularExpressionValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRegularExpressionValidator_disconnectNotify(self: ptr cQRegularExpressionValidator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRegularExpressionValidator_disconnectNotify ".} =
  type Cb = proc(super: QRegularExpressionValidatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QRegularExpressionValidator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QRegularExpressionValidator) =
  fcQRegularExpressionValidator_delete(self.h)
