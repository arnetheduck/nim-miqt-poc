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
{.compile("gen_qoffscreensurface.cpp", cflags).}


import gen_qoffscreensurface_types
export gen_qoffscreensurface_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscreen,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qscreen,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat

type cQOffscreenSurface*{.exportc: "QOffscreenSurface", incompleteStruct.} = object

proc fcQOffscreenSurface_new(): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new".}
proc fcQOffscreenSurface_new2(screen: pointer): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new2".}
proc fcQOffscreenSurface_new3(screen: pointer, parent: pointer): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new3".}
proc fcQOffscreenSurface_metaObject(self: pointer, ): pointer {.importc: "QOffscreenSurface_metaObject".}
proc fcQOffscreenSurface_metacast(self: pointer, param1: cstring): pointer {.importc: "QOffscreenSurface_metacast".}
proc fcQOffscreenSurface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QOffscreenSurface_metacall".}
proc fcQOffscreenSurface_tr(s: cstring): struct_miqt_string {.importc: "QOffscreenSurface_tr".}
proc fcQOffscreenSurface_surfaceType(self: pointer, ): cint {.importc: "QOffscreenSurface_surfaceType".}
proc fcQOffscreenSurface_create(self: pointer, ): void {.importc: "QOffscreenSurface_create".}
proc fcQOffscreenSurface_destroy(self: pointer, ): void {.importc: "QOffscreenSurface_destroy".}
proc fcQOffscreenSurface_isValid(self: pointer, ): bool {.importc: "QOffscreenSurface_isValid".}
proc fcQOffscreenSurface_setFormat(self: pointer, format: pointer): void {.importc: "QOffscreenSurface_setFormat".}
proc fcQOffscreenSurface_format(self: pointer, ): pointer {.importc: "QOffscreenSurface_format".}
proc fcQOffscreenSurface_requestedFormat(self: pointer, ): pointer {.importc: "QOffscreenSurface_requestedFormat".}
proc fcQOffscreenSurface_size(self: pointer, ): pointer {.importc: "QOffscreenSurface_size".}
proc fcQOffscreenSurface_screen(self: pointer, ): pointer {.importc: "QOffscreenSurface_screen".}
proc fcQOffscreenSurface_setScreen(self: pointer, screen: pointer): void {.importc: "QOffscreenSurface_setScreen".}
proc fcQOffscreenSurface_screenChanged(self: pointer, screen: pointer): void {.importc: "QOffscreenSurface_screenChanged".}
proc fQOffscreenSurface_connect_screenChanged(self: pointer, slot: int) {.importc: "QOffscreenSurface_connect_screenChanged".}
proc fcQOffscreenSurface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QOffscreenSurface_tr2".}
proc fcQOffscreenSurface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QOffscreenSurface_tr3".}
proc fQOffscreenSurface_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QOffscreenSurface_virtualbase_metaObject".}
proc fcQOffscreenSurface_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_metaObject".}
proc fQOffscreenSurface_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QOffscreenSurface_virtualbase_metacast".}
proc fcQOffscreenSurface_override_virtual_metacast(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_metacast".}
proc fQOffscreenSurface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QOffscreenSurface_virtualbase_metacall".}
proc fcQOffscreenSurface_override_virtual_metacall(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_metacall".}
proc fQOffscreenSurface_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QOffscreenSurface_virtualbase_surfaceType".}
proc fcQOffscreenSurface_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_surfaceType".}
proc fQOffscreenSurface_virtualbase_format(self: pointer, ): pointer{.importc: "QOffscreenSurface_virtualbase_format".}
proc fcQOffscreenSurface_override_virtual_format(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_format".}
proc fQOffscreenSurface_virtualbase_size(self: pointer, ): pointer{.importc: "QOffscreenSurface_virtualbase_size".}
proc fcQOffscreenSurface_override_virtual_size(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_size".}
proc fQOffscreenSurface_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QOffscreenSurface_virtualbase_event".}
proc fcQOffscreenSurface_override_virtual_event(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_event".}
proc fQOffscreenSurface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QOffscreenSurface_virtualbase_eventFilter".}
proc fcQOffscreenSurface_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_eventFilter".}
proc fQOffscreenSurface_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QOffscreenSurface_virtualbase_timerEvent".}
proc fcQOffscreenSurface_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_timerEvent".}
proc fQOffscreenSurface_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QOffscreenSurface_virtualbase_childEvent".}
proc fcQOffscreenSurface_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_childEvent".}
proc fQOffscreenSurface_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QOffscreenSurface_virtualbase_customEvent".}
proc fcQOffscreenSurface_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_customEvent".}
proc fQOffscreenSurface_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QOffscreenSurface_virtualbase_connectNotify".}
proc fcQOffscreenSurface_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_connectNotify".}
proc fQOffscreenSurface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QOffscreenSurface_virtualbase_disconnectNotify".}
proc fcQOffscreenSurface_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_disconnectNotify".}
proc fcQOffscreenSurface_staticMetaObject(): pointer {.importc: "QOffscreenSurface_staticMetaObject".}
proc fcQOffscreenSurface_delete(self: pointer) {.importc: "QOffscreenSurface_delete".}


func init*(T: type QOffscreenSurface, h: ptr cQOffscreenSurface): QOffscreenSurface =
  T(h: h)
proc create*(T: type QOffscreenSurface, ): QOffscreenSurface =

  QOffscreenSurface.init(fcQOffscreenSurface_new())
proc create*(T: type QOffscreenSurface, screen: gen_qscreen.QScreen): QOffscreenSurface =

  QOffscreenSurface.init(fcQOffscreenSurface_new2(screen.h))
proc create*(T: type QOffscreenSurface, screen: gen_qscreen.QScreen, parent: gen_qobject.QObject): QOffscreenSurface =

  QOffscreenSurface.init(fcQOffscreenSurface_new3(screen.h, parent.h))
proc metaObject*(self: QOffscreenSurface, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQOffscreenSurface_metaObject(self.h))

proc metacast*(self: QOffscreenSurface, param1: cstring): pointer =

  fcQOffscreenSurface_metacast(self.h, param1)

proc metacall*(self: QOffscreenSurface, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQOffscreenSurface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QOffscreenSurface, s: cstring): string =

  let v_ms = fcQOffscreenSurface_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc surfaceType*(self: QOffscreenSurface, ): gen_qsurface.QSurfaceSurfaceType =

  gen_qsurface.QSurfaceSurfaceType(fcQOffscreenSurface_surfaceType(self.h))

proc create*(self: QOffscreenSurface, ): void =

  fcQOffscreenSurface_create(self.h)

proc destroy*(self: QOffscreenSurface, ): void =

  fcQOffscreenSurface_destroy(self.h)

proc isValid*(self: QOffscreenSurface, ): bool =

  fcQOffscreenSurface_isValid(self.h)

proc setFormat*(self: QOffscreenSurface, format: gen_qsurfaceformat.QSurfaceFormat): void =

  fcQOffscreenSurface_setFormat(self.h, format.h)

proc format*(self: QOffscreenSurface, ): gen_qsurfaceformat.QSurfaceFormat =

  gen_qsurfaceformat.QSurfaceFormat(h: fcQOffscreenSurface_format(self.h))

proc requestedFormat*(self: QOffscreenSurface, ): gen_qsurfaceformat.QSurfaceFormat =

  gen_qsurfaceformat.QSurfaceFormat(h: fcQOffscreenSurface_requestedFormat(self.h))

proc size*(self: QOffscreenSurface, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQOffscreenSurface_size(self.h))

proc screen*(self: QOffscreenSurface, ): gen_qscreen.QScreen =

  gen_qscreen.QScreen(h: fcQOffscreenSurface_screen(self.h))

proc setScreen*(self: QOffscreenSurface, screen: gen_qscreen.QScreen): void =

  fcQOffscreenSurface_setScreen(self.h, screen.h)

proc screenChanged*(self: QOffscreenSurface, screen: gen_qscreen.QScreen): void =

  fcQOffscreenSurface_screenChanged(self.h, screen.h)

proc miqt_exec_callback_QOffscreenSurface_screenChanged(slot: int, screen: pointer) {.exportc.} =
  type Cb = proc(screen: gen_qscreen.QScreen)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qscreen.QScreen(h: screen)


  nimfunc[](slotval1)

proc onscreenChanged*(self: QOffscreenSurface, slot: proc(screen: gen_qscreen.QScreen)) =
  type Cb = proc(screen: gen_qscreen.QScreen)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQOffscreenSurface_connect_screenChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QOffscreenSurface, s: cstring, c: cstring): string =

  let v_ms = fcQOffscreenSurface_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QOffscreenSurface, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQOffscreenSurface_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QOffscreenSurface, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQOffscreenSurface_virtualbase_metaObject(self.h))

type QOffscreenSurfacemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfacemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfacemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_metaObject(self: ptr cQOffscreenSurface, slot: int): pointer {.exportc: "miqt_exec_callback_QOffscreenSurface_metaObject ".} =
  type Cb = proc(super: QOffscreenSurfacemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QOffscreenSurface(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QOffscreenSurface, param1: cstring): pointer =


  fQOffscreenSurface_virtualbase_metacast(self.h, param1)

type QOffscreenSurfacemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfacemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfacemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_metacast(self: ptr cQOffscreenSurface, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QOffscreenSurface_metacast ".} =
  type Cb = proc(super: QOffscreenSurfacemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QOffscreenSurface(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QOffscreenSurface, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQOffscreenSurface_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QOffscreenSurfacemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfacemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfacemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_metacall(self: ptr cQOffscreenSurface, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QOffscreenSurface_metacall ".} =
  type Cb = proc(super: QOffscreenSurfacemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QOffscreenSurface(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_surfaceType(self: QOffscreenSurface, ): gen_qsurface.QSurfaceSurfaceType =


  gen_qsurface.QSurfaceSurfaceType(fQOffscreenSurface_virtualbase_surfaceType(self.h))

type QOffscreenSurfacesurfaceTypeBase* = proc(): gen_qsurface.QSurfaceSurfaceType
proc onsurfaceType*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfacesurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfacesurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_surfaceType(self: ptr cQOffscreenSurface, slot: int): cint {.exportc: "miqt_exec_callback_QOffscreenSurface_surfaceType ".} =
  type Cb = proc(super: QOffscreenSurfacesurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_surfaceType(QOffscreenSurface(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_format(self: QOffscreenSurface, ): gen_qsurfaceformat.QSurfaceFormat =


  gen_qsurfaceformat.QSurfaceFormat(h: fQOffscreenSurface_virtualbase_format(self.h))

type QOffscreenSurfaceformatBase* = proc(): gen_qsurfaceformat.QSurfaceFormat
proc onformat*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfaceformatBase): gen_qsurfaceformat.QSurfaceFormat) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfaceformatBase): gen_qsurfaceformat.QSurfaceFormat
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_format(self: ptr cQOffscreenSurface, slot: int): pointer {.exportc: "miqt_exec_callback_QOffscreenSurface_format ".} =
  type Cb = proc(super: QOffscreenSurfaceformatBase): gen_qsurfaceformat.QSurfaceFormat
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_format(QOffscreenSurface(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_size(self: QOffscreenSurface, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQOffscreenSurface_virtualbase_size(self.h))

type QOffscreenSurfacesizeBase* = proc(): gen_qsize.QSize
proc onsize*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfacesizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfacesizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_size(self: ptr cQOffscreenSurface, slot: int): pointer {.exportc: "miqt_exec_callback_QOffscreenSurface_size ".} =
  type Cb = proc(super: QOffscreenSurfacesizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QOffscreenSurface(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QOffscreenSurface, event: gen_qcoreevent.QEvent): bool =


  fQOffscreenSurface_virtualbase_event(self.h, event.h)

type QOffscreenSurfaceeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfaceeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfaceeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_event(self: ptr cQOffscreenSurface, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QOffscreenSurface_event ".} =
  type Cb = proc(super: QOffscreenSurfaceeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QOffscreenSurface(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QOffscreenSurface, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQOffscreenSurface_virtualbase_eventFilter(self.h, watched.h, event.h)

type QOffscreenSurfaceeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfaceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfaceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_eventFilter(self: ptr cQOffscreenSurface, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QOffscreenSurface_eventFilter ".} =
  type Cb = proc(super: QOffscreenSurfaceeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QOffscreenSurface(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QOffscreenSurface, event: gen_qcoreevent.QTimerEvent): void =


  fQOffscreenSurface_virtualbase_timerEvent(self.h, event.h)

type QOffscreenSurfacetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfacetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfacetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_timerEvent(self: ptr cQOffscreenSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_timerEvent ".} =
  type Cb = proc(super: QOffscreenSurfacetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QOffscreenSurface(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QOffscreenSurface, event: gen_qcoreevent.QChildEvent): void =


  fQOffscreenSurface_virtualbase_childEvent(self.h, event.h)

type QOffscreenSurfacechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfacechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfacechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_childEvent(self: ptr cQOffscreenSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_childEvent ".} =
  type Cb = proc(super: QOffscreenSurfacechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QOffscreenSurface(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QOffscreenSurface, event: gen_qcoreevent.QEvent): void =


  fQOffscreenSurface_virtualbase_customEvent(self.h, event.h)

type QOffscreenSurfacecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfacecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfacecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_customEvent(self: ptr cQOffscreenSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_customEvent ".} =
  type Cb = proc(super: QOffscreenSurfacecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QOffscreenSurface(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QOffscreenSurface, signal: gen_qmetaobject.QMetaMethod): void =


  fQOffscreenSurface_virtualbase_connectNotify(self.h, signal.h)

type QOffscreenSurfaceconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfaceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfaceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_connectNotify(self: ptr cQOffscreenSurface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_connectNotify ".} =
  type Cb = proc(super: QOffscreenSurfaceconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QOffscreenSurface(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QOffscreenSurface, signal: gen_qmetaobject.QMetaMethod): void =


  fQOffscreenSurface_virtualbase_disconnectNotify(self.h, signal.h)

type QOffscreenSurfacedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QOffscreenSurface, slot: proc(super: QOffscreenSurfacedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QOffscreenSurfacedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_disconnectNotify(self: ptr cQOffscreenSurface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_disconnectNotify ".} =
  type Cb = proc(super: QOffscreenSurfacedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QOffscreenSurface(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QOffscreenSurface): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQOffscreenSurface_staticMetaObject())
proc delete*(self: QOffscreenSurface) =
  fcQOffscreenSurface_delete(self.h)
