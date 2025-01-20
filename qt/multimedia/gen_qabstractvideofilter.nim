import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qabstractvideofilter.cpp", cflags).}


type QVideoFilterRunnableRunFlag* = cint
const
  QVideoFilterRunnableLastInChain* = 1



import gen_qabstractvideofilter_types
export gen_qabstractvideofilter_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvideoframe,
  gen_qvideosurfaceformat
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvideoframe,
  gen_qvideosurfaceformat

type cQVideoFilterRunnable*{.exportc: "QVideoFilterRunnable", incompleteStruct.} = object
type cQAbstractVideoFilter*{.exportc: "QAbstractVideoFilter", incompleteStruct.} = object

proc fcQVideoFilterRunnable_run(self: pointer, input: pointer, surfaceFormat: pointer, flags: cint): pointer {.importc: "QVideoFilterRunnable_run".}
proc fcQVideoFilterRunnable_operatorAssign(self: pointer, param1: pointer): void {.importc: "QVideoFilterRunnable_operatorAssign".}
proc fcQVideoFilterRunnable_delete(self: pointer) {.importc: "QVideoFilterRunnable_delete".}
proc fcQAbstractVideoFilter_new(): ptr cQAbstractVideoFilter {.importc: "QAbstractVideoFilter_new".}
proc fcQAbstractVideoFilter_new2(parent: pointer): ptr cQAbstractVideoFilter {.importc: "QAbstractVideoFilter_new2".}
proc fcQAbstractVideoFilter_metaObject(self: pointer, ): pointer {.importc: "QAbstractVideoFilter_metaObject".}
proc fcQAbstractVideoFilter_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoFilter_metacast".}
proc fcQAbstractVideoFilter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoFilter_metacall".}
proc fcQAbstractVideoFilter_tr(s: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_tr".}
proc fcQAbstractVideoFilter_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf8".}
proc fcQAbstractVideoFilter_isActive(self: pointer, ): bool {.importc: "QAbstractVideoFilter_isActive".}
proc fcQAbstractVideoFilter_setActive(self: pointer, v: bool): void {.importc: "QAbstractVideoFilter_setActive".}
proc fcQAbstractVideoFilter_createFilterRunnable(self: pointer, ): pointer {.importc: "QAbstractVideoFilter_createFilterRunnable".}
proc fcQAbstractVideoFilter_activeChanged(self: pointer, ): void {.importc: "QAbstractVideoFilter_activeChanged".}
proc fQAbstractVideoFilter_connect_activeChanged(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_connect_activeChanged".}
proc fcQAbstractVideoFilter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_tr2".}
proc fcQAbstractVideoFilter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoFilter_tr3".}
proc fcQAbstractVideoFilter_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf82".}
proc fcQAbstractVideoFilter_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoFilter_trUtf83".}
proc fQAbstractVideoFilter_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractVideoFilter_virtualbase_metaObject".}
proc fcQAbstractVideoFilter_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_metaObject".}
proc fQAbstractVideoFilter_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractVideoFilter_virtualbase_metacast".}
proc fcQAbstractVideoFilter_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_metacast".}
proc fQAbstractVideoFilter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractVideoFilter_virtualbase_metacall".}
proc fcQAbstractVideoFilter_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_metacall".}
proc fcQAbstractVideoFilter_override_virtual_createFilterRunnable(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_createFilterRunnable".}
proc fQAbstractVideoFilter_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractVideoFilter_virtualbase_event".}
proc fcQAbstractVideoFilter_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_event".}
proc fQAbstractVideoFilter_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractVideoFilter_virtualbase_eventFilter".}
proc fcQAbstractVideoFilter_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_eventFilter".}
proc fQAbstractVideoFilter_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_timerEvent".}
proc fcQAbstractVideoFilter_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_timerEvent".}
proc fQAbstractVideoFilter_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_childEvent".}
proc fcQAbstractVideoFilter_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_childEvent".}
proc fQAbstractVideoFilter_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_customEvent".}
proc fcQAbstractVideoFilter_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_customEvent".}
proc fQAbstractVideoFilter_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_connectNotify".}
proc fcQAbstractVideoFilter_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_connectNotify".}
proc fQAbstractVideoFilter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractVideoFilter_virtualbase_disconnectNotify".}
proc fcQAbstractVideoFilter_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractVideoFilter_override_virtual_disconnectNotify".}
proc fcQAbstractVideoFilter_staticMetaObject(): pointer {.importc: "QAbstractVideoFilter_staticMetaObject".}
proc fcQAbstractVideoFilter_delete(self: pointer) {.importc: "QAbstractVideoFilter_delete".}


func init*(T: type QVideoFilterRunnable, h: ptr cQVideoFilterRunnable): QVideoFilterRunnable =
  T(h: h)
proc run*(self: QVideoFilterRunnable, input: gen_qvideoframe.QVideoFrame, surfaceFormat: gen_qvideosurfaceformat.QVideoSurfaceFormat, flags: QVideoFilterRunnableRunFlag): gen_qvideoframe.QVideoFrame =

  gen_qvideoframe.QVideoFrame(h: fcQVideoFilterRunnable_run(self.h, input.h, surfaceFormat.h, cint(flags)))

proc operatorAssign*(self: QVideoFilterRunnable, param1: QVideoFilterRunnable): void =

  fcQVideoFilterRunnable_operatorAssign(self.h, param1.h)

proc delete*(self: QVideoFilterRunnable) =
  fcQVideoFilterRunnable_delete(self.h)

func init*(T: type QAbstractVideoFilter, h: ptr cQAbstractVideoFilter): QAbstractVideoFilter =
  T(h: h)
proc create*(T: type QAbstractVideoFilter, ): QAbstractVideoFilter =

  QAbstractVideoFilter.init(fcQAbstractVideoFilter_new())
proc create*(T: type QAbstractVideoFilter, parent: gen_qobject.QObject): QAbstractVideoFilter =

  QAbstractVideoFilter.init(fcQAbstractVideoFilter_new2(parent.h))
proc metaObject*(self: QAbstractVideoFilter, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractVideoFilter_metaObject(self.h))

proc metacast*(self: QAbstractVideoFilter, param1: cstring): pointer =

  fcQAbstractVideoFilter_metacast(self.h, param1)

proc metacall*(self: QAbstractVideoFilter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractVideoFilter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractVideoFilter, s: cstring): string =

  let v_ms = fcQAbstractVideoFilter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractVideoFilter, s: cstring): string =

  let v_ms = fcQAbstractVideoFilter_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isActive*(self: QAbstractVideoFilter, ): bool =

  fcQAbstractVideoFilter_isActive(self.h)

proc setActive*(self: QAbstractVideoFilter, v: bool): void =

  fcQAbstractVideoFilter_setActive(self.h, v)

proc createFilterRunnable*(self: QAbstractVideoFilter, ): QVideoFilterRunnable =

  QVideoFilterRunnable(h: fcQAbstractVideoFilter_createFilterRunnable(self.h))

proc activeChanged*(self: QAbstractVideoFilter, ): void =

  fcQAbstractVideoFilter_activeChanged(self.h)

proc miqt_exec_callback_QAbstractVideoFilter_activeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onactiveChanged*(self: QAbstractVideoFilter, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractVideoFilter_connect_activeChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractVideoFilter, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractVideoFilter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractVideoFilter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractVideoFilter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractVideoFilter, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractVideoFilter_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractVideoFilter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractVideoFilter_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAbstractVideoFilter, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAbstractVideoFilter_virtualbase_metaObject(self.h))

type QAbstractVideoFiltermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFiltermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFiltermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_metaObject(self: ptr cQAbstractVideoFilter, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractVideoFilter_metaObject ".} =
  type Cb = proc(super: QAbstractVideoFiltermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAbstractVideoFilter(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAbstractVideoFilter, param1: cstring): pointer =


  fQAbstractVideoFilter_virtualbase_metacast(self.h, param1)

type QAbstractVideoFiltermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFiltermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFiltermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_metacast(self: ptr cQAbstractVideoFilter, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractVideoFilter_metacast ".} =
  type Cb = proc(super: QAbstractVideoFiltermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAbstractVideoFilter(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAbstractVideoFilter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractVideoFilter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractVideoFiltermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFiltermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFiltermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_metacall(self: ptr cQAbstractVideoFilter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractVideoFilter_metacall ".} =
  type Cb = proc(super: QAbstractVideoFiltermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractVideoFilter(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractVideoFiltercreateFilterRunnableBase* = proc(): QVideoFilterRunnable
proc oncreateFilterRunnable*(self: QAbstractVideoFilter, slot: proc(): QVideoFilterRunnable) =
  # TODO check subclass
  type Cb = proc(): QVideoFilterRunnable
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_createFilterRunnable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_createFilterRunnable(self: ptr cQAbstractVideoFilter, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractVideoFilter_createFilterRunnable ".} =
  type Cb = proc(): QVideoFilterRunnable
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_event(self: QAbstractVideoFilter, event: gen_qcoreevent.QEvent): bool =


  fQAbstractVideoFilter_virtualbase_event(self.h, event.h)

type QAbstractVideoFiltereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFiltereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFiltereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_event(self: ptr cQAbstractVideoFilter, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoFilter_event ".} =
  type Cb = proc(super: QAbstractVideoFiltereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractVideoFilter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractVideoFilter, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractVideoFilter_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractVideoFiltereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFiltereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFiltereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_eventFilter(self: ptr cQAbstractVideoFilter, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoFilter_eventFilter ".} =
  type Cb = proc(super: QAbstractVideoFiltereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractVideoFilter(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractVideoFilter, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractVideoFilter_virtualbase_timerEvent(self.h, event.h)

type QAbstractVideoFiltertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFiltertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFiltertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_timerEvent(self: ptr cQAbstractVideoFilter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_timerEvent ".} =
  type Cb = proc(super: QAbstractVideoFiltertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractVideoFilter(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractVideoFilter, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractVideoFilter_virtualbase_childEvent(self.h, event.h)

type QAbstractVideoFilterchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFilterchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFilterchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_childEvent(self: ptr cQAbstractVideoFilter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_childEvent ".} =
  type Cb = proc(super: QAbstractVideoFilterchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractVideoFilter(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractVideoFilter, event: gen_qcoreevent.QEvent): void =


  fQAbstractVideoFilter_virtualbase_customEvent(self.h, event.h)

type QAbstractVideoFiltercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFiltercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFiltercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_customEvent(self: ptr cQAbstractVideoFilter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_customEvent ".} =
  type Cb = proc(super: QAbstractVideoFiltercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractVideoFilter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractVideoFilter, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractVideoFilter_virtualbase_connectNotify(self.h, signal.h)

type QAbstractVideoFilterconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFilterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFilterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_connectNotify(self: ptr cQAbstractVideoFilter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_connectNotify ".} =
  type Cb = proc(super: QAbstractVideoFilterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractVideoFilter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractVideoFilter, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractVideoFilter_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractVideoFilterdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractVideoFilter, slot: proc(super: QAbstractVideoFilterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractVideoFilterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoFilter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoFilter_disconnectNotify(self: ptr cQAbstractVideoFilter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoFilter_disconnectNotify ".} =
  type Cb = proc(super: QAbstractVideoFilterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractVideoFilter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractVideoFilter): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractVideoFilter_staticMetaObject())
proc delete*(self: QAbstractVideoFilter) =
  fcQAbstractVideoFilter_delete(self.h)
