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
{.compile("gen_qvalidator.cpp", cflags).}


type QValidatorStateEnum* = distinct cint
template Invalid*(_: type QValidatorStateEnum): untyped = 0
template Intermediate*(_: type QValidatorStateEnum): untyped = 1
template Acceptable*(_: type QValidatorStateEnum): untyped = 2


type QDoubleValidatorNotationEnum* = distinct cint
template StandardNotation*(_: type QDoubleValidatorNotationEnum): untyped = 0
template ScientificNotation*(_: type QDoubleValidatorNotationEnum): untyped = 1

import gen_qvalidator_types
export gen_qvalidator_types

import
  gen_qcoreevent_types,
  gen_qlocale_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qregularexpression_types
export
  gen_qcoreevent_types,
  gen_qlocale_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qregularexpression_types

type cQValidator*{.exportc: "QValidator", incompleteStruct.} = object
type cQIntValidator*{.exportc: "QIntValidator", incompleteStruct.} = object
type cQDoubleValidator*{.exportc: "QDoubleValidator", incompleteStruct.} = object
type cQRegularExpressionValidator*{.exportc: "QRegularExpressionValidator", incompleteStruct.} = object

proc fcQValidator_metaObject(self: pointer, ): pointer {.importc: "QValidator_metaObject".}
proc fcQValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QValidator_metacast".}
proc fcQValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QValidator_metacall".}
proc fcQValidator_tr(s: cstring): struct_miqt_string {.importc: "QValidator_tr".}
proc fcQValidator_setLocale(self: pointer, locale: pointer): void {.importc: "QValidator_setLocale".}
proc fcQValidator_locale(self: pointer, ): pointer {.importc: "QValidator_locale".}
proc fcQValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QValidator_validate".}
proc fcQValidator_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QValidator_fixup".}
proc fcQValidator_changed(self: pointer, ): void {.importc: "QValidator_changed".}
proc fcQValidator_connect_changed(self: pointer, slot: int) {.importc: "QValidator_connect_changed".}
proc fcQValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QValidator_tr2".}
proc fcQValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QValidator_tr3".}
type cQValidatorVTable = object
  destructor*: proc(vtbl: ptr cQValidatorVTable, self: ptr cQValidator) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(vtbl, self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(vtbl, self: pointer, param1: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQValidator_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QValidator_virtualbase_metaObject".}
proc fcQValidator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QValidator_virtualbase_metacast".}
proc fcQValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QValidator_virtualbase_metacall".}
proc fcQValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QValidator_virtualbase_fixup".}
proc fcQValidator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QValidator_virtualbase_event".}
proc fcQValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QValidator_virtualbase_eventFilter".}
proc fcQValidator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QValidator_virtualbase_timerEvent".}
proc fcQValidator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QValidator_virtualbase_childEvent".}
proc fcQValidator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QValidator_virtualbase_customEvent".}
proc fcQValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QValidator_virtualbase_connectNotify".}
proc fcQValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QValidator_virtualbase_disconnectNotify".}
proc fcQValidator_new(vtbl: pointer, ): ptr cQValidator {.importc: "QValidator_new".}
proc fcQValidator_new2(vtbl: pointer, parent: pointer): ptr cQValidator {.importc: "QValidator_new2".}
proc fcQValidator_staticMetaObject(): pointer {.importc: "QValidator_staticMetaObject".}
proc fcQValidator_delete(self: pointer) {.importc: "QValidator_delete".}
proc fcQIntValidator_metaObject(self: pointer, ): pointer {.importc: "QIntValidator_metaObject".}
proc fcQIntValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QIntValidator_metacast".}
proc fcQIntValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIntValidator_metacall".}
proc fcQIntValidator_tr(s: cstring): struct_miqt_string {.importc: "QIntValidator_tr".}
proc fcQIntValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QIntValidator_validate".}
proc fcQIntValidator_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QIntValidator_fixup".}
proc fcQIntValidator_setBottom(self: pointer, bottom: cint): void {.importc: "QIntValidator_setBottom".}
proc fcQIntValidator_setTop(self: pointer, top: cint): void {.importc: "QIntValidator_setTop".}
proc fcQIntValidator_setRange(self: pointer, bottom: cint, top: cint): void {.importc: "QIntValidator_setRange".}
proc fcQIntValidator_bottom(self: pointer, ): cint {.importc: "QIntValidator_bottom".}
proc fcQIntValidator_top(self: pointer, ): cint {.importc: "QIntValidator_top".}
proc fcQIntValidator_bottomChanged(self: pointer, bottom: cint): void {.importc: "QIntValidator_bottomChanged".}
proc fcQIntValidator_connect_bottomChanged(self: pointer, slot: int) {.importc: "QIntValidator_connect_bottomChanged".}
proc fcQIntValidator_topChanged(self: pointer, top: cint): void {.importc: "QIntValidator_topChanged".}
proc fcQIntValidator_connect_topChanged(self: pointer, slot: int) {.importc: "QIntValidator_connect_topChanged".}
proc fcQIntValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIntValidator_tr2".}
proc fcQIntValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIntValidator_tr3".}
type cQIntValidatorVTable = object
  destructor*: proc(vtbl: ptr cQIntValidatorVTable, self: ptr cQIntValidator) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(vtbl, self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(vtbl, self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQIntValidator_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QIntValidator_virtualbase_metaObject".}
proc fcQIntValidator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QIntValidator_virtualbase_metacast".}
proc fcQIntValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIntValidator_virtualbase_metacall".}
proc fcQIntValidator_virtualbase_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QIntValidator_virtualbase_validate".}
proc fcQIntValidator_virtualbase_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QIntValidator_virtualbase_fixup".}
proc fcQIntValidator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QIntValidator_virtualbase_event".}
proc fcQIntValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QIntValidator_virtualbase_eventFilter".}
proc fcQIntValidator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QIntValidator_virtualbase_timerEvent".}
proc fcQIntValidator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QIntValidator_virtualbase_childEvent".}
proc fcQIntValidator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QIntValidator_virtualbase_customEvent".}
proc fcQIntValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QIntValidator_virtualbase_connectNotify".}
proc fcQIntValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QIntValidator_virtualbase_disconnectNotify".}
proc fcQIntValidator_new(vtbl: pointer, ): ptr cQIntValidator {.importc: "QIntValidator_new".}
proc fcQIntValidator_new2(vtbl: pointer, bottom: cint, top: cint): ptr cQIntValidator {.importc: "QIntValidator_new2".}
proc fcQIntValidator_new3(vtbl: pointer, parent: pointer): ptr cQIntValidator {.importc: "QIntValidator_new3".}
proc fcQIntValidator_new4(vtbl: pointer, bottom: cint, top: cint, parent: pointer): ptr cQIntValidator {.importc: "QIntValidator_new4".}
proc fcQIntValidator_staticMetaObject(): pointer {.importc: "QIntValidator_staticMetaObject".}
proc fcQIntValidator_delete(self: pointer) {.importc: "QIntValidator_delete".}
proc fcQDoubleValidator_metaObject(self: pointer, ): pointer {.importc: "QDoubleValidator_metaObject".}
proc fcQDoubleValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleValidator_metacast".}
proc fcQDoubleValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleValidator_metacall".}
proc fcQDoubleValidator_tr(s: cstring): struct_miqt_string {.importc: "QDoubleValidator_tr".}
proc fcQDoubleValidator_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QDoubleValidator_validate".}
proc fcQDoubleValidator_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QDoubleValidator_fixup".}
proc fcQDoubleValidator_setRange(self: pointer, bottom: float64, top: float64, decimals: cint): void {.importc: "QDoubleValidator_setRange".}
proc fcQDoubleValidator_setRange2(self: pointer, bottom: float64, top: float64): void {.importc: "QDoubleValidator_setRange2".}
proc fcQDoubleValidator_setBottom(self: pointer, bottom: float64): void {.importc: "QDoubleValidator_setBottom".}
proc fcQDoubleValidator_setTop(self: pointer, top: float64): void {.importc: "QDoubleValidator_setTop".}
proc fcQDoubleValidator_setDecimals(self: pointer, decimals: cint): void {.importc: "QDoubleValidator_setDecimals".}
proc fcQDoubleValidator_setNotation(self: pointer, notation: cint): void {.importc: "QDoubleValidator_setNotation".}
proc fcQDoubleValidator_bottom(self: pointer, ): float64 {.importc: "QDoubleValidator_bottom".}
proc fcQDoubleValidator_top(self: pointer, ): float64 {.importc: "QDoubleValidator_top".}
proc fcQDoubleValidator_decimals(self: pointer, ): cint {.importc: "QDoubleValidator_decimals".}
proc fcQDoubleValidator_notation(self: pointer, ): cint {.importc: "QDoubleValidator_notation".}
proc fcQDoubleValidator_bottomChanged(self: pointer, bottom: float64): void {.importc: "QDoubleValidator_bottomChanged".}
proc fcQDoubleValidator_connect_bottomChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_bottomChanged".}
proc fcQDoubleValidator_topChanged(self: pointer, top: float64): void {.importc: "QDoubleValidator_topChanged".}
proc fcQDoubleValidator_connect_topChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_topChanged".}
proc fcQDoubleValidator_decimalsChanged(self: pointer, decimals: cint): void {.importc: "QDoubleValidator_decimalsChanged".}
proc fcQDoubleValidator_connect_decimalsChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_decimalsChanged".}
proc fcQDoubleValidator_notationChanged(self: pointer, notation: cint): void {.importc: "QDoubleValidator_notationChanged".}
proc fcQDoubleValidator_connect_notationChanged(self: pointer, slot: int) {.importc: "QDoubleValidator_connect_notationChanged".}
proc fcQDoubleValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDoubleValidator_tr2".}
proc fcQDoubleValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDoubleValidator_tr3".}
type cQDoubleValidatorVTable = object
  destructor*: proc(vtbl: ptr cQDoubleValidatorVTable, self: ptr cQDoubleValidator) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(vtbl, self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(vtbl, self: pointer, input: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDoubleValidator_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDoubleValidator_virtualbase_metaObject".}
proc fcQDoubleValidator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDoubleValidator_virtualbase_metacast".}
proc fcQDoubleValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDoubleValidator_virtualbase_metacall".}
proc fcQDoubleValidator_virtualbase_validate(self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.importc: "QDoubleValidator_virtualbase_validate".}
proc fcQDoubleValidator_virtualbase_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QDoubleValidator_virtualbase_fixup".}
proc fcQDoubleValidator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDoubleValidator_virtualbase_event".}
proc fcQDoubleValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDoubleValidator_virtualbase_eventFilter".}
proc fcQDoubleValidator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDoubleValidator_virtualbase_timerEvent".}
proc fcQDoubleValidator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDoubleValidator_virtualbase_childEvent".}
proc fcQDoubleValidator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDoubleValidator_virtualbase_customEvent".}
proc fcQDoubleValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDoubleValidator_virtualbase_connectNotify".}
proc fcQDoubleValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDoubleValidator_virtualbase_disconnectNotify".}
proc fcQDoubleValidator_new(vtbl: pointer, ): ptr cQDoubleValidator {.importc: "QDoubleValidator_new".}
proc fcQDoubleValidator_new2(vtbl: pointer, bottom: float64, top: float64, decimals: cint): ptr cQDoubleValidator {.importc: "QDoubleValidator_new2".}
proc fcQDoubleValidator_new3(vtbl: pointer, parent: pointer): ptr cQDoubleValidator {.importc: "QDoubleValidator_new3".}
proc fcQDoubleValidator_new4(vtbl: pointer, bottom: float64, top: float64, decimals: cint, parent: pointer): ptr cQDoubleValidator {.importc: "QDoubleValidator_new4".}
proc fcQDoubleValidator_staticMetaObject(): pointer {.importc: "QDoubleValidator_staticMetaObject".}
proc fcQDoubleValidator_delete(self: pointer) {.importc: "QDoubleValidator_delete".}
proc fcQRegularExpressionValidator_metaObject(self: pointer, ): pointer {.importc: "QRegularExpressionValidator_metaObject".}
proc fcQRegularExpressionValidator_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegularExpressionValidator_metacast".}
proc fcQRegularExpressionValidator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRegularExpressionValidator_metacall".}
proc fcQRegularExpressionValidator_tr(s: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr".}
proc fcQRegularExpressionValidator_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegularExpressionValidator_validate".}
proc fcQRegularExpressionValidator_regularExpression(self: pointer, ): pointer {.importc: "QRegularExpressionValidator_regularExpression".}
proc fcQRegularExpressionValidator_setRegularExpression(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_setRegularExpression".}
proc fcQRegularExpressionValidator_regularExpressionChanged(self: pointer, re: pointer): void {.importc: "QRegularExpressionValidator_regularExpressionChanged".}
proc fcQRegularExpressionValidator_connect_regularExpressionChanged(self: pointer, slot: int) {.importc: "QRegularExpressionValidator_connect_regularExpressionChanged".}
proc fcQRegularExpressionValidator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRegularExpressionValidator_tr2".}
proc fcQRegularExpressionValidator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRegularExpressionValidator_tr3".}
type cQRegularExpressionValidatorVTable = object
  destructor*: proc(vtbl: ptr cQRegularExpressionValidatorVTable, self: ptr cQRegularExpressionValidator) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  validate*: proc(vtbl, self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl, raises: [], gcsafe.}
  fixup*: proc(vtbl, self: pointer, param1: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQRegularExpressionValidator_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QRegularExpressionValidator_virtualbase_metaObject".}
proc fcQRegularExpressionValidator_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QRegularExpressionValidator_virtualbase_metacast".}
proc fcQRegularExpressionValidator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QRegularExpressionValidator_virtualbase_metacall".}
proc fcQRegularExpressionValidator_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QRegularExpressionValidator_virtualbase_validate".}
proc fcQRegularExpressionValidator_virtualbase_fixup(self: pointer, param1: struct_miqt_string): void {.importc: "QRegularExpressionValidator_virtualbase_fixup".}
proc fcQRegularExpressionValidator_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QRegularExpressionValidator_virtualbase_event".}
proc fcQRegularExpressionValidator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QRegularExpressionValidator_virtualbase_eventFilter".}
proc fcQRegularExpressionValidator_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_timerEvent".}
proc fcQRegularExpressionValidator_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_childEvent".}
proc fcQRegularExpressionValidator_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_customEvent".}
proc fcQRegularExpressionValidator_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_connectNotify".}
proc fcQRegularExpressionValidator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QRegularExpressionValidator_virtualbase_disconnectNotify".}
proc fcQRegularExpressionValidator_new(vtbl: pointer, ): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new".}
proc fcQRegularExpressionValidator_new2(vtbl: pointer, re: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new2".}
proc fcQRegularExpressionValidator_new3(vtbl: pointer, parent: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new3".}
proc fcQRegularExpressionValidator_new4(vtbl: pointer, re: pointer, parent: pointer): ptr cQRegularExpressionValidator {.importc: "QRegularExpressionValidator_new4".}
proc fcQRegularExpressionValidator_staticMetaObject(): pointer {.importc: "QRegularExpressionValidator_staticMetaObject".}
proc fcQRegularExpressionValidator_delete(self: pointer) {.importc: "QRegularExpressionValidator_delete".}

proc metaObject*(self: gen_qvalidator_types.QValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQValidator_metaObject(self.h))

proc metacast*(self: gen_qvalidator_types.QValidator, param1: cstring): pointer =
  fcQValidator_metacast(self.h, param1)

proc metacall*(self: gen_qvalidator_types.QValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvalidator_types.QValidator, s: cstring): string =
  let v_ms = fcQValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLocale*(self: gen_qvalidator_types.QValidator, locale: gen_qlocale_types.QLocale): void =
  fcQValidator_setLocale(self.h, locale.h)

proc locale*(self: gen_qvalidator_types.QValidator, ): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQValidator_locale(self.h))

proc validate*(self: gen_qvalidator_types.QValidator, param1: string, param2: ptr cint): cint =
  cint(fcQValidator_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc fixup*(self: gen_qvalidator_types.QValidator, param1: string): void =
  fcQValidator_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc changed*(self: gen_qvalidator_types.QValidator, ): void =
  fcQValidator_changed(self.h)

type QValidatorchangedSlot* = proc()
proc miqt_exec_callback_cQValidator_changed(slot: int) {.exportc: "miqt_exec_callback_QValidator_changed".} =
  let nimfunc = cast[ptr QValidatorchangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onchanged*(self: gen_qvalidator_types.QValidator, slot: QValidatorchangedSlot) =
  var tmp = new QValidatorchangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQValidator_connect_changed(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvalidator_types.QValidator, s: cstring, c: cstring): string =
  let v_ms = fcQValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QValidatormetaObjectProc* = proc(self: QValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QValidatormetacastProc* = proc(self: QValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QValidatormetacallProc* = proc(self: QValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QValidatorvalidateProc* = proc(self: QValidator, param1: string, param2: ptr cint): cint {.raises: [], gcsafe.}
type QValidatorfixupProc* = proc(self: QValidator, param1: string): void {.raises: [], gcsafe.}
type QValidatoreventProc* = proc(self: QValidator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QValidatoreventFilterProc* = proc(self: QValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QValidatortimerEventProc* = proc(self: QValidator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QValidatorchildEventProc* = proc(self: QValidator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QValidatorcustomEventProc* = proc(self: QValidator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QValidatorconnectNotifyProc* = proc(self: QValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QValidatordisconnectNotifyProc* = proc(self: QValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QValidatorVTable* = object
  vtbl: cQValidatorVTable
  metaObject*: QValidatormetaObjectProc
  metacast*: QValidatormetacastProc
  metacall*: QValidatormetacallProc
  validate*: QValidatorvalidateProc
  fixup*: QValidatorfixupProc
  event*: QValidatoreventProc
  eventFilter*: QValidatoreventFilterProc
  timerEvent*: QValidatortimerEventProc
  childEvent*: QValidatorchildEventProc
  customEvent*: QValidatorcustomEventProc
  connectNotify*: QValidatorconnectNotifyProc
  disconnectNotify*: QValidatordisconnectNotifyProc
proc QValidatormetaObject*(self: gen_qvalidator_types.QValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQValidator_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQValidator_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QValidatormetacast*(self: gen_qvalidator_types.QValidator, param1: cstring): pointer =
  fcQValidator_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQValidator_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QValidatormetacall*(self: gen_qvalidator_types.QValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQValidator_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQValidator_validate(vtbl: pointer, self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  let virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QValidatorfixup*(self: gen_qvalidator_types.QValidator, param1: string): void =
  fcQValidator_virtualbase_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_cQValidator_fixup(vtbl: pointer, self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  vtbl[].fixup(self, slotval1)

proc QValidatorevent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQValidator_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQValidator_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QValidatoreventFilter*(self: gen_qvalidator_types.QValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQValidator_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QValidatortimerEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQValidator_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQValidator_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QValidatorchildEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQValidator_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQValidator_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QValidatorcustomEvent*(self: gen_qvalidator_types.QValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQValidator_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQValidator_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QValidatorconnectNotify*(self: gen_qvalidator_types.QValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQValidator_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQValidator_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QValidatordisconnectNotify*(self: gen_qvalidator_types.QValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQValidator_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQValidator_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QValidatorVTable](vtbl)
  let self = QValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qvalidator_types.QValidator,
    vtbl: ref QValidatorVTable = nil): gen_qvalidator_types.QValidator =
  let vtbl = if vtbl == nil: new QValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQValidatorVTable, _: ptr cQValidator) {.cdecl.} =
    let vtbl = cast[ref QValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQValidator_disconnectNotify
  gen_qvalidator_types.QValidator(h: fcQValidator_new(addr(vtbl[]), ))

proc create*(T: type gen_qvalidator_types.QValidator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QValidatorVTable = nil): gen_qvalidator_types.QValidator =
  let vtbl = if vtbl == nil: new QValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQValidatorVTable, _: ptr cQValidator) {.cdecl.} =
    let vtbl = cast[ref QValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQValidator_disconnectNotify
  gen_qvalidator_types.QValidator(h: fcQValidator_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qvalidator_types.QValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQValidator_staticMetaObject())
proc delete*(self: gen_qvalidator_types.QValidator) =
  fcQValidator_delete(self.h)
proc metaObject*(self: gen_qvalidator_types.QIntValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIntValidator_metaObject(self.h))

proc metacast*(self: gen_qvalidator_types.QIntValidator, param1: cstring): pointer =
  fcQIntValidator_metacast(self.h, param1)

proc metacall*(self: gen_qvalidator_types.QIntValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQIntValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvalidator_types.QIntValidator, s: cstring): string =
  let v_ms = fcQIntValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QIntValidator, param1: string, param2: ptr cint): cint =
  cint(fcQIntValidator_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc fixup*(self: gen_qvalidator_types.QIntValidator, input: string): void =
  fcQIntValidator_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc setBottom*(self: gen_qvalidator_types.QIntValidator, bottom: cint): void =
  fcQIntValidator_setBottom(self.h, bottom)

proc setTop*(self: gen_qvalidator_types.QIntValidator, top: cint): void =
  fcQIntValidator_setTop(self.h, top)

proc setRange*(self: gen_qvalidator_types.QIntValidator, bottom: cint, top: cint): void =
  fcQIntValidator_setRange(self.h, bottom, top)

proc bottom*(self: gen_qvalidator_types.QIntValidator, ): cint =
  fcQIntValidator_bottom(self.h)

proc top*(self: gen_qvalidator_types.QIntValidator, ): cint =
  fcQIntValidator_top(self.h)

proc bottomChanged*(self: gen_qvalidator_types.QIntValidator, bottom: cint): void =
  fcQIntValidator_bottomChanged(self.h, bottom)

type QIntValidatorbottomChangedSlot* = proc(bottom: cint)
proc miqt_exec_callback_cQIntValidator_bottomChanged(slot: int, bottom: cint) {.exportc: "miqt_exec_callback_QIntValidator_bottomChanged".} =
  let nimfunc = cast[ptr QIntValidatorbottomChangedSlot](cast[pointer](slot))
  let slotval1 = bottom

  nimfunc[](slotval1)

proc onbottomChanged*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatorbottomChangedSlot) =
  var tmp = new QIntValidatorbottomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]))

proc topChanged*(self: gen_qvalidator_types.QIntValidator, top: cint): void =
  fcQIntValidator_topChanged(self.h, top)

type QIntValidatortopChangedSlot* = proc(top: cint)
proc miqt_exec_callback_cQIntValidator_topChanged(slot: int, top: cint) {.exportc: "miqt_exec_callback_QIntValidator_topChanged".} =
  let nimfunc = cast[ptr QIntValidatortopChangedSlot](cast[pointer](slot))
  let slotval1 = top

  nimfunc[](slotval1)

proc ontopChanged*(self: gen_qvalidator_types.QIntValidator, slot: QIntValidatortopChangedSlot) =
  var tmp = new QIntValidatortopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQIntValidator_connect_topChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvalidator_types.QIntValidator, s: cstring, c: cstring): string =
  let v_ms = fcQIntValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QIntValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQIntValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QIntValidatormetaObjectProc* = proc(self: QIntValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QIntValidatormetacastProc* = proc(self: QIntValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QIntValidatormetacallProc* = proc(self: QIntValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QIntValidatorvalidateProc* = proc(self: QIntValidator, param1: string, param2: ptr cint): cint {.raises: [], gcsafe.}
type QIntValidatorfixupProc* = proc(self: QIntValidator, input: string): void {.raises: [], gcsafe.}
type QIntValidatoreventProc* = proc(self: QIntValidator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIntValidatoreventFilterProc* = proc(self: QIntValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QIntValidatortimerEventProc* = proc(self: QIntValidator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QIntValidatorchildEventProc* = proc(self: QIntValidator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QIntValidatorcustomEventProc* = proc(self: QIntValidator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QIntValidatorconnectNotifyProc* = proc(self: QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIntValidatordisconnectNotifyProc* = proc(self: QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QIntValidatorVTable* = object
  vtbl: cQIntValidatorVTable
  metaObject*: QIntValidatormetaObjectProc
  metacast*: QIntValidatormetacastProc
  metacall*: QIntValidatormetacallProc
  validate*: QIntValidatorvalidateProc
  fixup*: QIntValidatorfixupProc
  event*: QIntValidatoreventProc
  eventFilter*: QIntValidatoreventFilterProc
  timerEvent*: QIntValidatortimerEventProc
  childEvent*: QIntValidatorchildEventProc
  customEvent*: QIntValidatorcustomEventProc
  connectNotify*: QIntValidatorconnectNotifyProc
  disconnectNotify*: QIntValidatordisconnectNotifyProc
proc QIntValidatormetaObject*(self: gen_qvalidator_types.QIntValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIntValidator_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQIntValidator_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QIntValidatormetacast*(self: gen_qvalidator_types.QIntValidator, param1: cstring): pointer =
  fcQIntValidator_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQIntValidator_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QIntValidatormetacall*(self: gen_qvalidator_types.QIntValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQIntValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQIntValidator_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QIntValidatorvalidate*(self: gen_qvalidator_types.QIntValidator, param1: string, param2: ptr cint): cint =
  cint(fcQIntValidator_virtualbase_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc miqt_exec_callback_cQIntValidator_validate(vtbl: pointer, self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  let virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QIntValidatorfixup*(self: gen_qvalidator_types.QIntValidator, input: string): void =
  fcQIntValidator_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc miqt_exec_callback_cQIntValidator_fixup(vtbl: pointer, self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc QIntValidatorevent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQIntValidator_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQIntValidator_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QIntValidatoreventFilter*(self: gen_qvalidator_types.QIntValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQIntValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQIntValidator_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QIntValidatortimerEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQIntValidator_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQIntValidator_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QIntValidatorchildEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQIntValidator_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQIntValidator_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QIntValidatorcustomEvent*(self: gen_qvalidator_types.QIntValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQIntValidator_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQIntValidator_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QIntValidatorconnectNotify*(self: gen_qvalidator_types.QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIntValidator_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQIntValidator_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QIntValidatordisconnectNotify*(self: gen_qvalidator_types.QIntValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQIntValidator_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQIntValidator_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QIntValidatorVTable](vtbl)
  let self = QIntValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qvalidator_types.QIntValidator,
    vtbl: ref QIntValidatorVTable = nil): gen_qvalidator_types.QIntValidator =
  let vtbl = if vtbl == nil: new QIntValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIntValidatorVTable, _: ptr cQIntValidator) {.cdecl.} =
    let vtbl = cast[ref QIntValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIntValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIntValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIntValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQIntValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQIntValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIntValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIntValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIntValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIntValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIntValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIntValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIntValidator_disconnectNotify
  gen_qvalidator_types.QIntValidator(h: fcQIntValidator_new(addr(vtbl[]), ))

proc create*(T: type gen_qvalidator_types.QIntValidator,
    bottom: cint, top: cint,
    vtbl: ref QIntValidatorVTable = nil): gen_qvalidator_types.QIntValidator =
  let vtbl = if vtbl == nil: new QIntValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIntValidatorVTable, _: ptr cQIntValidator) {.cdecl.} =
    let vtbl = cast[ref QIntValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIntValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIntValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIntValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQIntValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQIntValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIntValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIntValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIntValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIntValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIntValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIntValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIntValidator_disconnectNotify
  gen_qvalidator_types.QIntValidator(h: fcQIntValidator_new2(addr(vtbl[]), bottom, top))

proc create*(T: type gen_qvalidator_types.QIntValidator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QIntValidatorVTable = nil): gen_qvalidator_types.QIntValidator =
  let vtbl = if vtbl == nil: new QIntValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIntValidatorVTable, _: ptr cQIntValidator) {.cdecl.} =
    let vtbl = cast[ref QIntValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIntValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIntValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIntValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQIntValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQIntValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIntValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIntValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIntValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIntValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIntValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIntValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIntValidator_disconnectNotify
  gen_qvalidator_types.QIntValidator(h: fcQIntValidator_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qvalidator_types.QIntValidator,
    bottom: cint, top: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QIntValidatorVTable = nil): gen_qvalidator_types.QIntValidator =
  let vtbl = if vtbl == nil: new QIntValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQIntValidatorVTable, _: ptr cQIntValidator) {.cdecl.} =
    let vtbl = cast[ref QIntValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQIntValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQIntValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQIntValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQIntValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQIntValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQIntValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQIntValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQIntValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQIntValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQIntValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQIntValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQIntValidator_disconnectNotify
  gen_qvalidator_types.QIntValidator(h: fcQIntValidator_new4(addr(vtbl[]), bottom, top, parent.h))

proc staticMetaObject*(_: type gen_qvalidator_types.QIntValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQIntValidator_staticMetaObject())
proc delete*(self: gen_qvalidator_types.QIntValidator) =
  fcQIntValidator_delete(self.h)
proc metaObject*(self: gen_qvalidator_types.QDoubleValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleValidator_metaObject(self.h))

proc metacast*(self: gen_qvalidator_types.QDoubleValidator, param1: cstring): pointer =
  fcQDoubleValidator_metacast(self.h, param1)

proc metacall*(self: gen_qvalidator_types.QDoubleValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQDoubleValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring): string =
  let v_ms = fcQDoubleValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QDoubleValidator, param1: string, param2: ptr cint): cint =
  cint(fcQDoubleValidator_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc fixup*(self: gen_qvalidator_types.QDoubleValidator, input: string): void =
  fcQDoubleValidator_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc setRange*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64, top: float64, decimals: cint): void =
  fcQDoubleValidator_setRange(self.h, bottom, top, decimals)

proc setRange*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64, top: float64): void =
  fcQDoubleValidator_setRange2(self.h, bottom, top)

proc setBottom*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64): void =
  fcQDoubleValidator_setBottom(self.h, bottom)

proc setTop*(self: gen_qvalidator_types.QDoubleValidator, top: float64): void =
  fcQDoubleValidator_setTop(self.h, top)

proc setDecimals*(self: gen_qvalidator_types.QDoubleValidator, decimals: cint): void =
  fcQDoubleValidator_setDecimals(self.h, decimals)

proc setNotation*(self: gen_qvalidator_types.QDoubleValidator, notation: cint): void =
  fcQDoubleValidator_setNotation(self.h, cint(notation))

proc bottom*(self: gen_qvalidator_types.QDoubleValidator, ): float64 =
  fcQDoubleValidator_bottom(self.h)

proc top*(self: gen_qvalidator_types.QDoubleValidator, ): float64 =
  fcQDoubleValidator_top(self.h)

proc decimals*(self: gen_qvalidator_types.QDoubleValidator, ): cint =
  fcQDoubleValidator_decimals(self.h)

proc notation*(self: gen_qvalidator_types.QDoubleValidator, ): cint =
  cint(fcQDoubleValidator_notation(self.h))

proc bottomChanged*(self: gen_qvalidator_types.QDoubleValidator, bottom: float64): void =
  fcQDoubleValidator_bottomChanged(self.h, bottom)

type QDoubleValidatorbottomChangedSlot* = proc(bottom: float64)
proc miqt_exec_callback_cQDoubleValidator_bottomChanged(slot: int, bottom: float64) {.exportc: "miqt_exec_callback_QDoubleValidator_bottomChanged".} =
  let nimfunc = cast[ptr QDoubleValidatorbottomChangedSlot](cast[pointer](slot))
  let slotval1 = bottom

  nimfunc[](slotval1)

proc onbottomChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatorbottomChangedSlot) =
  var tmp = new QDoubleValidatorbottomChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_bottomChanged(self.h, cast[int](addr tmp[]))

proc topChanged*(self: gen_qvalidator_types.QDoubleValidator, top: float64): void =
  fcQDoubleValidator_topChanged(self.h, top)

type QDoubleValidatortopChangedSlot* = proc(top: float64)
proc miqt_exec_callback_cQDoubleValidator_topChanged(slot: int, top: float64) {.exportc: "miqt_exec_callback_QDoubleValidator_topChanged".} =
  let nimfunc = cast[ptr QDoubleValidatortopChangedSlot](cast[pointer](slot))
  let slotval1 = top

  nimfunc[](slotval1)

proc ontopChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatortopChangedSlot) =
  var tmp = new QDoubleValidatortopChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_topChanged(self.h, cast[int](addr tmp[]))

proc decimalsChanged*(self: gen_qvalidator_types.QDoubleValidator, decimals: cint): void =
  fcQDoubleValidator_decimalsChanged(self.h, decimals)

type QDoubleValidatordecimalsChangedSlot* = proc(decimals: cint)
proc miqt_exec_callback_cQDoubleValidator_decimalsChanged(slot: int, decimals: cint) {.exportc: "miqt_exec_callback_QDoubleValidator_decimalsChanged".} =
  let nimfunc = cast[ptr QDoubleValidatordecimalsChangedSlot](cast[pointer](slot))
  let slotval1 = decimals

  nimfunc[](slotval1)

proc ondecimalsChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatordecimalsChangedSlot) =
  var tmp = new QDoubleValidatordecimalsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_decimalsChanged(self.h, cast[int](addr tmp[]))

proc notationChanged*(self: gen_qvalidator_types.QDoubleValidator, notation: cint): void =
  fcQDoubleValidator_notationChanged(self.h, cint(notation))

type QDoubleValidatornotationChangedSlot* = proc(notation: cint)
proc miqt_exec_callback_cQDoubleValidator_notationChanged(slot: int, notation: cint) {.exportc: "miqt_exec_callback_QDoubleValidator_notationChanged".} =
  let nimfunc = cast[ptr QDoubleValidatornotationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(notation)

  nimfunc[](slotval1)

proc onnotationChanged*(self: gen_qvalidator_types.QDoubleValidator, slot: QDoubleValidatornotationChangedSlot) =
  var tmp = new QDoubleValidatornotationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDoubleValidator_connect_notationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring, c: cstring): string =
  let v_ms = fcQDoubleValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QDoubleValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDoubleValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDoubleValidatormetaObjectProc* = proc(self: QDoubleValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDoubleValidatormetacastProc* = proc(self: QDoubleValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QDoubleValidatormetacallProc* = proc(self: QDoubleValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDoubleValidatorvalidateProc* = proc(self: QDoubleValidator, param1: string, param2: ptr cint): cint {.raises: [], gcsafe.}
type QDoubleValidatorfixupProc* = proc(self: QDoubleValidator, input: string): void {.raises: [], gcsafe.}
type QDoubleValidatoreventProc* = proc(self: QDoubleValidator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDoubleValidatoreventFilterProc* = proc(self: QDoubleValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDoubleValidatortimerEventProc* = proc(self: QDoubleValidator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDoubleValidatorchildEventProc* = proc(self: QDoubleValidator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDoubleValidatorcustomEventProc* = proc(self: QDoubleValidator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDoubleValidatorconnectNotifyProc* = proc(self: QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDoubleValidatordisconnectNotifyProc* = proc(self: QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDoubleValidatorVTable* = object
  vtbl: cQDoubleValidatorVTable
  metaObject*: QDoubleValidatormetaObjectProc
  metacast*: QDoubleValidatormetacastProc
  metacall*: QDoubleValidatormetacallProc
  validate*: QDoubleValidatorvalidateProc
  fixup*: QDoubleValidatorfixupProc
  event*: QDoubleValidatoreventProc
  eventFilter*: QDoubleValidatoreventFilterProc
  timerEvent*: QDoubleValidatortimerEventProc
  childEvent*: QDoubleValidatorchildEventProc
  customEvent*: QDoubleValidatorcustomEventProc
  connectNotify*: QDoubleValidatorconnectNotifyProc
  disconnectNotify*: QDoubleValidatordisconnectNotifyProc
proc QDoubleValidatormetaObject*(self: gen_qvalidator_types.QDoubleValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleValidator_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQDoubleValidator_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QDoubleValidatormetacast*(self: gen_qvalidator_types.QDoubleValidator, param1: cstring): pointer =
  fcQDoubleValidator_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDoubleValidator_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDoubleValidatormetacall*(self: gen_qvalidator_types.QDoubleValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQDoubleValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDoubleValidator_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDoubleValidatorvalidate*(self: gen_qvalidator_types.QDoubleValidator, param1: string, param2: ptr cint): cint =
  cint(fcQDoubleValidator_virtualbase_validate(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), param2))

proc miqt_exec_callback_cQDoubleValidator_validate(vtbl: pointer, self: pointer, param1: struct_miqt_string, param2: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  let slotval2 = param2
  let virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QDoubleValidatorfixup*(self: gen_qvalidator_types.QDoubleValidator, input: string): void =
  fcQDoubleValidator_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc miqt_exec_callback_cQDoubleValidator_fixup(vtbl: pointer, self: pointer, input: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  vtbl[].fixup(self, slotval1)

proc QDoubleValidatorevent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleValidator_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDoubleValidator_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDoubleValidatoreventFilter*(self: gen_qvalidator_types.QDoubleValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDoubleValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDoubleValidator_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDoubleValidatortimerEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDoubleValidator_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleValidator_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QDoubleValidatorchildEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDoubleValidator_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleValidator_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QDoubleValidatorcustomEvent*(self: gen_qvalidator_types.QDoubleValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQDoubleValidator_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDoubleValidator_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QDoubleValidatorconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleValidator_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDoubleValidator_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QDoubleValidatordisconnectNotify*(self: gen_qvalidator_types.QDoubleValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDoubleValidator_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDoubleValidator_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDoubleValidatorVTable](vtbl)
  let self = QDoubleValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    vtbl: ref QDoubleValidatorVTable = nil): gen_qvalidator_types.QDoubleValidator =
  let vtbl = if vtbl == nil: new QDoubleValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDoubleValidatorVTable, _: ptr cQDoubleValidator) {.cdecl.} =
    let vtbl = cast[ref QDoubleValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDoubleValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDoubleValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDoubleValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQDoubleValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQDoubleValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDoubleValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDoubleValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDoubleValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDoubleValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDoubleValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDoubleValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDoubleValidator_disconnectNotify
  gen_qvalidator_types.QDoubleValidator(h: fcQDoubleValidator_new(addr(vtbl[]), ))

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    bottom: float64, top: float64, decimals: cint,
    vtbl: ref QDoubleValidatorVTable = nil): gen_qvalidator_types.QDoubleValidator =
  let vtbl = if vtbl == nil: new QDoubleValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDoubleValidatorVTable, _: ptr cQDoubleValidator) {.cdecl.} =
    let vtbl = cast[ref QDoubleValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDoubleValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDoubleValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDoubleValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQDoubleValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQDoubleValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDoubleValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDoubleValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDoubleValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDoubleValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDoubleValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDoubleValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDoubleValidator_disconnectNotify
  gen_qvalidator_types.QDoubleValidator(h: fcQDoubleValidator_new2(addr(vtbl[]), bottom, top, decimals))

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QDoubleValidatorVTable = nil): gen_qvalidator_types.QDoubleValidator =
  let vtbl = if vtbl == nil: new QDoubleValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDoubleValidatorVTable, _: ptr cQDoubleValidator) {.cdecl.} =
    let vtbl = cast[ref QDoubleValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDoubleValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDoubleValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDoubleValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQDoubleValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQDoubleValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDoubleValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDoubleValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDoubleValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDoubleValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDoubleValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDoubleValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDoubleValidator_disconnectNotify
  gen_qvalidator_types.QDoubleValidator(h: fcQDoubleValidator_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qvalidator_types.QDoubleValidator,
    bottom: float64, top: float64, decimals: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QDoubleValidatorVTable = nil): gen_qvalidator_types.QDoubleValidator =
  let vtbl = if vtbl == nil: new QDoubleValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDoubleValidatorVTable, _: ptr cQDoubleValidator) {.cdecl.} =
    let vtbl = cast[ref QDoubleValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDoubleValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDoubleValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDoubleValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQDoubleValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQDoubleValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDoubleValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDoubleValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDoubleValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDoubleValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDoubleValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDoubleValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDoubleValidator_disconnectNotify
  gen_qvalidator_types.QDoubleValidator(h: fcQDoubleValidator_new4(addr(vtbl[]), bottom, top, decimals, parent.h))

proc staticMetaObject*(_: type gen_qvalidator_types.QDoubleValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDoubleValidator_staticMetaObject())
proc delete*(self: gen_qvalidator_types.QDoubleValidator) =
  fcQDoubleValidator_delete(self.h)
proc metaObject*(self: gen_qvalidator_types.QRegularExpressionValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegularExpressionValidator_metaObject(self.h))

proc metacast*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cstring): pointer =
  fcQRegularExpressionValidator_metacast(self.h, param1)

proc metacall*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQRegularExpressionValidator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring): string =
  let v_ms = fcQRegularExpressionValidator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc validate*(self: gen_qvalidator_types.QRegularExpressionValidator, input: string, pos: ptr cint): cint =
  cint(fcQRegularExpressionValidator_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc regularExpression*(self: gen_qvalidator_types.QRegularExpressionValidator, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpressionValidator_regularExpression(self.h))

proc setRegularExpression*(self: gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpressionValidator_setRegularExpression(self.h, re.h)

proc regularExpressionChanged*(self: gen_qvalidator_types.QRegularExpressionValidator, re: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpressionValidator_regularExpressionChanged(self.h, re.h)

type QRegularExpressionValidatorregularExpressionChangedSlot* = proc(re: gen_qregularexpression_types.QRegularExpression)
proc miqt_exec_callback_cQRegularExpressionValidator_regularExpressionChanged(slot: int, re: pointer) {.exportc: "miqt_exec_callback_QRegularExpressionValidator_regularExpressionChanged".} =
  let nimfunc = cast[ptr QRegularExpressionValidatorregularExpressionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qregularexpression_types.QRegularExpression(h: re)

  nimfunc[](slotval1)

proc onregularExpressionChanged*(self: gen_qvalidator_types.QRegularExpressionValidator, slot: QRegularExpressionValidatorregularExpressionChangedSlot) =
  var tmp = new QRegularExpressionValidatorregularExpressionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQRegularExpressionValidator_connect_regularExpressionChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring, c: cstring): string =
  let v_ms = fcQRegularExpressionValidator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvalidator_types.QRegularExpressionValidator, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRegularExpressionValidator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QRegularExpressionValidatormetaObjectProc* = proc(self: QRegularExpressionValidator): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QRegularExpressionValidatormetacastProc* = proc(self: QRegularExpressionValidator, param1: cstring): pointer {.raises: [], gcsafe.}
type QRegularExpressionValidatormetacallProc* = proc(self: QRegularExpressionValidator, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QRegularExpressionValidatorvalidateProc* = proc(self: QRegularExpressionValidator, input: string, pos: ptr cint): cint {.raises: [], gcsafe.}
type QRegularExpressionValidatorfixupProc* = proc(self: QRegularExpressionValidator, param1: string): void {.raises: [], gcsafe.}
type QRegularExpressionValidatoreventProc* = proc(self: QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRegularExpressionValidatoreventFilterProc* = proc(self: QRegularExpressionValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QRegularExpressionValidatortimerEventProc* = proc(self: QRegularExpressionValidator, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QRegularExpressionValidatorchildEventProc* = proc(self: QRegularExpressionValidator, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QRegularExpressionValidatorcustomEventProc* = proc(self: QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QRegularExpressionValidatorconnectNotifyProc* = proc(self: QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRegularExpressionValidatordisconnectNotifyProc* = proc(self: QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QRegularExpressionValidatorVTable* = object
  vtbl: cQRegularExpressionValidatorVTable
  metaObject*: QRegularExpressionValidatormetaObjectProc
  metacast*: QRegularExpressionValidatormetacastProc
  metacall*: QRegularExpressionValidatormetacallProc
  validate*: QRegularExpressionValidatorvalidateProc
  fixup*: QRegularExpressionValidatorfixupProc
  event*: QRegularExpressionValidatoreventProc
  eventFilter*: QRegularExpressionValidatoreventFilterProc
  timerEvent*: QRegularExpressionValidatortimerEventProc
  childEvent*: QRegularExpressionValidatorchildEventProc
  customEvent*: QRegularExpressionValidatorcustomEventProc
  connectNotify*: QRegularExpressionValidatorconnectNotifyProc
  disconnectNotify*: QRegularExpressionValidatordisconnectNotifyProc
proc QRegularExpressionValidatormetaObject*(self: gen_qvalidator_types.QRegularExpressionValidator, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegularExpressionValidator_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQRegularExpressionValidator_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QRegularExpressionValidatormetacast*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cstring): pointer =
  fcQRegularExpressionValidator_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQRegularExpressionValidator_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QRegularExpressionValidatormetacall*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: cint, param2: cint, param3: pointer): cint =
  fcQRegularExpressionValidator_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQRegularExpressionValidator_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QRegularExpressionValidatorvalidate*(self: gen_qvalidator_types.QRegularExpressionValidator, input: string, pos: ptr cint): cint =
  cint(fcQRegularExpressionValidator_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc miqt_exec_callback_cQRegularExpressionValidator_validate(vtbl: pointer, self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret
  let slotval2 = pos
  let virtualReturn = vtbl[].validate(self, slotval1, slotval2)
  cint(virtualReturn)

proc QRegularExpressionValidatorfixup*(self: gen_qvalidator_types.QRegularExpressionValidator, param1: string): void =
  fcQRegularExpressionValidator_virtualbase_fixup(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc miqt_exec_callback_cQRegularExpressionValidator_fixup(vtbl: pointer, self: pointer, param1: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret
  vtbl[].fixup(self, slotval1)

proc QRegularExpressionValidatorevent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): bool =
  fcQRegularExpressionValidator_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQRegularExpressionValidator_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QRegularExpressionValidatoreventFilter*(self: gen_qvalidator_types.QRegularExpressionValidator, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQRegularExpressionValidator_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQRegularExpressionValidator_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QRegularExpressionValidatortimerEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQRegularExpressionValidator_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQRegularExpressionValidator_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QRegularExpressionValidatorchildEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QChildEvent): void =
  fcQRegularExpressionValidator_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQRegularExpressionValidator_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QRegularExpressionValidatorcustomEvent*(self: gen_qvalidator_types.QRegularExpressionValidator, event: gen_qcoreevent_types.QEvent): void =
  fcQRegularExpressionValidator_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQRegularExpressionValidator_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QRegularExpressionValidatorconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRegularExpressionValidator_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRegularExpressionValidator_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QRegularExpressionValidatordisconnectNotify*(self: gen_qvalidator_types.QRegularExpressionValidator, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQRegularExpressionValidator_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQRegularExpressionValidator_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QRegularExpressionValidatorVTable](vtbl)
  let self = QRegularExpressionValidator(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    vtbl: ref QRegularExpressionValidatorVTable = nil): gen_qvalidator_types.QRegularExpressionValidator =
  let vtbl = if vtbl == nil: new QRegularExpressionValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRegularExpressionValidatorVTable, _: ptr cQRegularExpressionValidator) {.cdecl.} =
    let vtbl = cast[ref QRegularExpressionValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRegularExpressionValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRegularExpressionValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRegularExpressionValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQRegularExpressionValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQRegularExpressionValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRegularExpressionValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRegularExpressionValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRegularExpressionValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRegularExpressionValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRegularExpressionValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRegularExpressionValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRegularExpressionValidator_disconnectNotify
  gen_qvalidator_types.QRegularExpressionValidator(h: fcQRegularExpressionValidator_new(addr(vtbl[]), ))

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    re: gen_qregularexpression_types.QRegularExpression,
    vtbl: ref QRegularExpressionValidatorVTable = nil): gen_qvalidator_types.QRegularExpressionValidator =
  let vtbl = if vtbl == nil: new QRegularExpressionValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRegularExpressionValidatorVTable, _: ptr cQRegularExpressionValidator) {.cdecl.} =
    let vtbl = cast[ref QRegularExpressionValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRegularExpressionValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRegularExpressionValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRegularExpressionValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQRegularExpressionValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQRegularExpressionValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRegularExpressionValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRegularExpressionValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRegularExpressionValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRegularExpressionValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRegularExpressionValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRegularExpressionValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRegularExpressionValidator_disconnectNotify
  gen_qvalidator_types.QRegularExpressionValidator(h: fcQRegularExpressionValidator_new2(addr(vtbl[]), re.h))

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    parent: gen_qobject_types.QObject,
    vtbl: ref QRegularExpressionValidatorVTable = nil): gen_qvalidator_types.QRegularExpressionValidator =
  let vtbl = if vtbl == nil: new QRegularExpressionValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRegularExpressionValidatorVTable, _: ptr cQRegularExpressionValidator) {.cdecl.} =
    let vtbl = cast[ref QRegularExpressionValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRegularExpressionValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRegularExpressionValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRegularExpressionValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQRegularExpressionValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQRegularExpressionValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRegularExpressionValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRegularExpressionValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRegularExpressionValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRegularExpressionValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRegularExpressionValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRegularExpressionValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRegularExpressionValidator_disconnectNotify
  gen_qvalidator_types.QRegularExpressionValidator(h: fcQRegularExpressionValidator_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qvalidator_types.QRegularExpressionValidator,
    re: gen_qregularexpression_types.QRegularExpression, parent: gen_qobject_types.QObject,
    vtbl: ref QRegularExpressionValidatorVTable = nil): gen_qvalidator_types.QRegularExpressionValidator =
  let vtbl = if vtbl == nil: new QRegularExpressionValidatorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQRegularExpressionValidatorVTable, _: ptr cQRegularExpressionValidator) {.cdecl.} =
    let vtbl = cast[ref QRegularExpressionValidatorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQRegularExpressionValidator_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQRegularExpressionValidator_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQRegularExpressionValidator_metacall
  if not isNil(vtbl.validate):
    vtbl[].vtbl.validate = miqt_exec_callback_cQRegularExpressionValidator_validate
  if not isNil(vtbl.fixup):
    vtbl[].vtbl.fixup = miqt_exec_callback_cQRegularExpressionValidator_fixup
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQRegularExpressionValidator_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQRegularExpressionValidator_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQRegularExpressionValidator_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQRegularExpressionValidator_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQRegularExpressionValidator_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQRegularExpressionValidator_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQRegularExpressionValidator_disconnectNotify
  gen_qvalidator_types.QRegularExpressionValidator(h: fcQRegularExpressionValidator_new4(addr(vtbl[]), re.h, parent.h))

proc staticMetaObject*(_: type gen_qvalidator_types.QRegularExpressionValidator): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRegularExpressionValidator_staticMetaObject())
proc delete*(self: gen_qvalidator_types.QRegularExpressionValidator) =
  fcQRegularExpressionValidator_delete(self.h)
