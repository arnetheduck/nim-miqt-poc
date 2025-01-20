import Qt6Network_libs

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

const cflags = gorge("pkg-config -cflags Qt6Network")
{.compile("gen_qsctpserver.cpp", cflags).}


import gen_qsctpserver_types
export gen_qsctpserver_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsctpsocket,
  gen_qtcpserver,
  gen_qtcpsocket
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsctpsocket,
  gen_qtcpserver,
  gen_qtcpsocket

type cQSctpServer*{.exportc: "QSctpServer", incompleteStruct.} = object

proc fcQSctpServer_new(): ptr cQSctpServer {.importc: "QSctpServer_new".}
proc fcQSctpServer_new2(parent: pointer): ptr cQSctpServer {.importc: "QSctpServer_new2".}
proc fcQSctpServer_metaObject(self: pointer, ): pointer {.importc: "QSctpServer_metaObject".}
proc fcQSctpServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpServer_metacast".}
proc fcQSctpServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpServer_metacall".}
proc fcQSctpServer_tr(s: cstring): struct_miqt_string {.importc: "QSctpServer_tr".}
proc fcQSctpServer_setMaximumChannelCount(self: pointer, count: cint): void {.importc: "QSctpServer_setMaximumChannelCount".}
proc fcQSctpServer_maximumChannelCount(self: pointer, ): cint {.importc: "QSctpServer_maximumChannelCount".}
proc fcQSctpServer_nextPendingDatagramConnection(self: pointer, ): pointer {.importc: "QSctpServer_nextPendingDatagramConnection".}
proc fcQSctpServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSctpServer_tr2".}
proc fcQSctpServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSctpServer_tr3".}
proc fQSctpServer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSctpServer_virtualbase_metaObject".}
proc fcQSctpServer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_metaObject".}
proc fQSctpServer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSctpServer_virtualbase_metacast".}
proc fcQSctpServer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_metacast".}
proc fQSctpServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSctpServer_virtualbase_metacall".}
proc fcQSctpServer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_metacall".}
proc fQSctpServer_virtualbase_incomingConnection(self: pointer, handle: uint): void{.importc: "QSctpServer_virtualbase_incomingConnection".}
proc fcQSctpServer_override_virtual_incomingConnection(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_incomingConnection".}
proc fQSctpServer_virtualbase_hasPendingConnections(self: pointer, ): bool{.importc: "QSctpServer_virtualbase_hasPendingConnections".}
proc fcQSctpServer_override_virtual_hasPendingConnections(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_hasPendingConnections".}
proc fQSctpServer_virtualbase_nextPendingConnection(self: pointer, ): pointer{.importc: "QSctpServer_virtualbase_nextPendingConnection".}
proc fcQSctpServer_override_virtual_nextPendingConnection(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_nextPendingConnection".}
proc fQSctpServer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSctpServer_virtualbase_event".}
proc fcQSctpServer_override_virtual_event(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_event".}
proc fQSctpServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSctpServer_virtualbase_eventFilter".}
proc fcQSctpServer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_eventFilter".}
proc fQSctpServer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSctpServer_virtualbase_timerEvent".}
proc fcQSctpServer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_timerEvent".}
proc fQSctpServer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSctpServer_virtualbase_childEvent".}
proc fcQSctpServer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_childEvent".}
proc fQSctpServer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSctpServer_virtualbase_customEvent".}
proc fcQSctpServer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_customEvent".}
proc fQSctpServer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSctpServer_virtualbase_connectNotify".}
proc fcQSctpServer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_connectNotify".}
proc fQSctpServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSctpServer_virtualbase_disconnectNotify".}
proc fcQSctpServer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_disconnectNotify".}
proc fcQSctpServer_staticMetaObject(): pointer {.importc: "QSctpServer_staticMetaObject".}
proc fcQSctpServer_delete(self: pointer) {.importc: "QSctpServer_delete".}


func init*(T: type gen_qsctpserver_types.QSctpServer, h: ptr cQSctpServer): gen_qsctpserver_types.QSctpServer =
  T(h: h)
proc create*(T: type gen_qsctpserver_types.QSctpServer, ): gen_qsctpserver_types.QSctpServer =

  gen_qsctpserver_types.QSctpServer.init(fcQSctpServer_new())
proc create*(T: type gen_qsctpserver_types.QSctpServer, parent: gen_qobject.QObject): gen_qsctpserver_types.QSctpServer =

  gen_qsctpserver_types.QSctpServer.init(fcQSctpServer_new2(parent.h))
proc metaObject*(self: gen_qsctpserver_types.QSctpServer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSctpServer_metaObject(self.h))

proc metacast*(self: gen_qsctpserver_types.QSctpServer, param1: cstring): pointer =

  fcQSctpServer_metacast(self.h, param1)

proc metacall*(self: gen_qsctpserver_types.QSctpServer, param1: cint, param2: cint, param3: pointer): cint =

  fcQSctpServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsctpserver_types.QSctpServer, s: cstring): string =

  let v_ms = fcQSctpServer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMaximumChannelCount*(self: gen_qsctpserver_types.QSctpServer, count: cint): void =

  fcQSctpServer_setMaximumChannelCount(self.h, count)

proc maximumChannelCount*(self: gen_qsctpserver_types.QSctpServer, ): cint =

  fcQSctpServer_maximumChannelCount(self.h)

proc nextPendingDatagramConnection*(self: gen_qsctpserver_types.QSctpServer, ): gen_qsctpsocket.QSctpSocket =

  gen_qsctpsocket.QSctpSocket(h: fcQSctpServer_nextPendingDatagramConnection(self.h))

proc tr2*(_: type gen_qsctpserver_types.QSctpServer, s: cstring, c: cstring): string =

  let v_ms = fcQSctpServer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qsctpserver_types.QSctpServer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSctpServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSctpServermetaObject*(self: gen_qsctpserver_types.QSctpServer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQSctpServer_virtualbase_metaObject(self.h))

type QSctpServermetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServermetaObjectProc) =
  # TODO check subclass
  var tmp = new QSctpServermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_metaObject(self: ptr cQSctpServer, slot: int): pointer {.exportc: "miqt_exec_callback_QSctpServer_metaObject ".} =
  var nimfunc = cast[ptr QSctpServermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSctpServermetacast*(self: gen_qsctpserver_types.QSctpServer, param1: cstring): pointer =

  fQSctpServer_virtualbase_metacast(self.h, param1)

type QSctpServermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServermetacastProc) =
  # TODO check subclass
  var tmp = new QSctpServermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_metacast(self: ptr cQSctpServer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSctpServer_metacast ".} =
  var nimfunc = cast[ptr QSctpServermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpServermetacall*(self: gen_qsctpserver_types.QSctpServer, param1: cint, param2: cint, param3: pointer): cint =

  fQSctpServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSctpServermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServermetacallProc) =
  # TODO check subclass
  var tmp = new QSctpServermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_metacall(self: ptr cQSctpServer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSctpServer_metacall ".} =
  var nimfunc = cast[ptr QSctpServermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSctpServerincomingConnection*(self: gen_qsctpserver_types.QSctpServer, handle: uint): void =

  fQSctpServer_virtualbase_incomingConnection(self.h, handle)

type QSctpServerincomingConnectionProc* = proc(handle: uint): void
proc onincomingConnection*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServerincomingConnectionProc) =
  # TODO check subclass
  var tmp = new QSctpServerincomingConnectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_incomingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_incomingConnection(self: ptr cQSctpServer, slot: int, handle: uint): void {.exportc: "miqt_exec_callback_QSctpServer_incomingConnection ".} =
  var nimfunc = cast[ptr QSctpServerincomingConnectionProc](cast[pointer](slot))
  let slotval1 = handle


  nimfunc[](slotval1)
proc QSctpServerhasPendingConnections*(self: gen_qsctpserver_types.QSctpServer, ): bool =

  fQSctpServer_virtualbase_hasPendingConnections(self.h)

type QSctpServerhasPendingConnectionsProc* = proc(): bool
proc onhasPendingConnections*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServerhasPendingConnectionsProc) =
  # TODO check subclass
  var tmp = new QSctpServerhasPendingConnectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_hasPendingConnections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_hasPendingConnections(self: ptr cQSctpServer, slot: int): bool {.exportc: "miqt_exec_callback_QSctpServer_hasPendingConnections ".} =
  var nimfunc = cast[ptr QSctpServerhasPendingConnectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSctpServernextPendingConnection*(self: gen_qsctpserver_types.QSctpServer, ): gen_qtcpsocket.QTcpSocket =

  gen_qtcpsocket.QTcpSocket(h: fQSctpServer_virtualbase_nextPendingConnection(self.h))

type QSctpServernextPendingConnectionProc* = proc(): gen_qtcpsocket.QTcpSocket
proc onnextPendingConnection*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServernextPendingConnectionProc) =
  # TODO check subclass
  var tmp = new QSctpServernextPendingConnectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_nextPendingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_nextPendingConnection(self: ptr cQSctpServer, slot: int): pointer {.exportc: "miqt_exec_callback_QSctpServer_nextPendingConnection ".} =
  var nimfunc = cast[ptr QSctpServernextPendingConnectionProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSctpServerevent*(self: gen_qsctpserver_types.QSctpServer, event: gen_qcoreevent.QEvent): bool =

  fQSctpServer_virtualbase_event(self.h, event.h)

type QSctpServereventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServereventProc) =
  # TODO check subclass
  var tmp = new QSctpServereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_event(self: ptr cQSctpServer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSctpServer_event ".} =
  var nimfunc = cast[ptr QSctpServereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSctpServereventFilter*(self: gen_qsctpserver_types.QSctpServer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQSctpServer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSctpServereventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServereventFilterProc) =
  # TODO check subclass
  var tmp = new QSctpServereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_eventFilter(self: ptr cQSctpServer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSctpServer_eventFilter ".} =
  var nimfunc = cast[ptr QSctpServereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSctpServertimerEvent*(self: gen_qsctpserver_types.QSctpServer, event: gen_qcoreevent.QTimerEvent): void =

  fQSctpServer_virtualbase_timerEvent(self.h, event.h)

type QSctpServertimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServertimerEventProc) =
  # TODO check subclass
  var tmp = new QSctpServertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_timerEvent(self: ptr cQSctpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_timerEvent ".} =
  var nimfunc = cast[ptr QSctpServertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSctpServerchildEvent*(self: gen_qsctpserver_types.QSctpServer, event: gen_qcoreevent.QChildEvent): void =

  fQSctpServer_virtualbase_childEvent(self.h, event.h)

type QSctpServerchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServerchildEventProc) =
  # TODO check subclass
  var tmp = new QSctpServerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_childEvent(self: ptr cQSctpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_childEvent ".} =
  var nimfunc = cast[ptr QSctpServerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSctpServercustomEvent*(self: gen_qsctpserver_types.QSctpServer, event: gen_qcoreevent.QEvent): void =

  fQSctpServer_virtualbase_customEvent(self.h, event.h)

type QSctpServercustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServercustomEventProc) =
  # TODO check subclass
  var tmp = new QSctpServercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_customEvent(self: ptr cQSctpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_customEvent ".} =
  var nimfunc = cast[ptr QSctpServercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QSctpServerconnectNotify*(self: gen_qsctpserver_types.QSctpServer, signal: gen_qmetaobject.QMetaMethod): void =

  fQSctpServer_virtualbase_connectNotify(self.h, signal.h)

type QSctpServerconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSctpServerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_connectNotify(self: ptr cQSctpServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_connectNotify ".} =
  var nimfunc = cast[ptr QSctpServerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSctpServerdisconnectNotify*(self: gen_qsctpserver_types.QSctpServer, signal: gen_qmetaobject.QMetaMethod): void =

  fQSctpServer_virtualbase_disconnectNotify(self.h, signal.h)

type QSctpServerdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsctpserver_types.QSctpServer, slot: QSctpServerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSctpServerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_disconnectNotify(self: ptr cQSctpServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_disconnectNotify ".} =
  var nimfunc = cast[ptr QSctpServerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsctpserver_types.QSctpServer): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSctpServer_staticMetaObject())
proc delete*(self: gen_qsctpserver_types.QSctpServer) =
  fcQSctpServer_delete(self.h)
