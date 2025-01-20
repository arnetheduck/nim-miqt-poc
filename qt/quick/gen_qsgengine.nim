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
{.compile("gen_qsgengine.cpp", cflags).}


type QSGEngineCreateTextureOption* = cint
const
  QSGEngineTextureHasAlphaChannel* = 1
  QSGEngineTextureOwnsGLTexture* = 4
  QSGEngineTextureCanUseAtlas* = 8
  QSGEngineTextureIsOpaque* = 16



import gen_qsgengine_types
export gen_qsgengine_types

import
  gen_qcoreevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsgabstractrenderer,
  gen_qsgimagenode,
  gen_qsgninepatchnode,
  gen_qsgrectanglenode,
  gen_qsgrendererinterface,
  gen_qsgtexture,
  gen_qsize
export
  gen_qcoreevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsgabstractrenderer,
  gen_qsgimagenode,
  gen_qsgninepatchnode,
  gen_qsgrectanglenode,
  gen_qsgrendererinterface,
  gen_qsgtexture,
  gen_qsize

type cQSGEngine*{.exportc: "QSGEngine", incompleteStruct.} = object

proc fcQSGEngine_new(): ptr cQSGEngine {.importc: "QSGEngine_new".}
proc fcQSGEngine_new2(parent: pointer): ptr cQSGEngine {.importc: "QSGEngine_new2".}
proc fcQSGEngine_metaObject(self: pointer, ): pointer {.importc: "QSGEngine_metaObject".}
proc fcQSGEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGEngine_metacast".}
proc fcQSGEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGEngine_metacall".}
proc fcQSGEngine_tr(s: cstring): struct_miqt_string {.importc: "QSGEngine_tr".}
proc fcQSGEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGEngine_trUtf8".}
proc fcQSGEngine_invalidate(self: pointer, ): void {.importc: "QSGEngine_invalidate".}
proc fcQSGEngine_createRenderer(self: pointer, ): pointer {.importc: "QSGEngine_createRenderer".}
proc fcQSGEngine_createTextureFromImage(self: pointer, image: pointer): pointer {.importc: "QSGEngine_createTextureFromImage".}
proc fcQSGEngine_createTextureFromId(self: pointer, id: cuint, size: pointer): pointer {.importc: "QSGEngine_createTextureFromId".}
proc fcQSGEngine_rendererInterface(self: pointer, ): pointer {.importc: "QSGEngine_rendererInterface".}
proc fcQSGEngine_createRectangleNode(self: pointer, ): pointer {.importc: "QSGEngine_createRectangleNode".}
proc fcQSGEngine_createImageNode(self: pointer, ): pointer {.importc: "QSGEngine_createImageNode".}
proc fcQSGEngine_createNinePatchNode(self: pointer, ): pointer {.importc: "QSGEngine_createNinePatchNode".}
proc fcQSGEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGEngine_tr2".}
proc fcQSGEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGEngine_tr3".}
proc fcQSGEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGEngine_trUtf82".}
proc fcQSGEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGEngine_trUtf83".}
proc fcQSGEngine_createTextureFromImage2(self: pointer, image: pointer, options: cint): pointer {.importc: "QSGEngine_createTextureFromImage2".}
proc fcQSGEngine_createTextureFromId3(self: pointer, id: cuint, size: pointer, options: cint): pointer {.importc: "QSGEngine_createTextureFromId3".}
proc fQSGEngine_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSGEngine_virtualbase_metaObject".}
proc fcQSGEngine_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_metaObject".}
proc fQSGEngine_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSGEngine_virtualbase_metacast".}
proc fcQSGEngine_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_metacast".}
proc fQSGEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSGEngine_virtualbase_metacall".}
proc fcQSGEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_metacall".}
proc fQSGEngine_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSGEngine_virtualbase_event".}
proc fcQSGEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_event".}
proc fQSGEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSGEngine_virtualbase_eventFilter".}
proc fcQSGEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_eventFilter".}
proc fQSGEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSGEngine_virtualbase_timerEvent".}
proc fcQSGEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_timerEvent".}
proc fQSGEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSGEngine_virtualbase_childEvent".}
proc fcQSGEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_childEvent".}
proc fQSGEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSGEngine_virtualbase_customEvent".}
proc fcQSGEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_customEvent".}
proc fQSGEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSGEngine_virtualbase_connectNotify".}
proc fcQSGEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_connectNotify".}
proc fQSGEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSGEngine_virtualbase_disconnectNotify".}
proc fcQSGEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSGEngine_override_virtual_disconnectNotify".}
proc fcQSGEngine_staticMetaObject(): pointer {.importc: "QSGEngine_staticMetaObject".}
proc fcQSGEngine_delete(self: pointer) {.importc: "QSGEngine_delete".}


func init*(T: type QSGEngine, h: ptr cQSGEngine): QSGEngine =
  T(h: h)
proc create*(T: type QSGEngine, ): QSGEngine =

  QSGEngine.init(fcQSGEngine_new())
proc create*(T: type QSGEngine, parent: gen_qobject.QObject): QSGEngine =

  QSGEngine.init(fcQSGEngine_new2(parent.h))
proc metaObject*(self: QSGEngine, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSGEngine_metaObject(self.h))

proc metacast*(self: QSGEngine, param1: cstring): pointer =

  fcQSGEngine_metacast(self.h, param1)

proc metacall*(self: QSGEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSGEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSGEngine, s: cstring): string =

  let v_ms = fcQSGEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSGEngine, s: cstring): string =

  let v_ms = fcQSGEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc invalidate*(self: QSGEngine, ): void =

  fcQSGEngine_invalidate(self.h)

proc createRenderer*(self: QSGEngine, ): gen_qsgabstractrenderer.QSGAbstractRenderer =

  gen_qsgabstractrenderer.QSGAbstractRenderer(h: fcQSGEngine_createRenderer(self.h))

proc createTextureFromImage*(self: QSGEngine, image: gen_qimage.QImage): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQSGEngine_createTextureFromImage(self.h, image.h))

proc createTextureFromId*(self: QSGEngine, id: cuint, size: gen_qsize.QSize): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQSGEngine_createTextureFromId(self.h, id, size.h))

proc rendererInterface*(self: QSGEngine, ): gen_qsgrendererinterface.QSGRendererInterface =

  gen_qsgrendererinterface.QSGRendererInterface(h: fcQSGEngine_rendererInterface(self.h))

proc createRectangleNode*(self: QSGEngine, ): gen_qsgrectanglenode.QSGRectangleNode =

  gen_qsgrectanglenode.QSGRectangleNode(h: fcQSGEngine_createRectangleNode(self.h))

proc createImageNode*(self: QSGEngine, ): gen_qsgimagenode.QSGImageNode =

  gen_qsgimagenode.QSGImageNode(h: fcQSGEngine_createImageNode(self.h))

proc createNinePatchNode*(self: QSGEngine, ): gen_qsgninepatchnode.QSGNinePatchNode =

  gen_qsgninepatchnode.QSGNinePatchNode(h: fcQSGEngine_createNinePatchNode(self.h))

proc tr2*(_: type QSGEngine, s: cstring, c: cstring): string =

  let v_ms = fcQSGEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSGEngine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSGEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSGEngine, s: cstring, c: cstring): string =

  let v_ms = fcQSGEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSGEngine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSGEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createTextureFromImage2*(self: QSGEngine, image: gen_qimage.QImage, options: QSGEngineCreateTextureOption): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQSGEngine_createTextureFromImage2(self.h, image.h, cint(options)))

proc createTextureFromId3*(self: QSGEngine, id: cuint, size: gen_qsize.QSize, options: QSGEngineCreateTextureOption): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQSGEngine_createTextureFromId3(self.h, id, size.h, cint(options)))

proc callVirtualBase_metaObject(self: QSGEngine, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQSGEngine_virtualbase_metaObject(self.h))

type QSGEnginemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QSGEngine, slot: proc(super: QSGEnginemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QSGEnginemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_metaObject(self: ptr cQSGEngine, slot: int): pointer {.exportc: "miqt_exec_callback_QSGEngine_metaObject ".} =
  type Cb = proc(super: QSGEnginemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QSGEngine(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QSGEngine, param1: cstring): pointer =


  fQSGEngine_virtualbase_metacast(self.h, param1)

type QSGEnginemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QSGEngine, slot: proc(super: QSGEnginemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QSGEnginemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_metacast(self: ptr cQSGEngine, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSGEngine_metacast ".} =
  type Cb = proc(super: QSGEnginemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QSGEngine(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QSGEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSGEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSGEnginemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSGEngine, slot: proc(super: QSGEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSGEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_metacall(self: ptr cQSGEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSGEngine_metacall ".} =
  type Cb = proc(super: QSGEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSGEngine(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSGEngine, event: gen_qcoreevent.QEvent): bool =


  fQSGEngine_virtualbase_event(self.h, event.h)

type QSGEngineeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSGEngine, slot: proc(super: QSGEngineeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGEngineeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_event(self: ptr cQSGEngine, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSGEngine_event ".} =
  type Cb = proc(super: QSGEngineeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSGEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSGEngine, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSGEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSGEngineeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSGEngine, slot: proc(super: QSGEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_eventFilter(self: ptr cQSGEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSGEngine_eventFilter ".} =
  type Cb = proc(super: QSGEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSGEngine(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSGEngine, event: gen_qcoreevent.QTimerEvent): void =


  fQSGEngine_virtualbase_timerEvent(self.h, event.h)

type QSGEnginetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSGEngine, slot: proc(super: QSGEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSGEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_timerEvent(self: ptr cQSGEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_timerEvent ".} =
  type Cb = proc(super: QSGEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSGEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSGEngine, event: gen_qcoreevent.QChildEvent): void =


  fQSGEngine_virtualbase_childEvent(self.h, event.h)

type QSGEnginechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSGEngine, slot: proc(super: QSGEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSGEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_childEvent(self: ptr cQSGEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_childEvent ".} =
  type Cb = proc(super: QSGEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSGEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSGEngine, event: gen_qcoreevent.QEvent): void =


  fQSGEngine_virtualbase_customEvent(self.h, event.h)

type QSGEnginecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSGEngine, slot: proc(super: QSGEnginecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSGEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_customEvent(self: ptr cQSGEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_customEvent ".} =
  type Cb = proc(super: QSGEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSGEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSGEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQSGEngine_virtualbase_connectNotify(self.h, signal.h)

type QSGEngineconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSGEngine, slot: proc(super: QSGEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSGEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_connectNotify(self: ptr cQSGEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_connectNotify ".} =
  type Cb = proc(super: QSGEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSGEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSGEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQSGEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QSGEnginedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSGEngine, slot: proc(super: QSGEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSGEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGEngine_disconnectNotify(self: ptr cQSGEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGEngine_disconnectNotify ".} =
  type Cb = proc(super: QSGEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSGEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSGEngine): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSGEngine_staticMetaObject())
proc delete*(self: QSGEngine) =
  fcQSGEngine_delete(self.h)
