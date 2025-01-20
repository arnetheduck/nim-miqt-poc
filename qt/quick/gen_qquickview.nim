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
{.compile("gen_qquickview.cpp", cflags).}


type QQuickViewResizeMode* = cint
const
  QQuickViewSizeViewToRootObject* = 0
  QQuickViewSizeRootObjectToView* = 1



type QQuickViewStatus* = cint
const
  QQuickViewNull* = 0
  QQuickViewReady* = 1
  QQuickViewLoading* = 2
  QQuickViewError* = 3



import gen_qquickview_types
export gen_qquickview_types

import
  gen_qaccessible,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlcomponent,
  gen_qqmlcontext,
  gen_qqmlengine,
  gen_qqmlerror,
  gen_qquickitem,
  gen_qquickrendercontrol,
  gen_qquickwindow,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat,
  gen_qurl,
  gen_qvariant,
  gen_qwindow,
  std/tables
export
  gen_qaccessible,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlcomponent,
  gen_qqmlcontext,
  gen_qqmlengine,
  gen_qqmlerror,
  gen_qquickitem,
  gen_qquickrendercontrol,
  gen_qquickwindow,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat,
  gen_qurl,
  gen_qvariant,
  gen_qwindow

type cQQuickView*{.exportc: "QQuickView", incompleteStruct.} = object

proc fcQQuickView_new(): ptr cQQuickView {.importc: "QQuickView_new".}
proc fcQQuickView_new2(engine: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new2".}
proc fcQQuickView_new3(source: pointer): ptr cQQuickView {.importc: "QQuickView_new3".}
proc fcQQuickView_new4(source: pointer, renderControl: pointer): ptr cQQuickView {.importc: "QQuickView_new4".}
proc fcQQuickView_new5(parent: pointer): ptr cQQuickView {.importc: "QQuickView_new5".}
proc fcQQuickView_new6(source: pointer, parent: pointer): ptr cQQuickView {.importc: "QQuickView_new6".}
proc fcQQuickView_metaObject(self: pointer, ): pointer {.importc: "QQuickView_metaObject".}
proc fcQQuickView_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickView_metacast".}
proc fcQQuickView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickView_metacall".}
proc fcQQuickView_tr(s: cstring): struct_miqt_string {.importc: "QQuickView_tr".}
proc fcQQuickView_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickView_trUtf8".}
proc fcQQuickView_source(self: pointer, ): pointer {.importc: "QQuickView_source".}
proc fcQQuickView_engine(self: pointer, ): pointer {.importc: "QQuickView_engine".}
proc fcQQuickView_rootContext(self: pointer, ): pointer {.importc: "QQuickView_rootContext".}
proc fcQQuickView_rootObject(self: pointer, ): pointer {.importc: "QQuickView_rootObject".}
proc fcQQuickView_resizeMode(self: pointer, ): cint {.importc: "QQuickView_resizeMode".}
proc fcQQuickView_setResizeMode(self: pointer, resizeMode: cint): void {.importc: "QQuickView_setResizeMode".}
proc fcQQuickView_status(self: pointer, ): cint {.importc: "QQuickView_status".}
proc fcQQuickView_errors(self: pointer, ): struct_miqt_array {.importc: "QQuickView_errors".}
proc fcQQuickView_sizeHint(self: pointer, ): pointer {.importc: "QQuickView_sizeHint".}
proc fcQQuickView_initialSize(self: pointer, ): pointer {.importc: "QQuickView_initialSize".}
proc fcQQuickView_setSource(self: pointer, source: pointer): void {.importc: "QQuickView_setSource".}
proc fcQQuickView_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQuickView_setInitialProperties".}
proc fcQQuickView_setContent(self: pointer, url: pointer, component: pointer, item: pointer): void {.importc: "QQuickView_setContent".}
proc fcQQuickView_statusChanged(self: pointer, param1: cint): void {.importc: "QQuickView_statusChanged".}
proc fQQuickView_connect_statusChanged(self: pointer, slot: int) {.importc: "QQuickView_connect_statusChanged".}
proc fcQQuickView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickView_tr2".}
proc fcQQuickView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickView_tr3".}
proc fcQQuickView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickView_trUtf82".}
proc fcQQuickView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickView_trUtf83".}
proc fQQuickView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_metaObject".}
proc fcQQuickView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_metaObject".}
proc fQQuickView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickView_virtualbase_metacast".}
proc fcQQuickView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_metacast".}
proc fQQuickView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickView_virtualbase_metacall".}
proc fcQQuickView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_metacall".}
proc fQQuickView_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_resizeEvent".}
proc fcQQuickView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_resizeEvent".}
proc fQQuickView_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_timerEvent".}
proc fcQQuickView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_timerEvent".}
proc fQQuickView_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_keyPressEvent".}
proc fcQQuickView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_keyPressEvent".}
proc fQQuickView_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_keyReleaseEvent".}
proc fcQQuickView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_keyReleaseEvent".}
proc fQQuickView_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_mousePressEvent".}
proc fcQQuickView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_mousePressEvent".}
proc fQQuickView_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_mouseReleaseEvent".}
proc fcQQuickView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_mouseReleaseEvent".}
proc fQQuickView_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_mouseMoveEvent".}
proc fcQQuickView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_mouseMoveEvent".}
proc fQQuickView_virtualbase_focusObject(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_focusObject".}
proc fcQQuickView_override_virtual_focusObject(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_focusObject".}
proc fQQuickView_virtualbase_accessibleRoot(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_accessibleRoot".}
proc fcQQuickView_override_virtual_accessibleRoot(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_accessibleRoot".}
proc fQQuickView_virtualbase_exposeEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_exposeEvent".}
proc fcQQuickView_override_virtual_exposeEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_exposeEvent".}
proc fQQuickView_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_showEvent".}
proc fcQQuickView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_showEvent".}
proc fQQuickView_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_hideEvent".}
proc fcQQuickView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_hideEvent".}
proc fQQuickView_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_focusInEvent".}
proc fcQQuickView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_focusInEvent".}
proc fQQuickView_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_focusOutEvent".}
proc fcQQuickView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_focusOutEvent".}
proc fQQuickView_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickView_virtualbase_event".}
proc fcQQuickView_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_event".}
proc fQQuickView_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_mouseDoubleClickEvent".}
proc fQQuickView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_wheelEvent".}
proc fcQQuickView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_wheelEvent".}
proc fQQuickView_virtualbase_tabletEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_tabletEvent".}
proc fcQQuickView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_tabletEvent".}
proc fQQuickView_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QQuickView_virtualbase_surfaceType".}
proc fcQQuickView_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_surfaceType".}
proc fQQuickView_virtualbase_format(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_format".}
proc fcQQuickView_override_virtual_format(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_format".}
proc fQQuickView_virtualbase_size(self: pointer, ): pointer{.importc: "QQuickView_virtualbase_size".}
proc fcQQuickView_override_virtual_size(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_size".}
proc fQQuickView_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_moveEvent".}
proc fcQQuickView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_moveEvent".}
proc fQQuickView_virtualbase_touchEvent(self: pointer, param1: pointer): void{.importc: "QQuickView_virtualbase_touchEvent".}
proc fcQQuickView_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_touchEvent".}
proc fQQuickView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QQuickView_virtualbase_nativeEvent".}
proc fcQQuickView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_nativeEvent".}
proc fQQuickView_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickView_virtualbase_eventFilter".}
proc fcQQuickView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_eventFilter".}
proc fQQuickView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickView_virtualbase_childEvent".}
proc fcQQuickView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_childEvent".}
proc fQQuickView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickView_virtualbase_customEvent".}
proc fcQQuickView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_customEvent".}
proc fQQuickView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickView_virtualbase_connectNotify".}
proc fcQQuickView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_connectNotify".}
proc fQQuickView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickView_virtualbase_disconnectNotify".}
proc fcQQuickView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickView_override_virtual_disconnectNotify".}
proc fcQQuickView_staticMetaObject(): pointer {.importc: "QQuickView_staticMetaObject".}
proc fcQQuickView_delete(self: pointer) {.importc: "QQuickView_delete".}


func init*(T: type QQuickView, h: ptr cQQuickView): QQuickView =
  T(h: h)
proc create*(T: type QQuickView, ): QQuickView =

  QQuickView.init(fcQQuickView_new())
proc create*(T: type QQuickView, engine: gen_qqmlengine.QQmlEngine, parent: gen_qwindow.QWindow): QQuickView =

  QQuickView.init(fcQQuickView_new2(engine.h, parent.h))
proc create*(T: type QQuickView, source: gen_qurl.QUrl): QQuickView =

  QQuickView.init(fcQQuickView_new3(source.h))
proc create2*(T: type QQuickView, source: gen_qurl.QUrl, renderControl: gen_qquickrendercontrol.QQuickRenderControl): QQuickView =

  QQuickView.init(fcQQuickView_new4(source.h, renderControl.h))
proc create2*(T: type QQuickView, parent: gen_qwindow.QWindow): QQuickView =

  QQuickView.init(fcQQuickView_new5(parent.h))
proc create2*(T: type QQuickView, source: gen_qurl.QUrl, parent: gen_qwindow.QWindow): QQuickView =

  QQuickView.init(fcQQuickView_new6(source.h, parent.h))
proc metaObject*(self: QQuickView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickView_metaObject(self.h))

proc metacast*(self: QQuickView, param1: cstring): pointer =

  fcQQuickView_metacast(self.h, param1)

proc metacall*(self: QQuickView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickView, s: cstring): string =

  let v_ms = fcQQuickView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickView, s: cstring): string =

  let v_ms = fcQQuickView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc source*(self: QQuickView, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQuickView_source(self.h))

proc engine*(self: QQuickView, ): gen_qqmlengine.QQmlEngine =

  gen_qqmlengine.QQmlEngine(h: fcQQuickView_engine(self.h))

proc rootContext*(self: QQuickView, ): gen_qqmlcontext.QQmlContext =

  gen_qqmlcontext.QQmlContext(h: fcQQuickView_rootContext(self.h))

proc rootObject*(self: QQuickView, ): gen_qquickitem.QQuickItem =

  gen_qquickitem.QQuickItem(h: fcQQuickView_rootObject(self.h))

proc resizeMode*(self: QQuickView, ): QQuickViewResizeMode =

  QQuickViewResizeMode(fcQQuickView_resizeMode(self.h))

proc setResizeMode*(self: QQuickView, resizeMode: QQuickViewResizeMode): void =

  fcQQuickView_setResizeMode(self.h, cint(resizeMode))

proc status*(self: QQuickView, ): QQuickViewStatus =

  QQuickViewStatus(fcQQuickView_status(self.h))

proc errors*(self: QQuickView, ): seq[gen_qqmlerror.QQmlError] =

  var v_ma = fcQQuickView_errors(self.h)
  var vx_ret = newSeq[gen_qqmlerror.QQmlError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qqmlerror.QQmlError(h: v_outCast[i])
  vx_ret

proc sizeHint*(self: QQuickView, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQQuickView_sizeHint(self.h))

proc initialSize*(self: QQuickView, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQQuickView_initialSize(self.h))

proc setSource*(self: QQuickView, source: gen_qurl.QUrl): void =

  fcQQuickView_setSource(self.h, source.h)

proc setInitialProperties*(self: QQuickView, initialProperties: Table[string,gen_qvariant.QVariant]): void =

  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQuickView_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

proc setContent*(self: QQuickView, url: gen_qurl.QUrl, component: gen_qqmlcomponent.QQmlComponent, item: gen_qobject.QObject): void =

  fcQQuickView_setContent(self.h, url.h, component.h, item.h)

proc statusChanged*(self: QQuickView, param1: QQuickViewStatus): void =

  fcQQuickView_statusChanged(self.h, cint(param1))

proc miqt_exec_callback_QQuickView_statusChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QQuickViewStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QQuickViewStatus(param1)


  nimfunc[](slotval1)

proc onstatusChanged*(self: QQuickView, slot: proc(param1: QQuickViewStatus)) =
  type Cb = proc(param1: QQuickViewStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickView_connect_statusChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQuickView, s: cstring, c: cstring): string =

  let v_ms = fcQQuickView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickView, s: cstring, c: cstring): string =

  let v_ms = fcQQuickView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QQuickView, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQQuickView_virtualbase_metaObject(self.h))

type QQuickViewmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QQuickView, slot: proc(super: QQuickViewmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_metaObject(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_metaObject ".} =
  type Cb = proc(super: QQuickViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QQuickView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QQuickView, param1: cstring): pointer =


  fQQuickView_virtualbase_metacast(self.h, param1)

type QQuickViewmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QQuickView, slot: proc(super: QQuickViewmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_metacast(self: ptr cQQuickView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickView_metacast ".} =
  type Cb = proc(super: QQuickViewmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QQuickView(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QQuickView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQuickView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQuickView, slot: proc(super: QQuickViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_metacall(self: ptr cQQuickView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickView_metacall ".} =
  type Cb = proc(super: QQuickViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQuickView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_resizeEvent(self: QQuickView, param1: gen_qevent.QResizeEvent): void =


  fQQuickView_virtualbase_resizeEvent(self.h, param1.h)

type QQuickViewresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QQuickView, slot: proc(super: QQuickViewresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_resizeEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_resizeEvent ".} =
  type Cb = proc(super: QQuickViewresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QQuickView, param1: gen_qcoreevent.QTimerEvent): void =


  fQQuickView_virtualbase_timerEvent(self.h, param1.h)

type QQuickViewtimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQuickView, slot: proc(super: QQuickViewtimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewtimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_timerEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_timerEvent ".} =
  type Cb = proc(super: QQuickViewtimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QQuickView, param1: gen_qevent.QKeyEvent): void =


  fQQuickView_virtualbase_keyPressEvent(self.h, param1.h)

type QQuickViewkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QQuickView, slot: proc(super: QQuickViewkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_keyPressEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_keyPressEvent ".} =
  type Cb = proc(super: QQuickViewkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QQuickView, param1: gen_qevent.QKeyEvent): void =


  fQQuickView_virtualbase_keyReleaseEvent(self.h, param1.h)

type QQuickViewkeyReleaseEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QQuickView, slot: proc(super: QQuickViewkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_keyReleaseEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_keyReleaseEvent ".} =
  type Cb = proc(super: QQuickViewkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QQuickView, param1: gen_qevent.QMouseEvent): void =


  fQQuickView_virtualbase_mousePressEvent(self.h, param1.h)

type QQuickViewmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QQuickView, slot: proc(super: QQuickViewmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_mousePressEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_mousePressEvent ".} =
  type Cb = proc(super: QQuickViewmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QQuickView, param1: gen_qevent.QMouseEvent): void =


  fQQuickView_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QQuickViewmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QQuickView, slot: proc(super: QQuickViewmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_mouseReleaseEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_mouseReleaseEvent ".} =
  type Cb = proc(super: QQuickViewmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QQuickView, param1: gen_qevent.QMouseEvent): void =


  fQQuickView_virtualbase_mouseMoveEvent(self.h, param1.h)

type QQuickViewmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QQuickView, slot: proc(super: QQuickViewmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_mouseMoveEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_mouseMoveEvent ".} =
  type Cb = proc(super: QQuickViewmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusObject(self: QQuickView, ): gen_qobject.QObject =


  gen_qobject.QObject(h: fQQuickView_virtualbase_focusObject(self.h))

type QQuickViewfocusObjectBase* = proc(): gen_qobject.QObject
proc onfocusObject*(self: QQuickView, slot: proc(super: QQuickViewfocusObjectBase): gen_qobject.QObject) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewfocusObjectBase): gen_qobject.QObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_focusObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_focusObject(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_focusObject ".} =
  type Cb = proc(super: QQuickViewfocusObjectBase): gen_qobject.QObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_focusObject(QQuickView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_accessibleRoot(self: QQuickView, ): gen_qaccessible.QAccessibleInterface =


  gen_qaccessible.QAccessibleInterface(h: fQQuickView_virtualbase_accessibleRoot(self.h))

type QQuickViewaccessibleRootBase* = proc(): gen_qaccessible.QAccessibleInterface
proc onaccessibleRoot*(self: QQuickView, slot: proc(super: QQuickViewaccessibleRootBase): gen_qaccessible.QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewaccessibleRootBase): gen_qaccessible.QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_accessibleRoot(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_accessibleRoot(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_accessibleRoot ".} =
  type Cb = proc(super: QQuickViewaccessibleRootBase): gen_qaccessible.QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleRoot(QQuickView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_exposeEvent(self: QQuickView, param1: gen_qevent.QExposeEvent): void =


  fQQuickView_virtualbase_exposeEvent(self.h, param1.h)

type QQuickViewexposeEventBase* = proc(param1: gen_qevent.QExposeEvent): void
proc onexposeEvent*(self: QQuickView, slot: proc(super: QQuickViewexposeEventBase, param1: gen_qevent.QExposeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewexposeEventBase, param1: gen_qevent.QExposeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_exposeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_exposeEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_exposeEvent ".} =
  type Cb = proc(super: QQuickViewexposeEventBase, param1: gen_qevent.QExposeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QExposeEvent): auto =
    callVirtualBase_exposeEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QExposeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QQuickView, param1: gen_qevent.QShowEvent): void =


  fQQuickView_virtualbase_showEvent(self.h, param1.h)

type QQuickViewshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QQuickView, slot: proc(super: QQuickViewshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_showEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_showEvent ".} =
  type Cb = proc(super: QQuickViewshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QQuickView, param1: gen_qevent.QHideEvent): void =


  fQQuickView_virtualbase_hideEvent(self.h, param1.h)

type QQuickViewhideEventBase* = proc(param1: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QQuickView, slot: proc(super: QQuickViewhideEventBase, param1: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewhideEventBase, param1: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_hideEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_hideEvent ".} =
  type Cb = proc(super: QQuickViewhideEventBase, param1: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QHideEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QQuickView, param1: gen_qevent.QFocusEvent): void =


  fQQuickView_virtualbase_focusInEvent(self.h, param1.h)

type QQuickViewfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QQuickView, slot: proc(super: QQuickViewfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_focusInEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_focusInEvent ".} =
  type Cb = proc(super: QQuickViewfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QQuickView, param1: gen_qevent.QFocusEvent): void =


  fQQuickView_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickViewfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QQuickView, slot: proc(super: QQuickViewfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_focusOutEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_focusOutEvent ".} =
  type Cb = proc(super: QQuickViewfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QQuickView, param1: gen_qcoreevent.QEvent): bool =


  fQQuickView_virtualbase_event(self.h, param1.h)

type QQuickVieweventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQuickView, slot: proc(super: QQuickVieweventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickVieweventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_event(self: ptr cQQuickView, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickView_event ".} =
  type Cb = proc(super: QQuickVieweventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQuickView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mouseDoubleClickEvent(self: QQuickView, param1: gen_qevent.QMouseEvent): void =


  fQQuickView_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QQuickViewmouseDoubleClickEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QQuickView, slot: proc(super: QQuickViewmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_mouseDoubleClickEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QQuickViewmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QQuickView, param1: gen_qevent.QWheelEvent): void =


  fQQuickView_virtualbase_wheelEvent(self.h, param1.h)

type QQuickViewwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QQuickView, slot: proc(super: QQuickViewwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_wheelEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_wheelEvent ".} =
  type Cb = proc(super: QQuickViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QQuickView, param1: gen_qevent.QTabletEvent): void =


  fQQuickView_virtualbase_tabletEvent(self.h, param1.h)

type QQuickViewtabletEventBase* = proc(param1: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QQuickView, slot: proc(super: QQuickViewtabletEventBase, param1: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewtabletEventBase, param1: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_tabletEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_tabletEvent ".} =
  type Cb = proc(super: QQuickViewtabletEventBase, param1: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QTabletEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_surfaceType(self: QQuickView, ): gen_qsurface.QSurfaceSurfaceType =


  gen_qsurface.QSurfaceSurfaceType(fQQuickView_virtualbase_surfaceType(self.h))

type QQuickViewsurfaceTypeBase* = proc(): gen_qsurface.QSurfaceSurfaceType
proc onsurfaceType*(self: QQuickView, slot: proc(super: QQuickViewsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_surfaceType(self: ptr cQQuickView, slot: int): cint {.exportc: "miqt_exec_callback_QQuickView_surfaceType ".} =
  type Cb = proc(super: QQuickViewsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_surfaceType(QQuickView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_format(self: QQuickView, ): gen_qsurfaceformat.QSurfaceFormat =


  gen_qsurfaceformat.QSurfaceFormat(h: fQQuickView_virtualbase_format(self.h))

type QQuickViewformatBase* = proc(): gen_qsurfaceformat.QSurfaceFormat
proc onformat*(self: QQuickView, slot: proc(super: QQuickViewformatBase): gen_qsurfaceformat.QSurfaceFormat) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewformatBase): gen_qsurfaceformat.QSurfaceFormat
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_format(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_format ".} =
  type Cb = proc(super: QQuickViewformatBase): gen_qsurfaceformat.QSurfaceFormat
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_format(QQuickView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_size(self: QQuickView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQQuickView_virtualbase_size(self.h))

type QQuickViewsizeBase* = proc(): gen_qsize.QSize
proc onsize*(self: QQuickView, slot: proc(super: QQuickViewsizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewsizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_size(self: ptr cQQuickView, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickView_size ".} =
  type Cb = proc(super: QQuickViewsizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QQuickView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_moveEvent(self: QQuickView, param1: gen_qevent.QMoveEvent): void =


  fQQuickView_virtualbase_moveEvent(self.h, param1.h)

type QQuickViewmoveEventBase* = proc(param1: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QQuickView, slot: proc(super: QQuickViewmoveEventBase, param1: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_moveEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_moveEvent ".} =
  type Cb = proc(super: QQuickViewmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_touchEvent(self: QQuickView, param1: gen_qevent.QTouchEvent): void =


  fQQuickView_virtualbase_touchEvent(self.h, param1.h)

type QQuickViewtouchEventBase* = proc(param1: gen_qevent.QTouchEvent): void
proc ontouchEvent*(self: QQuickView, slot: proc(super: QQuickViewtouchEventBase, param1: gen_qevent.QTouchEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewtouchEventBase, param1: gen_qevent.QTouchEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_touchEvent(self: ptr cQQuickView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickView_touchEvent ".} =
  type Cb = proc(super: QQuickViewtouchEventBase, param1: gen_qevent.QTouchEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QTouchEvent): auto =
    callVirtualBase_touchEvent(QQuickView(h: self), param1)
  let slotval1 = gen_qevent.QTouchEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QQuickView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQQuickView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QQuickViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QQuickView, slot: proc(super: QQuickViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_nativeEvent(self: ptr cQQuickView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QQuickView_nativeEvent ".} =
  type Cb = proc(super: QQuickViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QQuickView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQuickView, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQuickView_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickVieweventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQuickView, slot: proc(super: QQuickVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_eventFilter(self: ptr cQQuickView, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickView_eventFilter ".} =
  type Cb = proc(super: QQuickVieweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQuickView(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QQuickView, event: gen_qcoreevent.QChildEvent): void =


  fQQuickView_virtualbase_childEvent(self.h, event.h)

type QQuickViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQuickView, slot: proc(super: QQuickViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_childEvent(self: ptr cQQuickView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickView_childEvent ".} =
  type Cb = proc(super: QQuickViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQuickView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQuickView, event: gen_qcoreevent.QEvent): void =


  fQQuickView_virtualbase_customEvent(self.h, event.h)

type QQuickViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQuickView, slot: proc(super: QQuickViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_customEvent(self: ptr cQQuickView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickView_customEvent ".} =
  type Cb = proc(super: QQuickViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQuickView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQuickView, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickView_virtualbase_connectNotify(self.h, signal.h)

type QQuickViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQuickView, slot: proc(super: QQuickViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_connectNotify(self: ptr cQQuickView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickView_connectNotify ".} =
  type Cb = proc(super: QQuickViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQuickView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQuickView, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickView_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQuickView, slot: proc(super: QQuickViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickView_disconnectNotify(self: ptr cQQuickView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickView_disconnectNotify ".} =
  type Cb = proc(super: QQuickViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQuickView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQuickView): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickView_staticMetaObject())
proc delete*(self: QQuickView) =
  fcQQuickView_delete(self.h)
