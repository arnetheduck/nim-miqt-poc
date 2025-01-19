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
{.compile("gen_qlcdnumber.cpp", cflags).}


type QLCDNumberMode* = cint
const
  QLCDNumberHex* = 0
  QLCDNumberDec* = 1
  QLCDNumberOct* = 2
  QLCDNumberBin* = 3



type QLCDNumberSegmentStyle* = cint
const
  QLCDNumberOutline* = 0
  QLCDNumberFilled* = 1
  QLCDNumberFlat* = 2



import gen_qlcdnumber_types
export gen_qlcdnumber_types

import
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
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
  gen_qvariant,
  gen_qwidget
export
  gen_qcoreevent,
  gen_qevent,
  gen_qframe,
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
  gen_qvariant,
  gen_qwidget

type cQLCDNumber*{.exportc: "QLCDNumber", incompleteStruct.} = object

proc fcQLCDNumber_new(parent: pointer): ptr cQLCDNumber {.importc: "QLCDNumber_new".}
proc fcQLCDNumber_new2(): ptr cQLCDNumber {.importc: "QLCDNumber_new2".}
proc fcQLCDNumber_new3(numDigits: cuint): ptr cQLCDNumber {.importc: "QLCDNumber_new3".}
proc fcQLCDNumber_new4(numDigits: cuint, parent: pointer): ptr cQLCDNumber {.importc: "QLCDNumber_new4".}
proc fcQLCDNumber_metaObject(self: pointer, ): pointer {.importc: "QLCDNumber_metaObject".}
proc fcQLCDNumber_metacast(self: pointer, param1: cstring): pointer {.importc: "QLCDNumber_metacast".}
proc fcQLCDNumber_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLCDNumber_metacall".}
proc fcQLCDNumber_tr(s: cstring): struct_miqt_string {.importc: "QLCDNumber_tr".}
proc fcQLCDNumber_smallDecimalPoint(self: pointer, ): bool {.importc: "QLCDNumber_smallDecimalPoint".}
proc fcQLCDNumber_digitCount(self: pointer, ): cint {.importc: "QLCDNumber_digitCount".}
proc fcQLCDNumber_setDigitCount(self: pointer, nDigits: cint): void {.importc: "QLCDNumber_setDigitCount".}
proc fcQLCDNumber_checkOverflow(self: pointer, num: float64): bool {.importc: "QLCDNumber_checkOverflow".}
proc fcQLCDNumber_checkOverflowWithNum(self: pointer, num: cint): bool {.importc: "QLCDNumber_checkOverflowWithNum".}
proc fcQLCDNumber_mode(self: pointer, ): cint {.importc: "QLCDNumber_mode".}
proc fcQLCDNumber_setMode(self: pointer, mode: cint): void {.importc: "QLCDNumber_setMode".}
proc fcQLCDNumber_segmentStyle(self: pointer, ): cint {.importc: "QLCDNumber_segmentStyle".}
proc fcQLCDNumber_setSegmentStyle(self: pointer, segmentStyle: cint): void {.importc: "QLCDNumber_setSegmentStyle".}
proc fcQLCDNumber_value(self: pointer, ): float64 {.importc: "QLCDNumber_value".}
proc fcQLCDNumber_intValue(self: pointer, ): cint {.importc: "QLCDNumber_intValue".}
proc fcQLCDNumber_sizeHint(self: pointer, ): pointer {.importc: "QLCDNumber_sizeHint".}
proc fcQLCDNumber_display(self: pointer, str: struct_miqt_string): void {.importc: "QLCDNumber_display".}
proc fcQLCDNumber_displayWithNum(self: pointer, num: cint): void {.importc: "QLCDNumber_displayWithNum".}
proc fcQLCDNumber_display2(self: pointer, num: float64): void {.importc: "QLCDNumber_display2".}
proc fcQLCDNumber_setHexMode(self: pointer, ): void {.importc: "QLCDNumber_setHexMode".}
proc fcQLCDNumber_setDecMode(self: pointer, ): void {.importc: "QLCDNumber_setDecMode".}
proc fcQLCDNumber_setOctMode(self: pointer, ): void {.importc: "QLCDNumber_setOctMode".}
proc fcQLCDNumber_setBinMode(self: pointer, ): void {.importc: "QLCDNumber_setBinMode".}
proc fcQLCDNumber_setSmallDecimalPoint(self: pointer, smallDecimalPoint: bool): void {.importc: "QLCDNumber_setSmallDecimalPoint".}
proc fcQLCDNumber_overflow(self: pointer, ): void {.importc: "QLCDNumber_overflow".}
proc fQLCDNumber_connect_overflow(self: pointer, slot: int) {.importc: "QLCDNumber_connect_overflow".}
proc fcQLCDNumber_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLCDNumber_tr2".}
proc fcQLCDNumber_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLCDNumber_tr3".}
proc fQLCDNumber_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLCDNumber_virtualbase_metacall".}
proc fcQLCDNumber_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_metacall".}
proc fQLCDNumber_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QLCDNumber_virtualbase_sizeHint".}
proc fcQLCDNumber_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_sizeHint".}
proc fQLCDNumber_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QLCDNumber_virtualbase_event".}
proc fcQLCDNumber_override_virtual_event(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_event".}
proc fQLCDNumber_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QLCDNumber_virtualbase_paintEvent".}
proc fcQLCDNumber_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_paintEvent".}
proc fQLCDNumber_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QLCDNumber_virtualbase_changeEvent".}
proc fcQLCDNumber_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_changeEvent".}
proc fQLCDNumber_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QLCDNumber_virtualbase_initStyleOption".}
proc fcQLCDNumber_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_initStyleOption".}
proc fQLCDNumber_virtualbase_devType(self: pointer, ): cint{.importc: "QLCDNumber_virtualbase_devType".}
proc fcQLCDNumber_override_virtual_devType(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_devType".}
proc fQLCDNumber_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QLCDNumber_virtualbase_setVisible".}
proc fcQLCDNumber_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_setVisible".}
proc fQLCDNumber_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QLCDNumber_virtualbase_minimumSizeHint".}
proc fcQLCDNumber_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_minimumSizeHint".}
proc fQLCDNumber_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLCDNumber_virtualbase_heightForWidth".}
proc fcQLCDNumber_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_heightForWidth".}
proc fQLCDNumber_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLCDNumber_virtualbase_hasHeightForWidth".}
proc fcQLCDNumber_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_hasHeightForWidth".}
proc fQLCDNumber_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QLCDNumber_virtualbase_paintEngine".}
proc fcQLCDNumber_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_paintEngine".}
proc fQLCDNumber_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_mousePressEvent".}
proc fcQLCDNumber_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_mousePressEvent".}
proc fQLCDNumber_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_mouseReleaseEvent".}
proc fcQLCDNumber_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_mouseReleaseEvent".}
proc fQLCDNumber_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_mouseDoubleClickEvent".}
proc fcQLCDNumber_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_mouseDoubleClickEvent".}
proc fQLCDNumber_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_mouseMoveEvent".}
proc fcQLCDNumber_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_mouseMoveEvent".}
proc fQLCDNumber_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_wheelEvent".}
proc fcQLCDNumber_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_wheelEvent".}
proc fQLCDNumber_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_keyPressEvent".}
proc fcQLCDNumber_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_keyPressEvent".}
proc fQLCDNumber_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_keyReleaseEvent".}
proc fcQLCDNumber_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_keyReleaseEvent".}
proc fQLCDNumber_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_focusInEvent".}
proc fcQLCDNumber_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_focusInEvent".}
proc fQLCDNumber_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_focusOutEvent".}
proc fcQLCDNumber_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_focusOutEvent".}
proc fQLCDNumber_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_enterEvent".}
proc fcQLCDNumber_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_enterEvent".}
proc fQLCDNumber_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_leaveEvent".}
proc fcQLCDNumber_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_leaveEvent".}
proc fQLCDNumber_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_moveEvent".}
proc fcQLCDNumber_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_moveEvent".}
proc fQLCDNumber_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_resizeEvent".}
proc fcQLCDNumber_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_resizeEvent".}
proc fQLCDNumber_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_closeEvent".}
proc fcQLCDNumber_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_closeEvent".}
proc fQLCDNumber_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_contextMenuEvent".}
proc fcQLCDNumber_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_contextMenuEvent".}
proc fQLCDNumber_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_tabletEvent".}
proc fcQLCDNumber_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_tabletEvent".}
proc fQLCDNumber_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_actionEvent".}
proc fcQLCDNumber_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_actionEvent".}
proc fQLCDNumber_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_dragEnterEvent".}
proc fcQLCDNumber_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_dragEnterEvent".}
proc fQLCDNumber_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_dragMoveEvent".}
proc fcQLCDNumber_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_dragMoveEvent".}
proc fQLCDNumber_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_dragLeaveEvent".}
proc fcQLCDNumber_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_dragLeaveEvent".}
proc fQLCDNumber_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_dropEvent".}
proc fcQLCDNumber_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_dropEvent".}
proc fQLCDNumber_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_showEvent".}
proc fcQLCDNumber_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_showEvent".}
proc fQLCDNumber_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_hideEvent".}
proc fcQLCDNumber_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_hideEvent".}
proc fQLCDNumber_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QLCDNumber_virtualbase_nativeEvent".}
proc fcQLCDNumber_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_nativeEvent".}
proc fQLCDNumber_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QLCDNumber_virtualbase_metric".}
proc fcQLCDNumber_override_virtual_metric(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_metric".}
proc fQLCDNumber_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QLCDNumber_virtualbase_initPainter".}
proc fcQLCDNumber_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_initPainter".}
proc fQLCDNumber_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QLCDNumber_virtualbase_redirected".}
proc fcQLCDNumber_override_virtual_redirected(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_redirected".}
proc fQLCDNumber_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QLCDNumber_virtualbase_sharedPainter".}
proc fcQLCDNumber_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_sharedPainter".}
proc fQLCDNumber_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QLCDNumber_virtualbase_inputMethodEvent".}
proc fcQLCDNumber_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_inputMethodEvent".}
proc fQLCDNumber_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QLCDNumber_virtualbase_inputMethodQuery".}
proc fcQLCDNumber_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_inputMethodQuery".}
proc fQLCDNumber_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QLCDNumber_virtualbase_focusNextPrevChild".}
proc fcQLCDNumber_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_focusNextPrevChild".}
proc fQLCDNumber_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLCDNumber_virtualbase_eventFilter".}
proc fcQLCDNumber_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_eventFilter".}
proc fQLCDNumber_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_timerEvent".}
proc fcQLCDNumber_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_timerEvent".}
proc fQLCDNumber_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_childEvent".}
proc fcQLCDNumber_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_childEvent".}
proc fQLCDNumber_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLCDNumber_virtualbase_customEvent".}
proc fcQLCDNumber_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_customEvent".}
proc fQLCDNumber_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLCDNumber_virtualbase_connectNotify".}
proc fcQLCDNumber_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_connectNotify".}
proc fQLCDNumber_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLCDNumber_virtualbase_disconnectNotify".}
proc fcQLCDNumber_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLCDNumber_override_virtual_disconnectNotify".}
proc fcQLCDNumber_staticMetaObject(): pointer {.importc: "QLCDNumber_staticMetaObject".}
proc fcQLCDNumber_delete(self: pointer) {.importc: "QLCDNumber_delete".}


func init*(T: type QLCDNumber, h: ptr cQLCDNumber): QLCDNumber =
  T(h: h)
proc create*(T: type QLCDNumber, parent: gen_qwidget.QWidget): QLCDNumber =

  QLCDNumber.init(fcQLCDNumber_new(parent.h))
proc create*(T: type QLCDNumber, ): QLCDNumber =

  QLCDNumber.init(fcQLCDNumber_new2())
proc create*(T: type QLCDNumber, numDigits: cuint): QLCDNumber =

  QLCDNumber.init(fcQLCDNumber_new3(numDigits))
proc create*(T: type QLCDNumber, numDigits: cuint, parent: gen_qwidget.QWidget): QLCDNumber =

  QLCDNumber.init(fcQLCDNumber_new4(numDigits, parent.h))
proc metaObject*(self: QLCDNumber, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQLCDNumber_metaObject(self.h))

proc metacast*(self: QLCDNumber, param1: cstring): pointer =

  fcQLCDNumber_metacast(self.h, param1)

proc metacall*(self: QLCDNumber, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQLCDNumber_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QLCDNumber, s: cstring): string =

  let v_ms = fcQLCDNumber_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc smallDecimalPoint*(self: QLCDNumber, ): bool =

  fcQLCDNumber_smallDecimalPoint(self.h)

proc digitCount*(self: QLCDNumber, ): cint =

  fcQLCDNumber_digitCount(self.h)

proc setDigitCount*(self: QLCDNumber, nDigits: cint): void =

  fcQLCDNumber_setDigitCount(self.h, nDigits)

proc checkOverflow*(self: QLCDNumber, num: float64): bool =

  fcQLCDNumber_checkOverflow(self.h, num)

proc checkOverflowWithNum*(self: QLCDNumber, num: cint): bool =

  fcQLCDNumber_checkOverflowWithNum(self.h, num)

proc mode*(self: QLCDNumber, ): QLCDNumberMode =

  QLCDNumberMode(fcQLCDNumber_mode(self.h))

proc setMode*(self: QLCDNumber, mode: QLCDNumberMode): void =

  fcQLCDNumber_setMode(self.h, cint(mode))

proc segmentStyle*(self: QLCDNumber, ): QLCDNumberSegmentStyle =

  QLCDNumberSegmentStyle(fcQLCDNumber_segmentStyle(self.h))

proc setSegmentStyle*(self: QLCDNumber, segmentStyle: QLCDNumberSegmentStyle): void =

  fcQLCDNumber_setSegmentStyle(self.h, cint(segmentStyle))

proc value*(self: QLCDNumber, ): float64 =

  fcQLCDNumber_value(self.h)

proc intValue*(self: QLCDNumber, ): cint =

  fcQLCDNumber_intValue(self.h)

proc sizeHint*(self: QLCDNumber, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQLCDNumber_sizeHint(self.h))

proc display*(self: QLCDNumber, str: string): void =

  fcQLCDNumber_display(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc displayWithNum*(self: QLCDNumber, num: cint): void =

  fcQLCDNumber_displayWithNum(self.h, num)

proc display2*(self: QLCDNumber, num: float64): void =

  fcQLCDNumber_display2(self.h, num)

proc setHexMode*(self: QLCDNumber, ): void =

  fcQLCDNumber_setHexMode(self.h)

proc setDecMode*(self: QLCDNumber, ): void =

  fcQLCDNumber_setDecMode(self.h)

proc setOctMode*(self: QLCDNumber, ): void =

  fcQLCDNumber_setOctMode(self.h)

proc setBinMode*(self: QLCDNumber, ): void =

  fcQLCDNumber_setBinMode(self.h)

proc setSmallDecimalPoint*(self: QLCDNumber, smallDecimalPoint: bool): void =

  fcQLCDNumber_setSmallDecimalPoint(self.h, smallDecimalPoint)

proc overflow*(self: QLCDNumber, ): void =

  fcQLCDNumber_overflow(self.h)

proc miqt_exec_callback_QLCDNumber_overflow(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onoverflow*(self: QLCDNumber, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLCDNumber_connect_overflow(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QLCDNumber, s: cstring, c: cstring): string =

  let v_ms = fcQLCDNumber_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QLCDNumber, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQLCDNumber_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QLCDNumber, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQLCDNumber_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLCDNumbermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QLCDNumber, slot: proc(super: QLCDNumbermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_metacall(self: ptr cQLCDNumber, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLCDNumber_metacall ".} =
  type Cb = proc(super: QLCDNumbermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QLCDNumber(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_sizeHint(self: QLCDNumber, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQLCDNumber_virtualbase_sizeHint(self.h))

type QLCDNumbersizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QLCDNumber, slot: proc(super: QLCDNumbersizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbersizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_sizeHint(self: ptr cQLCDNumber, slot: int): pointer {.exportc: "miqt_exec_callback_QLCDNumber_sizeHint ".} =
  type Cb = proc(super: QLCDNumbersizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QLCDNumber(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QLCDNumber, e: gen_qcoreevent.QEvent): bool =


  fQLCDNumber_virtualbase_event(self.h, e.h)

type QLCDNumbereventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QLCDNumber, slot: proc(super: QLCDNumbereventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbereventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_event(self: ptr cQLCDNumber, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QLCDNumber_event ".} =
  type Cb = proc(super: QLCDNumbereventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QLCDNumber(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QLCDNumber, param1: gen_qevent.QPaintEvent): void =


  fQLCDNumber_virtualbase_paintEvent(self.h, param1.h)

type QLCDNumberpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_paintEvent(self: ptr cQLCDNumber, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_paintEvent ".} =
  type Cb = proc(super: QLCDNumberpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QLCDNumber(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QLCDNumber, param1: gen_qcoreevent.QEvent): void =


  fQLCDNumber_virtualbase_changeEvent(self.h, param1.h)

type QLCDNumberchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_changeEvent(self: ptr cQLCDNumber, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_changeEvent ".} =
  type Cb = proc(super: QLCDNumberchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QLCDNumber(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QLCDNumber, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQLCDNumber_virtualbase_initStyleOption(self.h, option.h)

type QLCDNumberinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QLCDNumber, slot: proc(super: QLCDNumberinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_initStyleOption(self: ptr cQLCDNumber, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_initStyleOption ".} =
  type Cb = proc(super: QLCDNumberinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QLCDNumber(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QLCDNumber, ): cint =


  fQLCDNumber_virtualbase_devType(self.h)

type QLCDNumberdevTypeBase* = proc(): cint
proc ondevType*(self: QLCDNumber, slot: proc(super: QLCDNumberdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_devType(self: ptr cQLCDNumber, slot: int): cint {.exportc: "miqt_exec_callback_QLCDNumber_devType ".} =
  type Cb = proc(super: QLCDNumberdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QLCDNumber(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QLCDNumber, visible: bool): void =


  fQLCDNumber_virtualbase_setVisible(self.h, visible)

type QLCDNumbersetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QLCDNumber, slot: proc(super: QLCDNumbersetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbersetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_setVisible(self: ptr cQLCDNumber, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QLCDNumber_setVisible ".} =
  type Cb = proc(super: QLCDNumbersetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QLCDNumber(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QLCDNumber, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQLCDNumber_virtualbase_minimumSizeHint(self.h))

type QLCDNumberminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QLCDNumber, slot: proc(super: QLCDNumberminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_minimumSizeHint(self: ptr cQLCDNumber, slot: int): pointer {.exportc: "miqt_exec_callback_QLCDNumber_minimumSizeHint ".} =
  type Cb = proc(super: QLCDNumberminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QLCDNumber(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QLCDNumber, param1: cint): cint =


  fQLCDNumber_virtualbase_heightForWidth(self.h, param1)

type QLCDNumberheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QLCDNumber, slot: proc(super: QLCDNumberheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_heightForWidth(self: ptr cQLCDNumber, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLCDNumber_heightForWidth ".} =
  type Cb = proc(super: QLCDNumberheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QLCDNumber(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QLCDNumber, ): bool =


  fQLCDNumber_virtualbase_hasHeightForWidth(self.h)

type QLCDNumberhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QLCDNumber, slot: proc(super: QLCDNumberhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_hasHeightForWidth(self: ptr cQLCDNumber, slot: int): bool {.exportc: "miqt_exec_callback_QLCDNumber_hasHeightForWidth ".} =
  type Cb = proc(super: QLCDNumberhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QLCDNumber(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QLCDNumber, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQLCDNumber_virtualbase_paintEngine(self.h))

type QLCDNumberpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QLCDNumber, slot: proc(super: QLCDNumberpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_paintEngine(self: ptr cQLCDNumber, slot: int): pointer {.exportc: "miqt_exec_callback_QLCDNumber_paintEngine ".} =
  type Cb = proc(super: QLCDNumberpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QLCDNumber(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QLCDNumber, event: gen_qevent.QMouseEvent): void =


  fQLCDNumber_virtualbase_mousePressEvent(self.h, event.h)

type QLCDNumbermousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbermousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbermousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_mousePressEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_mousePressEvent ".} =
  type Cb = proc(super: QLCDNumbermousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QLCDNumber, event: gen_qevent.QMouseEvent): void =


  fQLCDNumber_virtualbase_mouseReleaseEvent(self.h, event.h)

type QLCDNumbermouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_mouseReleaseEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_mouseReleaseEvent ".} =
  type Cb = proc(super: QLCDNumbermouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QLCDNumber, event: gen_qevent.QMouseEvent): void =


  fQLCDNumber_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QLCDNumbermouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_mouseDoubleClickEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QLCDNumbermouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QLCDNumber, event: gen_qevent.QMouseEvent): void =


  fQLCDNumber_virtualbase_mouseMoveEvent(self.h, event.h)

type QLCDNumbermouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbermouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbermouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_mouseMoveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_mouseMoveEvent ".} =
  type Cb = proc(super: QLCDNumbermouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QLCDNumber, event: gen_qevent.QWheelEvent): void =


  fQLCDNumber_virtualbase_wheelEvent(self.h, event.h)

type QLCDNumberwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_wheelEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_wheelEvent ".} =
  type Cb = proc(super: QLCDNumberwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QLCDNumber, event: gen_qevent.QKeyEvent): void =


  fQLCDNumber_virtualbase_keyPressEvent(self.h, event.h)

type QLCDNumberkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_keyPressEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_keyPressEvent ".} =
  type Cb = proc(super: QLCDNumberkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QLCDNumber, event: gen_qevent.QKeyEvent): void =


  fQLCDNumber_virtualbase_keyReleaseEvent(self.h, event.h)

type QLCDNumberkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_keyReleaseEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_keyReleaseEvent ".} =
  type Cb = proc(super: QLCDNumberkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QLCDNumber, event: gen_qevent.QFocusEvent): void =


  fQLCDNumber_virtualbase_focusInEvent(self.h, event.h)

type QLCDNumberfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_focusInEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_focusInEvent ".} =
  type Cb = proc(super: QLCDNumberfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QLCDNumber, event: gen_qevent.QFocusEvent): void =


  fQLCDNumber_virtualbase_focusOutEvent(self.h, event.h)

type QLCDNumberfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_focusOutEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_focusOutEvent ".} =
  type Cb = proc(super: QLCDNumberfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QLCDNumber, event: gen_qevent.QEnterEvent): void =


  fQLCDNumber_virtualbase_enterEvent(self.h, event.h)

type QLCDNumberenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_enterEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_enterEvent ".} =
  type Cb = proc(super: QLCDNumberenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QLCDNumber, event: gen_qcoreevent.QEvent): void =


  fQLCDNumber_virtualbase_leaveEvent(self.h, event.h)

type QLCDNumberleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_leaveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_leaveEvent ".} =
  type Cb = proc(super: QLCDNumberleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QLCDNumber, event: gen_qevent.QMoveEvent): void =


  fQLCDNumber_virtualbase_moveEvent(self.h, event.h)

type QLCDNumbermoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbermoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbermoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_moveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_moveEvent ".} =
  type Cb = proc(super: QLCDNumbermoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QLCDNumber, event: gen_qevent.QResizeEvent): void =


  fQLCDNumber_virtualbase_resizeEvent(self.h, event.h)

type QLCDNumberresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_resizeEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_resizeEvent ".} =
  type Cb = proc(super: QLCDNumberresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QLCDNumber, event: gen_qevent.QCloseEvent): void =


  fQLCDNumber_virtualbase_closeEvent(self.h, event.h)

type QLCDNumbercloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbercloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbercloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_closeEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_closeEvent ".} =
  type Cb = proc(super: QLCDNumbercloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QLCDNumber, event: gen_qevent.QContextMenuEvent): void =


  fQLCDNumber_virtualbase_contextMenuEvent(self.h, event.h)

type QLCDNumbercontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_contextMenuEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_contextMenuEvent ".} =
  type Cb = proc(super: QLCDNumbercontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QLCDNumber, event: gen_qevent.QTabletEvent): void =


  fQLCDNumber_virtualbase_tabletEvent(self.h, event.h)

type QLCDNumbertabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbertabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbertabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_tabletEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_tabletEvent ".} =
  type Cb = proc(super: QLCDNumbertabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QLCDNumber, event: gen_qevent.QActionEvent): void =


  fQLCDNumber_virtualbase_actionEvent(self.h, event.h)

type QLCDNumberactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_actionEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_actionEvent ".} =
  type Cb = proc(super: QLCDNumberactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QLCDNumber, event: gen_qevent.QDragEnterEvent): void =


  fQLCDNumber_virtualbase_dragEnterEvent(self.h, event.h)

type QLCDNumberdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_dragEnterEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_dragEnterEvent ".} =
  type Cb = proc(super: QLCDNumberdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QLCDNumber, event: gen_qevent.QDragMoveEvent): void =


  fQLCDNumber_virtualbase_dragMoveEvent(self.h, event.h)

type QLCDNumberdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_dragMoveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_dragMoveEvent ".} =
  type Cb = proc(super: QLCDNumberdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QLCDNumber, event: gen_qevent.QDragLeaveEvent): void =


  fQLCDNumber_virtualbase_dragLeaveEvent(self.h, event.h)

type QLCDNumberdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_dragLeaveEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_dragLeaveEvent ".} =
  type Cb = proc(super: QLCDNumberdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QLCDNumber, event: gen_qevent.QDropEvent): void =


  fQLCDNumber_virtualbase_dropEvent(self.h, event.h)

type QLCDNumberdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_dropEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_dropEvent ".} =
  type Cb = proc(super: QLCDNumberdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QLCDNumber, event: gen_qevent.QShowEvent): void =


  fQLCDNumber_virtualbase_showEvent(self.h, event.h)

type QLCDNumbershowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbershowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbershowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_showEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_showEvent ".} =
  type Cb = proc(super: QLCDNumbershowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QLCDNumber, event: gen_qevent.QHideEvent): void =


  fQLCDNumber_virtualbase_hideEvent(self.h, event.h)

type QLCDNumberhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_hideEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_hideEvent ".} =
  type Cb = proc(super: QLCDNumberhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QLCDNumber, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQLCDNumber_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QLCDNumbernativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_nativeEvent(self: ptr cQLCDNumber, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QLCDNumber_nativeEvent ".} =
  type Cb = proc(super: QLCDNumbernativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QLCDNumber(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QLCDNumber, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQLCDNumber_virtualbase_metric(self.h, cint(param1))

type QLCDNumbermetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QLCDNumber, slot: proc(super: QLCDNumbermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_metric(self: ptr cQLCDNumber, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLCDNumber_metric ".} =
  type Cb = proc(super: QLCDNumbermetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QLCDNumber(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QLCDNumber, painter: gen_qpainter.QPainter): void =


  fQLCDNumber_virtualbase_initPainter(self.h, painter.h)

type QLCDNumberinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QLCDNumber, slot: proc(super: QLCDNumberinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_initPainter(self: ptr cQLCDNumber, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_initPainter ".} =
  type Cb = proc(super: QLCDNumberinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QLCDNumber(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QLCDNumber, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQLCDNumber_virtualbase_redirected(self.h, offset.h))

type QLCDNumberredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QLCDNumber, slot: proc(super: QLCDNumberredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_redirected(self: ptr cQLCDNumber, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QLCDNumber_redirected ".} =
  type Cb = proc(super: QLCDNumberredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QLCDNumber(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QLCDNumber, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQLCDNumber_virtualbase_sharedPainter(self.h))

type QLCDNumbersharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QLCDNumber, slot: proc(super: QLCDNumbersharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbersharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_sharedPainter(self: ptr cQLCDNumber, slot: int): pointer {.exportc: "miqt_exec_callback_QLCDNumber_sharedPainter ".} =
  type Cb = proc(super: QLCDNumbersharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QLCDNumber(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QLCDNumber, param1: gen_qevent.QInputMethodEvent): void =


  fQLCDNumber_virtualbase_inputMethodEvent(self.h, param1.h)

type QLCDNumberinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_inputMethodEvent(self: ptr cQLCDNumber, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_inputMethodEvent ".} =
  type Cb = proc(super: QLCDNumberinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QLCDNumber(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QLCDNumber, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQLCDNumber_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QLCDNumberinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QLCDNumber, slot: proc(super: QLCDNumberinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_inputMethodQuery(self: ptr cQLCDNumber, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QLCDNumber_inputMethodQuery ".} =
  type Cb = proc(super: QLCDNumberinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QLCDNumber(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QLCDNumber, next: bool): bool =


  fQLCDNumber_virtualbase_focusNextPrevChild(self.h, next)

type QLCDNumberfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QLCDNumber, slot: proc(super: QLCDNumberfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_focusNextPrevChild(self: ptr cQLCDNumber, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QLCDNumber_focusNextPrevChild ".} =
  type Cb = proc(super: QLCDNumberfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QLCDNumber(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QLCDNumber, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQLCDNumber_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLCDNumbereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QLCDNumber, slot: proc(super: QLCDNumbereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_eventFilter(self: ptr cQLCDNumber, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLCDNumber_eventFilter ".} =
  type Cb = proc(super: QLCDNumbereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QLCDNumber(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QLCDNumber, event: gen_qcoreevent.QTimerEvent): void =


  fQLCDNumber_virtualbase_timerEvent(self.h, event.h)

type QLCDNumbertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_timerEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_timerEvent ".} =
  type Cb = proc(super: QLCDNumbertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QLCDNumber, event: gen_qcoreevent.QChildEvent): void =


  fQLCDNumber_virtualbase_childEvent(self.h, event.h)

type QLCDNumberchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QLCDNumber, slot: proc(super: QLCDNumberchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_childEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_childEvent ".} =
  type Cb = proc(super: QLCDNumberchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QLCDNumber, event: gen_qcoreevent.QEvent): void =


  fQLCDNumber_virtualbase_customEvent(self.h, event.h)

type QLCDNumbercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QLCDNumber, slot: proc(super: QLCDNumbercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumbercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_customEvent(self: ptr cQLCDNumber, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_customEvent ".} =
  type Cb = proc(super: QLCDNumbercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QLCDNumber(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QLCDNumber, signal: gen_qmetaobject.QMetaMethod): void =


  fQLCDNumber_virtualbase_connectNotify(self.h, signal.h)

type QLCDNumberconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QLCDNumber, slot: proc(super: QLCDNumberconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_connectNotify(self: ptr cQLCDNumber, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_connectNotify ".} =
  type Cb = proc(super: QLCDNumberconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QLCDNumber(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QLCDNumber, signal: gen_qmetaobject.QMetaMethod): void =


  fQLCDNumber_virtualbase_disconnectNotify(self.h, signal.h)

type QLCDNumberdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QLCDNumber, slot: proc(super: QLCDNumberdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLCDNumberdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLCDNumber_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLCDNumber_disconnectNotify(self: ptr cQLCDNumber, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLCDNumber_disconnectNotify ".} =
  type Cb = proc(super: QLCDNumberdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QLCDNumber(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QLCDNumber): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQLCDNumber_staticMetaObject())
proc delete*(self: QLCDNumber) =
  fcQLCDNumber_delete(self.h)
