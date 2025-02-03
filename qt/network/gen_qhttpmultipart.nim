import Qt5Network_libs

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

const cflags = gorge("pkg-config -cflags Qt5Network")
{.compile("gen_qhttpmultipart.cpp", cflags).}


type QHttpMultiPartContentType* = cint
const
  QHttpMultiPartMixedType* = 0
  QHttpMultiPartRelatedType* = 1
  QHttpMultiPartFormDataType* = 2
  QHttpMultiPartAlternativeType* = 3



import gen_qhttpmultipart_types
export gen_qhttpmultipart_types

import
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant

type cQHttpPart*{.exportc: "QHttpPart", incompleteStruct.} = object
type cQHttpMultiPart*{.exportc: "QHttpMultiPart", incompleteStruct.} = object

proc fcQHttpPart_new(): ptr cQHttpPart {.importc: "QHttpPart_new".}
proc fcQHttpPart_new2(other: pointer): ptr cQHttpPart {.importc: "QHttpPart_new2".}
proc fcQHttpPart_operatorAssign(self: pointer, other: pointer): void {.importc: "QHttpPart_operatorAssign".}
proc fcQHttpPart_swap(self: pointer, other: pointer): void {.importc: "QHttpPart_swap".}
proc fcQHttpPart_operatorEqual(self: pointer, other: pointer): bool {.importc: "QHttpPart_operatorEqual".}
proc fcQHttpPart_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QHttpPart_operatorNotEqual".}
proc fcQHttpPart_setHeader(self: pointer, header: cint, value: pointer): void {.importc: "QHttpPart_setHeader".}
proc fcQHttpPart_setRawHeader(self: pointer, headerName: struct_miqt_string, headerValue: struct_miqt_string): void {.importc: "QHttpPart_setRawHeader".}
proc fcQHttpPart_setBody(self: pointer, body: struct_miqt_string): void {.importc: "QHttpPart_setBody".}
proc fcQHttpPart_setBodyDevice(self: pointer, device: pointer): void {.importc: "QHttpPart_setBodyDevice".}
proc fcQHttpPart_delete(self: pointer) {.importc: "QHttpPart_delete".}
proc fcQHttpMultiPart_new(): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new".}
proc fcQHttpMultiPart_new2(contentType: cint): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new2".}
proc fcQHttpMultiPart_new3(parent: pointer): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new3".}
proc fcQHttpMultiPart_new4(contentType: cint, parent: pointer): ptr cQHttpMultiPart {.importc: "QHttpMultiPart_new4".}
proc fcQHttpMultiPart_metaObject(self: pointer, ): pointer {.importc: "QHttpMultiPart_metaObject".}
proc fcQHttpMultiPart_metacast(self: pointer, param1: cstring): pointer {.importc: "QHttpMultiPart_metacast".}
proc fcQHttpMultiPart_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHttpMultiPart_metacall".}
proc fcQHttpMultiPart_tr(s: cstring): struct_miqt_string {.importc: "QHttpMultiPart_tr".}
proc fcQHttpMultiPart_trUtf8(s: cstring): struct_miqt_string {.importc: "QHttpMultiPart_trUtf8".}
proc fcQHttpMultiPart_append(self: pointer, httpPart: pointer): void {.importc: "QHttpMultiPart_append".}
proc fcQHttpMultiPart_setContentType(self: pointer, contentType: cint): void {.importc: "QHttpMultiPart_setContentType".}
proc fcQHttpMultiPart_boundary(self: pointer, ): struct_miqt_string {.importc: "QHttpMultiPart_boundary".}
proc fcQHttpMultiPart_setBoundary(self: pointer, boundary: struct_miqt_string): void {.importc: "QHttpMultiPart_setBoundary".}
proc fcQHttpMultiPart_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHttpMultiPart_tr2".}
proc fcQHttpMultiPart_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHttpMultiPart_tr3".}
proc fcQHttpMultiPart_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHttpMultiPart_trUtf82".}
proc fcQHttpMultiPart_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHttpMultiPart_trUtf83".}
proc fQHttpMultiPart_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QHttpMultiPart_virtualbase_metacall".}
proc fcQHttpMultiPart_override_virtual_metacall(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_metacall".}
proc fQHttpMultiPart_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QHttpMultiPart_virtualbase_event".}
proc fcQHttpMultiPart_override_virtual_event(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_event".}
proc fQHttpMultiPart_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QHttpMultiPart_virtualbase_eventFilter".}
proc fcQHttpMultiPart_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_eventFilter".}
proc fQHttpMultiPart_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QHttpMultiPart_virtualbase_timerEvent".}
proc fcQHttpMultiPart_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_timerEvent".}
proc fQHttpMultiPart_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QHttpMultiPart_virtualbase_childEvent".}
proc fcQHttpMultiPart_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_childEvent".}
proc fQHttpMultiPart_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QHttpMultiPart_virtualbase_customEvent".}
proc fcQHttpMultiPart_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_customEvent".}
proc fQHttpMultiPart_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QHttpMultiPart_virtualbase_connectNotify".}
proc fcQHttpMultiPart_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_connectNotify".}
proc fQHttpMultiPart_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QHttpMultiPart_virtualbase_disconnectNotify".}
proc fcQHttpMultiPart_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QHttpMultiPart_override_virtual_disconnectNotify".}
proc fcQHttpMultiPart_delete(self: pointer) {.importc: "QHttpMultiPart_delete".}


func init*(T: type QHttpPart, h: ptr cQHttpPart): QHttpPart =
  T(h: h)
proc create*(T: type QHttpPart, ): QHttpPart =

  QHttpPart.init(fcQHttpPart_new())
proc create*(T: type QHttpPart, other: QHttpPart): QHttpPart =

  QHttpPart.init(fcQHttpPart_new2(other.h))
proc operatorAssign*(self: QHttpPart, other: QHttpPart): void =

  fcQHttpPart_operatorAssign(self.h, other.h)

proc swap*(self: QHttpPart, other: QHttpPart): void =

  fcQHttpPart_swap(self.h, other.h)

proc operatorEqual*(self: QHttpPart, other: QHttpPart): bool =

  fcQHttpPart_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QHttpPart, other: QHttpPart): bool =

  fcQHttpPart_operatorNotEqual(self.h, other.h)

proc setHeader*(self: QHttpPart, header: gen_qnetworkrequest.QNetworkRequestKnownHeaders, value: gen_qvariant.QVariant): void =

  fcQHttpPart_setHeader(self.h, cint(header), value.h)

proc setRawHeader*(self: QHttpPart, headerName: seq[byte], headerValue: seq[byte]): void =

  fcQHttpPart_setRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))), struct_miqt_string(data: cast[cstring](if len(headerValue) == 0: nil else: unsafeAddr headerValue[0]), len: csize_t(len(headerValue))))

proc setBody*(self: QHttpPart, body: seq[byte]): void =

  fcQHttpPart_setBody(self.h, struct_miqt_string(data: cast[cstring](if len(body) == 0: nil else: unsafeAddr body[0]), len: csize_t(len(body))))

proc setBodyDevice*(self: QHttpPart, device: gen_qiodevice.QIODevice): void =

  fcQHttpPart_setBodyDevice(self.h, device.h)

proc delete*(self: QHttpPart) =
  fcQHttpPart_delete(self.h)

func init*(T: type QHttpMultiPart, h: ptr cQHttpMultiPart): QHttpMultiPart =
  T(h: h)
proc create*(T: type QHttpMultiPart, ): QHttpMultiPart =

  QHttpMultiPart.init(fcQHttpMultiPart_new())
proc create*(T: type QHttpMultiPart, contentType: QHttpMultiPartContentType): QHttpMultiPart =

  QHttpMultiPart.init(fcQHttpMultiPart_new2(cint(contentType)))
proc create*(T: type QHttpMultiPart, parent: gen_qobject.QObject): QHttpMultiPart =

  QHttpMultiPart.init(fcQHttpMultiPart_new3(parent.h))
proc create*(T: type QHttpMultiPart, contentType: QHttpMultiPartContentType, parent: gen_qobject.QObject): QHttpMultiPart =

  QHttpMultiPart.init(fcQHttpMultiPart_new4(cint(contentType), parent.h))
proc metaObject*(self: QHttpMultiPart, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQHttpMultiPart_metaObject(self.h))

proc metacast*(self: QHttpMultiPart, param1: cstring): pointer =

  fcQHttpMultiPart_metacast(self.h, param1)

proc metacall*(self: QHttpMultiPart, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQHttpMultiPart_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QHttpMultiPart, s: cstring): string =

  let v_ms = fcQHttpMultiPart_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QHttpMultiPart, s: cstring): string =

  let v_ms = fcQHttpMultiPart_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc append*(self: QHttpMultiPart, httpPart: QHttpPart): void =

  fcQHttpMultiPart_append(self.h, httpPart.h)

proc setContentType*(self: QHttpMultiPart, contentType: QHttpMultiPartContentType): void =

  fcQHttpMultiPart_setContentType(self.h, cint(contentType))

proc boundary*(self: QHttpMultiPart, ): seq[byte] =

  var v_bytearray = fcQHttpMultiPart_boundary(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setBoundary*(self: QHttpMultiPart, boundary: seq[byte]): void =

  fcQHttpMultiPart_setBoundary(self.h, struct_miqt_string(data: cast[cstring](if len(boundary) == 0: nil else: unsafeAddr boundary[0]), len: csize_t(len(boundary))))

proc tr2*(_: type QHttpMultiPart, s: cstring, c: cstring): string =

  let v_ms = fcQHttpMultiPart_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QHttpMultiPart, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQHttpMultiPart_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QHttpMultiPart, s: cstring, c: cstring): string =

  let v_ms = fcQHttpMultiPart_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QHttpMultiPart, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQHttpMultiPart_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QHttpMultiPart, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQHttpMultiPart_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QHttpMultiPartmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QHttpMultiPart, slot: proc(super: QHttpMultiPartmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QHttpMultiPartmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_metacall(self: ptr cQHttpMultiPart, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QHttpMultiPart_metacall ".} =
  type Cb = proc(super: QHttpMultiPartmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QHttpMultiPart(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QHttpMultiPart, event: gen_qcoreevent.QEvent): bool =


  fQHttpMultiPart_virtualbase_event(self.h, event.h)

type QHttpMultiParteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QHttpMultiPart, slot: proc(super: QHttpMultiParteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHttpMultiParteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_event(self: ptr cQHttpMultiPart, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QHttpMultiPart_event ".} =
  type Cb = proc(super: QHttpMultiParteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QHttpMultiPart(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QHttpMultiPart, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQHttpMultiPart_virtualbase_eventFilter(self.h, watched.h, event.h)

type QHttpMultiParteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QHttpMultiPart, slot: proc(super: QHttpMultiParteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHttpMultiParteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_eventFilter(self: ptr cQHttpMultiPart, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QHttpMultiPart_eventFilter ".} =
  type Cb = proc(super: QHttpMultiParteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QHttpMultiPart(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QHttpMultiPart, event: gen_qcoreevent.QTimerEvent): void =


  fQHttpMultiPart_virtualbase_timerEvent(self.h, event.h)

type QHttpMultiParttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QHttpMultiPart, slot: proc(super: QHttpMultiParttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHttpMultiParttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_timerEvent(self: ptr cQHttpMultiPart, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_timerEvent ".} =
  type Cb = proc(super: QHttpMultiParttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QHttpMultiPart(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QHttpMultiPart, event: gen_qcoreevent.QChildEvent): void =


  fQHttpMultiPart_virtualbase_childEvent(self.h, event.h)

type QHttpMultiPartchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QHttpMultiPart, slot: proc(super: QHttpMultiPartchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHttpMultiPartchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_childEvent(self: ptr cQHttpMultiPart, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_childEvent ".} =
  type Cb = proc(super: QHttpMultiPartchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QHttpMultiPart(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QHttpMultiPart, event: gen_qcoreevent.QEvent): void =


  fQHttpMultiPart_virtualbase_customEvent(self.h, event.h)

type QHttpMultiPartcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QHttpMultiPart, slot: proc(super: QHttpMultiPartcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHttpMultiPartcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_customEvent(self: ptr cQHttpMultiPart, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_customEvent ".} =
  type Cb = proc(super: QHttpMultiPartcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QHttpMultiPart(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QHttpMultiPart, signal: gen_qmetaobject.QMetaMethod): void =


  fQHttpMultiPart_virtualbase_connectNotify(self.h, signal.h)

type QHttpMultiPartconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QHttpMultiPart, slot: proc(super: QHttpMultiPartconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QHttpMultiPartconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_connectNotify(self: ptr cQHttpMultiPart, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_connectNotify ".} =
  type Cb = proc(super: QHttpMultiPartconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QHttpMultiPart(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QHttpMultiPart, signal: gen_qmetaobject.QMetaMethod): void =


  fQHttpMultiPart_virtualbase_disconnectNotify(self.h, signal.h)

type QHttpMultiPartdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QHttpMultiPart, slot: proc(super: QHttpMultiPartdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QHttpMultiPartdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHttpMultiPart_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHttpMultiPart_disconnectNotify(self: ptr cQHttpMultiPart, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHttpMultiPart_disconnectNotify ".} =
  type Cb = proc(super: QHttpMultiPartdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QHttpMultiPart(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QHttpMultiPart) =
  fcQHttpMultiPart_delete(self.h)
