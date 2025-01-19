import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qquicktextdocument.cpp", cflags).}


import gen_qquicktextdocument_types
export gen_qquicktextdocument_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qquickitem,
  gen_qtextdocument
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qquickitem,
  gen_qtextdocument

type cQQuickTextDocument*{.exportc: "QQuickTextDocument", incompleteStruct.} = object

proc fcQQuickTextDocument_new(parent: pointer): ptr cQQuickTextDocument {.importc: "QQuickTextDocument_new".}
proc fcQQuickTextDocument_metaObject(self: pointer, ): pointer {.importc: "QQuickTextDocument_metaObject".}
proc fcQQuickTextDocument_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextDocument_metacast".}
proc fcQQuickTextDocument_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextDocument_metacall".}
proc fcQQuickTextDocument_tr(s: cstring): struct_miqt_string {.importc: "QQuickTextDocument_tr".}
proc fcQQuickTextDocument_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickTextDocument_trUtf8".}
proc fcQQuickTextDocument_textDocument(self: pointer, ): pointer {.importc: "QQuickTextDocument_textDocument".}
proc fcQQuickTextDocument_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextDocument_tr2".}
proc fcQQuickTextDocument_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextDocument_tr3".}
proc fcQQuickTextDocument_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextDocument_trUtf82".}
proc fcQQuickTextDocument_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextDocument_trUtf83".}
proc fQQuickTextDocument_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickTextDocument_virtualbase_metacall".}
proc fcQQuickTextDocument_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_metacall".}
proc fQQuickTextDocument_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickTextDocument_virtualbase_event".}
proc fcQQuickTextDocument_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_event".}
proc fQQuickTextDocument_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickTextDocument_virtualbase_eventFilter".}
proc fcQQuickTextDocument_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_eventFilter".}
proc fQQuickTextDocument_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickTextDocument_virtualbase_timerEvent".}
proc fcQQuickTextDocument_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_timerEvent".}
proc fQQuickTextDocument_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickTextDocument_virtualbase_childEvent".}
proc fcQQuickTextDocument_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_childEvent".}
proc fQQuickTextDocument_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickTextDocument_virtualbase_customEvent".}
proc fcQQuickTextDocument_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_customEvent".}
proc fQQuickTextDocument_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTextDocument_virtualbase_connectNotify".}
proc fcQQuickTextDocument_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_connectNotify".}
proc fQQuickTextDocument_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTextDocument_virtualbase_disconnectNotify".}
proc fcQQuickTextDocument_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_disconnectNotify".}
proc fcQQuickTextDocument_staticMetaObject(): pointer {.importc: "QQuickTextDocument_staticMetaObject".}
proc fcQQuickTextDocument_delete(self: pointer) {.importc: "QQuickTextDocument_delete".}


func init*(T: type QQuickTextDocument, h: ptr cQQuickTextDocument): QQuickTextDocument =
  T(h: h)
proc create*(T: type QQuickTextDocument, parent: gen_qquickitem.QQuickItem): QQuickTextDocument =

  QQuickTextDocument.init(fcQQuickTextDocument_new(parent.h))
proc metaObject*(self: QQuickTextDocument, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickTextDocument_metaObject(self.h))

proc metacast*(self: QQuickTextDocument, param1: cstring): pointer =

  fcQQuickTextDocument_metacast(self.h, param1)

proc metacall*(self: QQuickTextDocument, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickTextDocument_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickTextDocument, s: cstring): string =

  let v_ms = fcQQuickTextDocument_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickTextDocument, s: cstring): string =

  let v_ms = fcQQuickTextDocument_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textDocument*(self: QQuickTextDocument, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQQuickTextDocument_textDocument(self.h))

proc tr2*(_: type QQuickTextDocument, s: cstring, c: cstring): string =

  let v_ms = fcQQuickTextDocument_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickTextDocument, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickTextDocument_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickTextDocument, s: cstring, c: cstring): string =

  let v_ms = fcQQuickTextDocument_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickTextDocument, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickTextDocument_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QQuickTextDocument, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQuickTextDocument_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickTextDocumentmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQuickTextDocument, slot: proc(super: QQuickTextDocumentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextDocumentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_metacall(self: ptr cQQuickTextDocument, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickTextDocument_metacall ".} =
  type Cb = proc(super: QQuickTextDocumentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQuickTextDocument(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QQuickTextDocument, event: gen_qcoreevent.QEvent): bool =


  fQQuickTextDocument_virtualbase_event(self.h, event.h)

type QQuickTextDocumenteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQuickTextDocument, slot: proc(super: QQuickTextDocumenteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextDocumenteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_event(self: ptr cQQuickTextDocument, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextDocument_event ".} =
  type Cb = proc(super: QQuickTextDocumenteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQuickTextDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQuickTextDocument, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQuickTextDocument_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickTextDocumenteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQuickTextDocument, slot: proc(super: QQuickTextDocumenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextDocumenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_eventFilter(self: ptr cQQuickTextDocument, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextDocument_eventFilter ".} =
  type Cb = proc(super: QQuickTextDocumenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQuickTextDocument(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQuickTextDocument, event: gen_qcoreevent.QTimerEvent): void =


  fQQuickTextDocument_virtualbase_timerEvent(self.h, event.h)

type QQuickTextDocumenttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQuickTextDocument, slot: proc(super: QQuickTextDocumenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextDocumenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_timerEvent(self: ptr cQQuickTextDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_timerEvent ".} =
  type Cb = proc(super: QQuickTextDocumenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQuickTextDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQuickTextDocument, event: gen_qcoreevent.QChildEvent): void =


  fQQuickTextDocument_virtualbase_childEvent(self.h, event.h)

type QQuickTextDocumentchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQuickTextDocument, slot: proc(super: QQuickTextDocumentchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextDocumentchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_childEvent(self: ptr cQQuickTextDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_childEvent ".} =
  type Cb = proc(super: QQuickTextDocumentchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQuickTextDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQuickTextDocument, event: gen_qcoreevent.QEvent): void =


  fQQuickTextDocument_virtualbase_customEvent(self.h, event.h)

type QQuickTextDocumentcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQuickTextDocument, slot: proc(super: QQuickTextDocumentcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextDocumentcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_customEvent(self: ptr cQQuickTextDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_customEvent ".} =
  type Cb = proc(super: QQuickTextDocumentcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQuickTextDocument(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQuickTextDocument, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickTextDocument_virtualbase_connectNotify(self.h, signal.h)

type QQuickTextDocumentconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQuickTextDocument, slot: proc(super: QQuickTextDocumentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextDocumentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_connectNotify(self: ptr cQQuickTextDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_connectNotify ".} =
  type Cb = proc(super: QQuickTextDocumentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQuickTextDocument(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQuickTextDocument, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickTextDocument_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickTextDocumentdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQuickTextDocument, slot: proc(super: QQuickTextDocumentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextDocumentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_disconnectNotify(self: ptr cQQuickTextDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_disconnectNotify ".} =
  type Cb = proc(super: QQuickTextDocumentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQuickTextDocument(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQuickTextDocument): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickTextDocument_staticMetaObject())
proc delete*(self: QQuickTextDocument) =
  fcQQuickTextDocument_delete(self.h)
