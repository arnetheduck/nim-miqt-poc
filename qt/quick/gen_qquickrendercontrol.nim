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
{.compile("gen_qquickrendercontrol.cpp", cflags).}


import gen_qquickrendercontrol_types
export gen_qquickrendercontrol_types

import
  gen_qcoreevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qquickwindow,
  gen_qthread,
  gen_qwindow
export
  gen_qcoreevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qquickwindow,
  gen_qthread,
  gen_qwindow

type cQQuickRenderControl*{.exportc: "QQuickRenderControl", incompleteStruct.} = object

proc fcQQuickRenderControl_new(): ptr cQQuickRenderControl {.importc: "QQuickRenderControl_new".}
proc fcQQuickRenderControl_new2(parent: pointer): ptr cQQuickRenderControl {.importc: "QQuickRenderControl_new2".}
proc fcQQuickRenderControl_metaObject(self: pointer, ): pointer {.importc: "QQuickRenderControl_metaObject".}
proc fcQQuickRenderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickRenderControl_metacast".}
proc fcQQuickRenderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickRenderControl_metacall".}
proc fcQQuickRenderControl_tr(s: cstring): struct_miqt_string {.importc: "QQuickRenderControl_tr".}
proc fcQQuickRenderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickRenderControl_trUtf8".}
proc fcQQuickRenderControl_prepareThread(self: pointer, targetThread: pointer): void {.importc: "QQuickRenderControl_prepareThread".}
proc fcQQuickRenderControl_invalidate(self: pointer, ): void {.importc: "QQuickRenderControl_invalidate".}
proc fcQQuickRenderControl_polishItems(self: pointer, ): void {.importc: "QQuickRenderControl_polishItems".}
proc fcQQuickRenderControl_render(self: pointer, ): void {.importc: "QQuickRenderControl_render".}
proc fcQQuickRenderControl_sync(self: pointer, ): bool {.importc: "QQuickRenderControl_sync".}
proc fcQQuickRenderControl_grab(self: pointer, ): pointer {.importc: "QQuickRenderControl_grab".}
proc fcQQuickRenderControl_renderWindowFor(win: pointer): pointer {.importc: "QQuickRenderControl_renderWindowFor".}
proc fcQQuickRenderControl_renderWindow(self: pointer, offset: pointer): pointer {.importc: "QQuickRenderControl_renderWindow".}
proc fcQQuickRenderControl_renderRequested(self: pointer, ): void {.importc: "QQuickRenderControl_renderRequested".}
proc fQQuickRenderControl_connect_renderRequested(self: pointer, slot: int) {.importc: "QQuickRenderControl_connect_renderRequested".}
proc fcQQuickRenderControl_sceneChanged(self: pointer, ): void {.importc: "QQuickRenderControl_sceneChanged".}
proc fQQuickRenderControl_connect_sceneChanged(self: pointer, slot: int) {.importc: "QQuickRenderControl_connect_sceneChanged".}
proc fcQQuickRenderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickRenderControl_tr2".}
proc fcQQuickRenderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickRenderControl_tr3".}
proc fcQQuickRenderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickRenderControl_trUtf82".}
proc fcQQuickRenderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickRenderControl_trUtf83".}
proc fcQQuickRenderControl_renderWindowFor2(win: pointer, offset: pointer): pointer {.importc: "QQuickRenderControl_renderWindowFor2".}
proc fQQuickRenderControl_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickRenderControl_virtualbase_metaObject".}
proc fcQQuickRenderControl_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_metaObject".}
proc fQQuickRenderControl_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickRenderControl_virtualbase_metacast".}
proc fcQQuickRenderControl_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_metacast".}
proc fQQuickRenderControl_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickRenderControl_virtualbase_metacall".}
proc fcQQuickRenderControl_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_metacall".}
proc fQQuickRenderControl_virtualbase_renderWindow(self: pointer, offset: pointer): pointer{.importc: "QQuickRenderControl_virtualbase_renderWindow".}
proc fcQQuickRenderControl_override_virtual_renderWindow(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_renderWindow".}
proc fQQuickRenderControl_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickRenderControl_virtualbase_event".}
proc fcQQuickRenderControl_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_event".}
proc fQQuickRenderControl_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickRenderControl_virtualbase_eventFilter".}
proc fcQQuickRenderControl_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_eventFilter".}
proc fQQuickRenderControl_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickRenderControl_virtualbase_timerEvent".}
proc fcQQuickRenderControl_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_timerEvent".}
proc fQQuickRenderControl_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickRenderControl_virtualbase_childEvent".}
proc fcQQuickRenderControl_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_childEvent".}
proc fQQuickRenderControl_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickRenderControl_virtualbase_customEvent".}
proc fcQQuickRenderControl_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_customEvent".}
proc fQQuickRenderControl_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickRenderControl_virtualbase_connectNotify".}
proc fcQQuickRenderControl_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_connectNotify".}
proc fQQuickRenderControl_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickRenderControl_virtualbase_disconnectNotify".}
proc fcQQuickRenderControl_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickRenderControl_override_virtual_disconnectNotify".}
proc fcQQuickRenderControl_staticMetaObject(): pointer {.importc: "QQuickRenderControl_staticMetaObject".}
proc fcQQuickRenderControl_delete(self: pointer) {.importc: "QQuickRenderControl_delete".}


func init*(T: type gen_qquickrendercontrol_types.QQuickRenderControl, h: ptr cQQuickRenderControl): gen_qquickrendercontrol_types.QQuickRenderControl =
  T(h: h)
proc create*(T: type gen_qquickrendercontrol_types.QQuickRenderControl, ): gen_qquickrendercontrol_types.QQuickRenderControl =

  gen_qquickrendercontrol_types.QQuickRenderControl.init(fcQQuickRenderControl_new())
proc create*(T: type gen_qquickrendercontrol_types.QQuickRenderControl, parent: gen_qobject.QObject): gen_qquickrendercontrol_types.QQuickRenderControl =

  gen_qquickrendercontrol_types.QQuickRenderControl.init(fcQQuickRenderControl_new2(parent.h))
proc metaObject*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickRenderControl_metaObject(self.h))

proc metacast*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cstring): pointer =

  fcQQuickRenderControl_metacast(self.h, param1)

proc metacall*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cint, param2: cint, param3: pointer): cint =

  fcQQuickRenderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring): string =

  let v_ms = fcQQuickRenderControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring): string =

  let v_ms = fcQQuickRenderControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc prepareThread*(self: gen_qquickrendercontrol_types.QQuickRenderControl, targetThread: gen_qthread.QThread): void =

  fcQQuickRenderControl_prepareThread(self.h, targetThread.h)

proc invalidate*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =

  fcQQuickRenderControl_invalidate(self.h)

proc polishItems*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =

  fcQQuickRenderControl_polishItems(self.h)

proc render*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =

  fcQQuickRenderControl_render(self.h)

proc sync*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): bool =

  fcQQuickRenderControl_sync(self.h)

proc grab*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQQuickRenderControl_grab(self.h))

proc renderWindowFor*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, win: gen_qquickwindow.QQuickWindow): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQQuickRenderControl_renderWindowFor(win.h))

proc renderWindow*(self: gen_qquickrendercontrol_types.QQuickRenderControl, offset: gen_qpoint.QPoint): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQQuickRenderControl_renderWindow(self.h, offset.h))

proc renderRequested*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =

  fcQQuickRenderControl_renderRequested(self.h)

proc miqt_exec_callback_QQuickRenderControl_renderRequested(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrenderRequested*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickRenderControl_connect_renderRequested(self.h, cast[int](addr tmp[]))
proc sceneChanged*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): void =

  fcQQuickRenderControl_sceneChanged(self.h)

proc miqt_exec_callback_QQuickRenderControl_sceneChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsceneChanged*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickRenderControl_connect_sceneChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring): string =

  let v_ms = fcQQuickRenderControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickRenderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring): string =

  let v_ms = fcQQuickRenderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickRenderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc renderWindowFor2*(_: type gen_qquickrendercontrol_types.QQuickRenderControl, win: gen_qquickwindow.QQuickWindow, offset: gen_qpoint.QPoint): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQQuickRenderControl_renderWindowFor2(win.h, offset.h))

proc QQuickRenderControlmetaObject*(self: gen_qquickrendercontrol_types.QQuickRenderControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQQuickRenderControl_virtualbase_metaObject(self.h))

type QQuickRenderControlmetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControlmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_metaObject(self: ptr cQQuickRenderControl, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickRenderControl_metaObject ".} =
  var nimfunc = cast[ptr QQuickRenderControlmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickRenderControlmetacast*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cstring): pointer =

  fQQuickRenderControl_virtualbase_metacast(self.h, param1)

type QQuickRenderControlmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlmetacastProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControlmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_metacast(self: ptr cQQuickRenderControl, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickRenderControl_metacast ".} =
  var nimfunc = cast[ptr QQuickRenderControlmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickRenderControlmetacall*(self: gen_qquickrendercontrol_types.QQuickRenderControl, param1: cint, param2: cint, param3: pointer): cint =

  fQQuickRenderControl_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickRenderControlmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlmetacallProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControlmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_metacall(self: ptr cQQuickRenderControl, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickRenderControl_metacall ".} =
  var nimfunc = cast[ptr QQuickRenderControlmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQuickRenderControlrenderWindow*(self: gen_qquickrendercontrol_types.QQuickRenderControl, offset: gen_qpoint.QPoint): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fQQuickRenderControl_virtualbase_renderWindow(self.h, offset.h))

type QQuickRenderControlrenderWindowProc* = proc(offset: gen_qpoint.QPoint): gen_qwindow.QWindow
proc onrenderWindow*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlrenderWindowProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControlrenderWindowProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_renderWindow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_renderWindow(self: ptr cQQuickRenderControl, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QQuickRenderControl_renderWindow ".} =
  var nimfunc = cast[ptr QQuickRenderControlrenderWindowProc](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QQuickRenderControlevent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent.QEvent): bool =

  fQQuickRenderControl_virtualbase_event(self.h, event.h)

type QQuickRenderControleventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControleventProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_event(self: ptr cQQuickRenderControl, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickRenderControl_event ".} =
  var nimfunc = cast[ptr QQuickRenderControleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickRenderControleventFilter*(self: gen_qquickrendercontrol_types.QQuickRenderControl, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQQuickRenderControl_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickRenderControleventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControleventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_eventFilter(self: ptr cQQuickRenderControl, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickRenderControl_eventFilter ".} =
  var nimfunc = cast[ptr QQuickRenderControleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickRenderControltimerEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent.QTimerEvent): void =

  fQQuickRenderControl_virtualbase_timerEvent(self.h, event.h)

type QQuickRenderControltimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControltimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_timerEvent(self: ptr cQQuickRenderControl, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickRenderControl_timerEvent ".} =
  var nimfunc = cast[ptr QQuickRenderControltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickRenderControlchildEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent.QChildEvent): void =

  fQQuickRenderControl_virtualbase_childEvent(self.h, event.h)

type QQuickRenderControlchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControlchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_childEvent(self: ptr cQQuickRenderControl, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickRenderControl_childEvent ".} =
  var nimfunc = cast[ptr QQuickRenderControlchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickRenderControlcustomEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, event: gen_qcoreevent.QEvent): void =

  fQQuickRenderControl_virtualbase_customEvent(self.h, event.h)

type QQuickRenderControlcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlcustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControlcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_customEvent(self: ptr cQQuickRenderControl, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickRenderControl_customEvent ".} =
  var nimfunc = cast[ptr QQuickRenderControlcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickRenderControlconnectNotify*(self: gen_qquickrendercontrol_types.QQuickRenderControl, signal: gen_qmetaobject.QMetaMethod): void =

  fQQuickRenderControl_virtualbase_connectNotify(self.h, signal.h)

type QQuickRenderControlconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControlconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControlconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_connectNotify(self: ptr cQQuickRenderControl, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickRenderControl_connectNotify ".} =
  var nimfunc = cast[ptr QQuickRenderControlconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickRenderControldisconnectNotify*(self: gen_qquickrendercontrol_types.QQuickRenderControl, signal: gen_qmetaobject.QMetaMethod): void =

  fQQuickRenderControl_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickRenderControldisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickrendercontrol_types.QQuickRenderControl, slot: QQuickRenderControldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickRenderControldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickRenderControl_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickRenderControl_disconnectNotify(self: ptr cQQuickRenderControl, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickRenderControl_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickRenderControldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qquickrendercontrol_types.QQuickRenderControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickRenderControl_staticMetaObject())
proc delete*(self: gen_qquickrendercontrol_types.QQuickRenderControl) =
  fcQQuickRenderControl_delete(self.h)
