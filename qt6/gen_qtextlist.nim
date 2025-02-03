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
{.compile("gen_qtextlist.cpp", cflags).}


import gen_qtextlist_types
export gen_qtextlist_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextdocument,
  gen_qtextformat,
  gen_qtextobject
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextdocument,
  gen_qtextformat,
  gen_qtextobject

type cQTextList*{.exportc: "QTextList", incompleteStruct.} = object

proc fcQTextList_new(doc: pointer): ptr cQTextList {.importc: "QTextList_new".}
proc fcQTextList_metaObject(self: pointer, ): pointer {.importc: "QTextList_metaObject".}
proc fcQTextList_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextList_metacast".}
proc fcQTextList_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextList_metacall".}
proc fcQTextList_tr(s: cstring): struct_miqt_string {.importc: "QTextList_tr".}
proc fcQTextList_count(self: pointer, ): cint {.importc: "QTextList_count".}
proc fcQTextList_item(self: pointer, i: cint): pointer {.importc: "QTextList_item".}
proc fcQTextList_itemNumber(self: pointer, param1: pointer): cint {.importc: "QTextList_itemNumber".}
proc fcQTextList_itemText(self: pointer, param1: pointer): struct_miqt_string {.importc: "QTextList_itemText".}
proc fcQTextList_removeItem(self: pointer, i: cint): void {.importc: "QTextList_removeItem".}
proc fcQTextList_remove(self: pointer, param1: pointer): void {.importc: "QTextList_remove".}
proc fcQTextList_add(self: pointer, blockVal: pointer): void {.importc: "QTextList_add".}
proc fcQTextList_setFormat(self: pointer, format: pointer): void {.importc: "QTextList_setFormat".}
proc fcQTextList_format(self: pointer, ): pointer {.importc: "QTextList_format".}
proc fcQTextList_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextList_tr2".}
proc fcQTextList_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextList_tr3".}
proc fQTextList_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTextList_virtualbase_metacall".}
proc fcQTextList_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTextList_override_virtual_metacall".}
proc fQTextList_virtualbase_blockInserted(self: pointer, blockVal: pointer): void{.importc: "QTextList_virtualbase_blockInserted".}
proc fcQTextList_override_virtual_blockInserted(self: pointer, slot: int) {.importc: "QTextList_override_virtual_blockInserted".}
proc fQTextList_virtualbase_blockRemoved(self: pointer, blockVal: pointer): void{.importc: "QTextList_virtualbase_blockRemoved".}
proc fcQTextList_override_virtual_blockRemoved(self: pointer, slot: int) {.importc: "QTextList_override_virtual_blockRemoved".}
proc fQTextList_virtualbase_blockFormatChanged(self: pointer, blockVal: pointer): void{.importc: "QTextList_virtualbase_blockFormatChanged".}
proc fcQTextList_override_virtual_blockFormatChanged(self: pointer, slot: int) {.importc: "QTextList_override_virtual_blockFormatChanged".}
proc fQTextList_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTextList_virtualbase_event".}
proc fcQTextList_override_virtual_event(self: pointer, slot: int) {.importc: "QTextList_override_virtual_event".}
proc fQTextList_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTextList_virtualbase_eventFilter".}
proc fcQTextList_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextList_override_virtual_eventFilter".}
proc fQTextList_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTextList_virtualbase_timerEvent".}
proc fcQTextList_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextList_override_virtual_timerEvent".}
proc fQTextList_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextList_virtualbase_childEvent".}
proc fcQTextList_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextList_override_virtual_childEvent".}
proc fQTextList_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextList_virtualbase_customEvent".}
proc fcQTextList_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextList_override_virtual_customEvent".}
proc fQTextList_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextList_virtualbase_connectNotify".}
proc fcQTextList_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextList_override_virtual_connectNotify".}
proc fQTextList_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextList_virtualbase_disconnectNotify".}
proc fcQTextList_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextList_override_virtual_disconnectNotify".}
proc fcQTextList_delete(self: pointer) {.importc: "QTextList_delete".}


func init*(T: type QTextList, h: ptr cQTextList): QTextList =
  T(h: h)
proc create*(T: type QTextList, doc: gen_qtextdocument.QTextDocument): QTextList =

  QTextList.init(fcQTextList_new(doc.h))
proc metaObject*(self: QTextList, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTextList_metaObject(self.h))

proc metacast*(self: QTextList, param1: cstring): pointer =

  fcQTextList_metacast(self.h, param1)

proc metacall*(self: QTextList, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTextList_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTextList, s: cstring): string =

  let v_ms = fcQTextList_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc count*(self: QTextList, ): cint =

  fcQTextList_count(self.h)

proc item*(self: QTextList, i: cint): gen_qtextobject.QTextBlock =

  gen_qtextobject.QTextBlock(h: fcQTextList_item(self.h, i))

proc itemNumber*(self: QTextList, param1: gen_qtextobject.QTextBlock): cint =

  fcQTextList_itemNumber(self.h, param1.h)

proc itemText*(self: QTextList, param1: gen_qtextobject.QTextBlock): string =

  let v_ms = fcQTextList_itemText(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc removeItem*(self: QTextList, i: cint): void =

  fcQTextList_removeItem(self.h, i)

proc remove*(self: QTextList, param1: gen_qtextobject.QTextBlock): void =

  fcQTextList_remove(self.h, param1.h)

proc add*(self: QTextList, blockVal: gen_qtextobject.QTextBlock): void =

  fcQTextList_add(self.h, blockVal.h)

proc setFormat*(self: QTextList, format: gen_qtextformat.QTextListFormat): void =

  fcQTextList_setFormat(self.h, format.h)

proc format*(self: QTextList, ): gen_qtextformat.QTextListFormat =

  gen_qtextformat.QTextListFormat(h: fcQTextList_format(self.h))

proc tr2*(_: type QTextList, s: cstring, c: cstring): string =

  let v_ms = fcQTextList_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTextList, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTextList_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QTextList, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTextList_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTextListmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTextList, slot: proc(super: QTextListmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextListmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_metacall(self: ptr cQTextList, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTextList_metacall ".} =
  type Cb = proc(super: QTextListmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTextList(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_blockInserted(self: QTextList, blockVal: gen_qtextobject.QTextBlock): void =


  fQTextList_virtualbase_blockInserted(self.h, blockVal.h)

type QTextListblockInsertedBase* = proc(blockVal: gen_qtextobject.QTextBlock): void
proc onblockInserted*(self: QTextList, slot: proc(super: QTextListblockInsertedBase, blockVal: gen_qtextobject.QTextBlock): void) =
  # TODO check subclass
  type Cb = proc(super: QTextListblockInsertedBase, blockVal: gen_qtextobject.QTextBlock): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_blockInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_blockInserted(self: ptr cQTextList, slot: int, blockVal: pointer): void {.exportc: "miqt_exec_callback_QTextList_blockInserted ".} =
  type Cb = proc(super: QTextListblockInsertedBase, blockVal: gen_qtextobject.QTextBlock): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(blockVal: gen_qtextobject.QTextBlock): auto =
    callVirtualBase_blockInserted(QTextList(h: self), blockVal)
  let slotval1 = gen_qtextobject.QTextBlock(h: blockVal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_blockRemoved(self: QTextList, blockVal: gen_qtextobject.QTextBlock): void =


  fQTextList_virtualbase_blockRemoved(self.h, blockVal.h)

type QTextListblockRemovedBase* = proc(blockVal: gen_qtextobject.QTextBlock): void
proc onblockRemoved*(self: QTextList, slot: proc(super: QTextListblockRemovedBase, blockVal: gen_qtextobject.QTextBlock): void) =
  # TODO check subclass
  type Cb = proc(super: QTextListblockRemovedBase, blockVal: gen_qtextobject.QTextBlock): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_blockRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_blockRemoved(self: ptr cQTextList, slot: int, blockVal: pointer): void {.exportc: "miqt_exec_callback_QTextList_blockRemoved ".} =
  type Cb = proc(super: QTextListblockRemovedBase, blockVal: gen_qtextobject.QTextBlock): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(blockVal: gen_qtextobject.QTextBlock): auto =
    callVirtualBase_blockRemoved(QTextList(h: self), blockVal)
  let slotval1 = gen_qtextobject.QTextBlock(h: blockVal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_blockFormatChanged(self: QTextList, blockVal: gen_qtextobject.QTextBlock): void =


  fQTextList_virtualbase_blockFormatChanged(self.h, blockVal.h)

type QTextListblockFormatChangedBase* = proc(blockVal: gen_qtextobject.QTextBlock): void
proc onblockFormatChanged*(self: QTextList, slot: proc(super: QTextListblockFormatChangedBase, blockVal: gen_qtextobject.QTextBlock): void) =
  # TODO check subclass
  type Cb = proc(super: QTextListblockFormatChangedBase, blockVal: gen_qtextobject.QTextBlock): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_blockFormatChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_blockFormatChanged(self: ptr cQTextList, slot: int, blockVal: pointer): void {.exportc: "miqt_exec_callback_QTextList_blockFormatChanged ".} =
  type Cb = proc(super: QTextListblockFormatChangedBase, blockVal: gen_qtextobject.QTextBlock): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(blockVal: gen_qtextobject.QTextBlock): auto =
    callVirtualBase_blockFormatChanged(QTextList(h: self), blockVal)
  let slotval1 = gen_qtextobject.QTextBlock(h: blockVal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QTextList, event: gen_qcoreevent.QEvent): bool =


  fQTextList_virtualbase_event(self.h, event.h)

type QTextListeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTextList, slot: proc(super: QTextListeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextListeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_event(self: ptr cQTextList, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTextList_event ".} =
  type Cb = proc(super: QTextListeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTextList(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTextList, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTextList_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTextListeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTextList, slot: proc(super: QTextListeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextListeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_eventFilter(self: ptr cQTextList, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTextList_eventFilter ".} =
  type Cb = proc(super: QTextListeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTextList(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTextList, event: gen_qcoreevent.QTimerEvent): void =


  fQTextList_virtualbase_timerEvent(self.h, event.h)

type QTextListtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTextList, slot: proc(super: QTextListtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextListtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_timerEvent(self: ptr cQTextList, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextList_timerEvent ".} =
  type Cb = proc(super: QTextListtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTextList(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTextList, event: gen_qcoreevent.QChildEvent): void =


  fQTextList_virtualbase_childEvent(self.h, event.h)

type QTextListchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTextList, slot: proc(super: QTextListchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextListchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_childEvent(self: ptr cQTextList, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextList_childEvent ".} =
  type Cb = proc(super: QTextListchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTextList(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTextList, event: gen_qcoreevent.QEvent): void =


  fQTextList_virtualbase_customEvent(self.h, event.h)

type QTextListcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTextList, slot: proc(super: QTextListcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextListcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_customEvent(self: ptr cQTextList, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextList_customEvent ".} =
  type Cb = proc(super: QTextListcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTextList(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTextList, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextList_virtualbase_connectNotify(self.h, signal.h)

type QTextListconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTextList, slot: proc(super: QTextListconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextListconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_connectNotify(self: ptr cQTextList, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextList_connectNotify ".} =
  type Cb = proc(super: QTextListconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTextList(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTextList, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextList_virtualbase_disconnectNotify(self.h, signal.h)

type QTextListdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTextList, slot: proc(super: QTextListdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextListdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextList_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextList_disconnectNotify(self: ptr cQTextList, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextList_disconnectNotify ".} =
  type Cb = proc(super: QTextListdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTextList(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QTextList) =
  fcQTextList_delete(self.h)
