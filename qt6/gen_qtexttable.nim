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
{.compile("gen_qtexttable.cpp", cflags).}


import gen_qtexttable_types
export gen_qtexttable_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtextformat,
  gen_qtextobject
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtextformat,
  gen_qtextobject

type cQTextTableCell*{.exportc: "QTextTableCell", incompleteStruct.} = object
type cQTextTable*{.exportc: "QTextTable", incompleteStruct.} = object

proc fcQTextTableCell_new(): ptr cQTextTableCell {.importc: "QTextTableCell_new".}
proc fcQTextTableCell_new2(o: pointer): ptr cQTextTableCell {.importc: "QTextTableCell_new2".}
proc fcQTextTableCell_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextTableCell_operatorAssign".}
proc fcQTextTableCell_setFormat(self: pointer, format: pointer): void {.importc: "QTextTableCell_setFormat".}
proc fcQTextTableCell_format(self: pointer, ): pointer {.importc: "QTextTableCell_format".}
proc fcQTextTableCell_row(self: pointer, ): cint {.importc: "QTextTableCell_row".}
proc fcQTextTableCell_column(self: pointer, ): cint {.importc: "QTextTableCell_column".}
proc fcQTextTableCell_rowSpan(self: pointer, ): cint {.importc: "QTextTableCell_rowSpan".}
proc fcQTextTableCell_columnSpan(self: pointer, ): cint {.importc: "QTextTableCell_columnSpan".}
proc fcQTextTableCell_isValid(self: pointer, ): bool {.importc: "QTextTableCell_isValid".}
proc fcQTextTableCell_firstCursorPosition(self: pointer, ): pointer {.importc: "QTextTableCell_firstCursorPosition".}
proc fcQTextTableCell_lastCursorPosition(self: pointer, ): pointer {.importc: "QTextTableCell_lastCursorPosition".}
proc fcQTextTableCell_firstPosition(self: pointer, ): cint {.importc: "QTextTableCell_firstPosition".}
proc fcQTextTableCell_lastPosition(self: pointer, ): cint {.importc: "QTextTableCell_lastPosition".}
proc fcQTextTableCell_operatorEqual(self: pointer, other: pointer): bool {.importc: "QTextTableCell_operatorEqual".}
proc fcQTextTableCell_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QTextTableCell_operatorNotEqual".}
proc fcQTextTableCell_begin(self: pointer, ): pointer {.importc: "QTextTableCell_begin".}
proc fcQTextTableCell_endX(self: pointer, ): pointer {.importc: "QTextTableCell_end".}
proc fcQTextTableCell_tableCellFormatIndex(self: pointer, ): cint {.importc: "QTextTableCell_tableCellFormatIndex".}
proc fcQTextTableCell_delete(self: pointer) {.importc: "QTextTableCell_delete".}
proc fcQTextTable_new(doc: pointer): ptr cQTextTable {.importc: "QTextTable_new".}
proc fcQTextTable_metaObject(self: pointer, ): pointer {.importc: "QTextTable_metaObject".}
proc fcQTextTable_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextTable_metacast".}
proc fcQTextTable_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextTable_metacall".}
proc fcQTextTable_tr(s: cstring): struct_miqt_string {.importc: "QTextTable_tr".}
proc fcQTextTable_resize(self: pointer, rows: cint, cols: cint): void {.importc: "QTextTable_resize".}
proc fcQTextTable_insertRows(self: pointer, pos: cint, num: cint): void {.importc: "QTextTable_insertRows".}
proc fcQTextTable_insertColumns(self: pointer, pos: cint, num: cint): void {.importc: "QTextTable_insertColumns".}
proc fcQTextTable_appendRows(self: pointer, count: cint): void {.importc: "QTextTable_appendRows".}
proc fcQTextTable_appendColumns(self: pointer, count: cint): void {.importc: "QTextTable_appendColumns".}
proc fcQTextTable_removeRows(self: pointer, pos: cint, num: cint): void {.importc: "QTextTable_removeRows".}
proc fcQTextTable_removeColumns(self: pointer, pos: cint, num: cint): void {.importc: "QTextTable_removeColumns".}
proc fcQTextTable_mergeCells(self: pointer, row: cint, col: cint, numRows: cint, numCols: cint): void {.importc: "QTextTable_mergeCells".}
proc fcQTextTable_mergeCellsWithCursor(self: pointer, cursor: pointer): void {.importc: "QTextTable_mergeCellsWithCursor".}
proc fcQTextTable_splitCell(self: pointer, row: cint, col: cint, numRows: cint, numCols: cint): void {.importc: "QTextTable_splitCell".}
proc fcQTextTable_rows(self: pointer, ): cint {.importc: "QTextTable_rows".}
proc fcQTextTable_columns(self: pointer, ): cint {.importc: "QTextTable_columns".}
proc fcQTextTable_cellAt(self: pointer, row: cint, col: cint): pointer {.importc: "QTextTable_cellAt".}
proc fcQTextTable_cellAtWithPosition(self: pointer, position: cint): pointer {.importc: "QTextTable_cellAtWithPosition".}
proc fcQTextTable_cellAtWithQTextCursor(self: pointer, c: pointer): pointer {.importc: "QTextTable_cellAtWithQTextCursor".}
proc fcQTextTable_rowStart(self: pointer, c: pointer): pointer {.importc: "QTextTable_rowStart".}
proc fcQTextTable_rowEnd(self: pointer, c: pointer): pointer {.importc: "QTextTable_rowEnd".}
proc fcQTextTable_setFormat(self: pointer, format: pointer): void {.importc: "QTextTable_setFormat".}
proc fcQTextTable_format(self: pointer, ): pointer {.importc: "QTextTable_format".}
proc fcQTextTable_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextTable_tr2".}
proc fcQTextTable_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextTable_tr3".}
proc fQTextTable_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTextTable_virtualbase_metacall".}
proc fcQTextTable_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_metacall".}
proc fQTextTable_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTextTable_virtualbase_event".}
proc fcQTextTable_override_virtual_event(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_event".}
proc fQTextTable_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTextTable_virtualbase_eventFilter".}
proc fcQTextTable_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_eventFilter".}
proc fQTextTable_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTextTable_virtualbase_timerEvent".}
proc fcQTextTable_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_timerEvent".}
proc fQTextTable_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextTable_virtualbase_childEvent".}
proc fcQTextTable_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_childEvent".}
proc fQTextTable_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextTable_virtualbase_customEvent".}
proc fcQTextTable_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_customEvent".}
proc fQTextTable_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextTable_virtualbase_connectNotify".}
proc fcQTextTable_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_connectNotify".}
proc fQTextTable_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextTable_virtualbase_disconnectNotify".}
proc fcQTextTable_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextTable_override_virtual_disconnectNotify".}
proc fcQTextTable_delete(self: pointer) {.importc: "QTextTable_delete".}


func init*(T: type QTextTableCell, h: ptr cQTextTableCell): QTextTableCell =
  T(h: h)
proc create*(T: type QTextTableCell, ): QTextTableCell =

  QTextTableCell.init(fcQTextTableCell_new())
proc create*(T: type QTextTableCell, o: QTextTableCell): QTextTableCell =

  QTextTableCell.init(fcQTextTableCell_new2(o.h))
proc operatorAssign*(self: QTextTableCell, o: QTextTableCell): void =

  fcQTextTableCell_operatorAssign(self.h, o.h)

proc setFormat*(self: QTextTableCell, format: gen_qtextformat.QTextCharFormat): void =

  fcQTextTableCell_setFormat(self.h, format.h)

proc format*(self: QTextTableCell, ): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQTextTableCell_format(self.h))

proc row*(self: QTextTableCell, ): cint =

  fcQTextTableCell_row(self.h)

proc column*(self: QTextTableCell, ): cint =

  fcQTextTableCell_column(self.h)

proc rowSpan*(self: QTextTableCell, ): cint =

  fcQTextTableCell_rowSpan(self.h)

proc columnSpan*(self: QTextTableCell, ): cint =

  fcQTextTableCell_columnSpan(self.h)

proc isValid*(self: QTextTableCell, ): bool =

  fcQTextTableCell_isValid(self.h)

proc firstCursorPosition*(self: QTextTableCell, ): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextTableCell_firstCursorPosition(self.h))

proc lastCursorPosition*(self: QTextTableCell, ): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextTableCell_lastCursorPosition(self.h))

proc firstPosition*(self: QTextTableCell, ): cint =

  fcQTextTableCell_firstPosition(self.h)

proc lastPosition*(self: QTextTableCell, ): cint =

  fcQTextTableCell_lastPosition(self.h)

proc operatorEqual*(self: QTextTableCell, other: QTextTableCell): bool =

  fcQTextTableCell_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QTextTableCell, other: QTextTableCell): bool =

  fcQTextTableCell_operatorNotEqual(self.h, other.h)

proc begin*(self: QTextTableCell, ): gen_qtextobject.QTextFrameiterator =

  gen_qtextobject.QTextFrameiterator(h: fcQTextTableCell_begin(self.h))

proc endX*(self: QTextTableCell, ): gen_qtextobject.QTextFrameiterator =

  gen_qtextobject.QTextFrameiterator(h: fcQTextTableCell_endX(self.h))

proc tableCellFormatIndex*(self: QTextTableCell, ): cint =

  fcQTextTableCell_tableCellFormatIndex(self.h)

proc delete*(self: QTextTableCell) =
  fcQTextTableCell_delete(self.h)

func init*(T: type QTextTable, h: ptr cQTextTable): QTextTable =
  T(h: h)
proc create*(T: type QTextTable, doc: gen_qtextdocument.QTextDocument): QTextTable =

  QTextTable.init(fcQTextTable_new(doc.h))
proc metaObject*(self: QTextTable, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTextTable_metaObject(self.h))

proc metacast*(self: QTextTable, param1: cstring): pointer =

  fcQTextTable_metacast(self.h, param1)

proc metacall*(self: QTextTable, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTextTable_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTextTable, s: cstring): string =

  let v_ms = fcQTextTable_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resize*(self: QTextTable, rows: cint, cols: cint): void =

  fcQTextTable_resize(self.h, rows, cols)

proc insertRows*(self: QTextTable, pos: cint, num: cint): void =

  fcQTextTable_insertRows(self.h, pos, num)

proc insertColumns*(self: QTextTable, pos: cint, num: cint): void =

  fcQTextTable_insertColumns(self.h, pos, num)

proc appendRows*(self: QTextTable, count: cint): void =

  fcQTextTable_appendRows(self.h, count)

proc appendColumns*(self: QTextTable, count: cint): void =

  fcQTextTable_appendColumns(self.h, count)

proc removeRows*(self: QTextTable, pos: cint, num: cint): void =

  fcQTextTable_removeRows(self.h, pos, num)

proc removeColumns*(self: QTextTable, pos: cint, num: cint): void =

  fcQTextTable_removeColumns(self.h, pos, num)

proc mergeCells*(self: QTextTable, row: cint, col: cint, numRows: cint, numCols: cint): void =

  fcQTextTable_mergeCells(self.h, row, col, numRows, numCols)

proc mergeCellsWithCursor*(self: QTextTable, cursor: gen_qtextcursor.QTextCursor): void =

  fcQTextTable_mergeCellsWithCursor(self.h, cursor.h)

proc splitCell*(self: QTextTable, row: cint, col: cint, numRows: cint, numCols: cint): void =

  fcQTextTable_splitCell(self.h, row, col, numRows, numCols)

proc rows*(self: QTextTable, ): cint =

  fcQTextTable_rows(self.h)

proc columns*(self: QTextTable, ): cint =

  fcQTextTable_columns(self.h)

proc cellAt*(self: QTextTable, row: cint, col: cint): QTextTableCell =

  QTextTableCell(h: fcQTextTable_cellAt(self.h, row, col))

proc cellAtWithPosition*(self: QTextTable, position: cint): QTextTableCell =

  QTextTableCell(h: fcQTextTable_cellAtWithPosition(self.h, position))

proc cellAtWithQTextCursor*(self: QTextTable, c: gen_qtextcursor.QTextCursor): QTextTableCell =

  QTextTableCell(h: fcQTextTable_cellAtWithQTextCursor(self.h, c.h))

proc rowStart*(self: QTextTable, c: gen_qtextcursor.QTextCursor): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextTable_rowStart(self.h, c.h))

proc rowEnd*(self: QTextTable, c: gen_qtextcursor.QTextCursor): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextTable_rowEnd(self.h, c.h))

proc setFormat*(self: QTextTable, format: gen_qtextformat.QTextTableFormat): void =

  fcQTextTable_setFormat(self.h, format.h)

proc format*(self: QTextTable, ): gen_qtextformat.QTextTableFormat =

  gen_qtextformat.QTextTableFormat(h: fcQTextTable_format(self.h))

proc tr2*(_: type QTextTable, s: cstring, c: cstring): string =

  let v_ms = fcQTextTable_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTextTable, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTextTable_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QTextTable, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTextTable_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTextTablemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTextTable, slot: proc(super: QTextTablemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextTablemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_metacall(self: ptr cQTextTable, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTextTable_metacall ".} =
  type Cb = proc(super: QTextTablemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTextTable(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QTextTable, event: gen_qcoreevent.QEvent): bool =


  fQTextTable_virtualbase_event(self.h, event.h)

type QTextTableeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTextTable, slot: proc(super: QTextTableeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextTableeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_event(self: ptr cQTextTable, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTextTable_event ".} =
  type Cb = proc(super: QTextTableeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTextTable(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTextTable, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTextTable_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTextTableeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTextTable, slot: proc(super: QTextTableeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextTableeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_eventFilter(self: ptr cQTextTable, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTextTable_eventFilter ".} =
  type Cb = proc(super: QTextTableeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTextTable(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTextTable, event: gen_qcoreevent.QTimerEvent): void =


  fQTextTable_virtualbase_timerEvent(self.h, event.h)

type QTextTabletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTextTable, slot: proc(super: QTextTabletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextTabletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_timerEvent(self: ptr cQTextTable, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextTable_timerEvent ".} =
  type Cb = proc(super: QTextTabletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTextTable(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTextTable, event: gen_qcoreevent.QChildEvent): void =


  fQTextTable_virtualbase_childEvent(self.h, event.h)

type QTextTablechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTextTable, slot: proc(super: QTextTablechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextTablechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_childEvent(self: ptr cQTextTable, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextTable_childEvent ".} =
  type Cb = proc(super: QTextTablechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTextTable(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTextTable, event: gen_qcoreevent.QEvent): void =


  fQTextTable_virtualbase_customEvent(self.h, event.h)

type QTextTablecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTextTable, slot: proc(super: QTextTablecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextTablecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_customEvent(self: ptr cQTextTable, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextTable_customEvent ".} =
  type Cb = proc(super: QTextTablecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTextTable(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTextTable, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextTable_virtualbase_connectNotify(self.h, signal.h)

type QTextTableconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTextTable, slot: proc(super: QTextTableconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextTableconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_connectNotify(self: ptr cQTextTable, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextTable_connectNotify ".} =
  type Cb = proc(super: QTextTableconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTextTable(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTextTable, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextTable_virtualbase_disconnectNotify(self.h, signal.h)

type QTextTabledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTextTable, slot: proc(super: QTextTabledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextTabledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextTable_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextTable_disconnectNotify(self: ptr cQTextTable, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextTable_disconnectNotify ".} =
  type Cb = proc(super: QTextTabledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTextTable(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QTextTable) =
  fcQTextTable_delete(self.h)
