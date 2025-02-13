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

const cflags = gorge("pkg-config --cflags Qt5Quick")
{.compile("gen_qquicktextdocument.cpp", cflags).}


import gen_qquicktextdocument_types
export gen_qquicktextdocument_types

import
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qquickitem_types,
  gen_qtextdocument_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qquickitem_types,
  gen_qtextdocument_types

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
proc fQQuickTextDocument_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickTextDocument_virtualbase_metaObject".}
proc fcQQuickTextDocument_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_metaObject".}
proc fQQuickTextDocument_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickTextDocument_virtualbase_metacast".}
proc fcQQuickTextDocument_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickTextDocument_override_virtual_metacast".}
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


func init*(T: type gen_qquicktextdocument_types.QQuickTextDocument, h: ptr cQQuickTextDocument): gen_qquicktextdocument_types.QQuickTextDocument =
  T(h: h)
proc create*(T: type gen_qquicktextdocument_types.QQuickTextDocument, parent: gen_qquickitem_types.QQuickItem): gen_qquicktextdocument_types.QQuickTextDocument =
  gen_qquicktextdocument_types.QQuickTextDocument.init(fcQQuickTextDocument_new(parent.h))

proc metaObject*(self: gen_qquicktextdocument_types.QQuickTextDocument, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickTextDocument_metaObject(self.h))

proc metacast*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cstring): pointer =
  fcQQuickTextDocument_metacast(self.h, param1)

proc metacall*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickTextDocument_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring): string =
  let v_ms = fcQQuickTextDocument_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring): string =
  let v_ms = fcQQuickTextDocument_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textDocument*(self: gen_qquicktextdocument_types.QQuickTextDocument, ): gen_qtextdocument_types.QTextDocument =
  gen_qtextdocument_types.QTextDocument(h: fcQQuickTextDocument_textDocument(self.h))

proc tr*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTextDocument_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTextDocument_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring): string =
  let v_ms = fcQQuickTextDocument_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquicktextdocument_types.QQuickTextDocument, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickTextDocument_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQuickTextDocumentmetaObject*(self: gen_qquicktextdocument_types.QQuickTextDocument, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQuickTextDocument_virtualbase_metaObject(self.h))

type QQuickTextDocumentmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumentmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumentmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_metaObject(self: ptr cQQuickTextDocument, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTextDocument_metaObject ".} =
  var nimfunc = cast[ptr QQuickTextDocumentmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickTextDocumentmetacast*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cstring): pointer =
  fQQuickTextDocument_virtualbase_metacast(self.h, param1)

type QQuickTextDocumentmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumentmetacastProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumentmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_metacast(self: ptr cQQuickTextDocument, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickTextDocument_metacast ".} =
  var nimfunc = cast[ptr QQuickTextDocumentmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickTextDocumentmetacall*(self: gen_qquicktextdocument_types.QQuickTextDocument, param1: cint, param2: cint, param3: pointer): cint =
  fQQuickTextDocument_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickTextDocumentmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumentmetacallProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumentmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_metacall(self: ptr cQQuickTextDocument, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickTextDocument_metacall ".} =
  var nimfunc = cast[ptr QQuickTextDocumentmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQuickTextDocumentevent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickTextDocument_virtualbase_event(self.h, event.h)

type QQuickTextDocumenteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumenteventProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumenteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_event(self: ptr cQQuickTextDocument, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextDocument_event ".} =
  var nimfunc = cast[ptr QQuickTextDocumenteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickTextDocumenteventFilter*(self: gen_qquicktextdocument_types.QQuickTextDocument, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickTextDocument_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickTextDocumenteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumenteventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumenteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_eventFilter(self: ptr cQQuickTextDocument, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextDocument_eventFilter ".} =
  var nimfunc = cast[ptr QQuickTextDocumenteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickTextDocumenttimerEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickTextDocument_virtualbase_timerEvent(self.h, event.h)

type QQuickTextDocumenttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumenttimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumenttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_timerEvent(self: ptr cQQuickTextDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_timerEvent ".} =
  var nimfunc = cast[ptr QQuickTextDocumenttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTextDocumentchildEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickTextDocument_virtualbase_childEvent(self.h, event.h)

type QQuickTextDocumentchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumentchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumentchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_childEvent(self: ptr cQQuickTextDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_childEvent ".} =
  var nimfunc = cast[ptr QQuickTextDocumentchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTextDocumentcustomEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, event: gen_qcoreevent_types.QEvent): void =
  fQQuickTextDocument_virtualbase_customEvent(self.h, event.h)

type QQuickTextDocumentcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumentcustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumentcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_customEvent(self: ptr cQQuickTextDocument, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_customEvent ".} =
  var nimfunc = cast[ptr QQuickTextDocumentcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTextDocumentconnectNotify*(self: gen_qquicktextdocument_types.QQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickTextDocument_virtualbase_connectNotify(self.h, signal.h)

type QQuickTextDocumentconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumentconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumentconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_connectNotify(self: ptr cQQuickTextDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_connectNotify ".} =
  var nimfunc = cast[ptr QQuickTextDocumentconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickTextDocumentdisconnectNotify*(self: gen_qquicktextdocument_types.QQuickTextDocument, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickTextDocument_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickTextDocumentdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquicktextdocument_types.QQuickTextDocument, slot: QQuickTextDocumentdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickTextDocumentdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextDocument_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextDocument_disconnectNotify(self: ptr cQQuickTextDocument, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextDocument_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickTextDocumentdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qquicktextdocument_types.QQuickTextDocument): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickTextDocument_staticMetaObject())
proc delete*(self: gen_qquicktextdocument_types.QQuickTextDocument) =
  fcQQuickTextDocument_delete(self.h)
