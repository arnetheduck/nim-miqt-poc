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
{.compile("gen_qquickwindow.cpp", cflags).}


type QQuickWindowCreateTextureOption* = cint
const
  QQuickWindowTextureHasAlphaChannel* = 1
  QQuickWindowTextureHasMipmaps* = 2
  QQuickWindowTextureOwnsGLTexture* = 4
  QQuickWindowTextureCanUseAtlas* = 8
  QQuickWindowTextureIsOpaque* = 16



type QQuickWindowRenderStage* = cint
const
  QQuickWindowBeforeSynchronizingStage* = 0
  QQuickWindowAfterSynchronizingStage* = 1
  QQuickWindowBeforeRenderingStage* = 2
  QQuickWindowAfterRenderingStage* = 3
  QQuickWindowAfterSwapStage* = 4
  QQuickWindowNoStage* = 5



type QQuickWindowSceneGraphError* = cint
const
  QQuickWindowContextNotAvailable* = 1



type QQuickWindowTextRenderType* = cint
const
  QQuickWindowQtTextRendering* = 0
  QQuickWindowNativeTextRendering* = 1



type QQuickWindowNativeObjectType* = cint
const
  QQuickWindowNativeObjectTexture* = 0



import gen_qquickwindow_types
export gen_qquickwindow_types

import
  gen_qaccessible,
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlincubator,
  gen_qquickitem,
  gen_qquickrendercontrol,
  gen_qrunnable,
  gen_qsgimagenode,
  gen_qsgninepatchnode,
  gen_qsgrectanglenode,
  gen_qsgrendererinterface,
  gen_qsgtexture,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat,
  gen_qwindow
export
  gen_qaccessible,
  gen_qcolor,
  gen_qcoreevent,
  gen_qevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlincubator,
  gen_qquickitem,
  gen_qquickrendercontrol,
  gen_qrunnable,
  gen_qsgimagenode,
  gen_qsgninepatchnode,
  gen_qsgrectanglenode,
  gen_qsgrendererinterface,
  gen_qsgtexture,
  gen_qsize,
  gen_qsurface,
  gen_qsurfaceformat,
  gen_qwindow

type cQQuickWindow*{.exportc: "QQuickWindow", incompleteStruct.} = object
type cQQuickWindowGraphicsStateInfo*{.exportc: "QQuickWindow__GraphicsStateInfo", incompleteStruct.} = object

proc fcQQuickWindow_new(): ptr cQQuickWindow {.importc: "QQuickWindow_new".}
proc fcQQuickWindow_new2(renderControl: pointer): ptr cQQuickWindow {.importc: "QQuickWindow_new2".}
proc fcQQuickWindow_new3(parent: pointer): ptr cQQuickWindow {.importc: "QQuickWindow_new3".}
proc fcQQuickWindow_metaObject(self: pointer, ): pointer {.importc: "QQuickWindow_metaObject".}
proc fcQQuickWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWindow_metacast".}
proc fcQQuickWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWindow_metacall".}
proc fcQQuickWindow_tr(s: cstring): struct_miqt_string {.importc: "QQuickWindow_tr".}
proc fcQQuickWindow_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickWindow_trUtf8".}
proc fcQQuickWindow_contentItem(self: pointer, ): pointer {.importc: "QQuickWindow_contentItem".}
proc fcQQuickWindow_activeFocusItem(self: pointer, ): pointer {.importc: "QQuickWindow_activeFocusItem".}
proc fcQQuickWindow_focusObject(self: pointer, ): pointer {.importc: "QQuickWindow_focusObject".}
proc fcQQuickWindow_mouseGrabberItem(self: pointer, ): pointer {.importc: "QQuickWindow_mouseGrabberItem".}
proc fcQQuickWindow_sendEvent(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QQuickWindow_sendEvent".}
proc fcQQuickWindow_grabWindow(self: pointer, ): pointer {.importc: "QQuickWindow_grabWindow".}
proc fcQQuickWindow_setRenderTarget2(self: pointer, fboId: cuint, size: pointer): void {.importc: "QQuickWindow_setRenderTarget2".}
proc fcQQuickWindow_renderTargetId(self: pointer, ): cuint {.importc: "QQuickWindow_renderTargetId".}
proc fcQQuickWindow_renderTargetSize(self: pointer, ): pointer {.importc: "QQuickWindow_renderTargetSize".}
proc fcQQuickWindow_resetOpenGLState(self: pointer, ): void {.importc: "QQuickWindow_resetOpenGLState".}
proc fcQQuickWindow_graphicsStateInfo(self: pointer, ): pointer {.importc: "QQuickWindow_graphicsStateInfo".}
proc fcQQuickWindow_beginExternalCommands(self: pointer, ): void {.importc: "QQuickWindow_beginExternalCommands".}
proc fcQQuickWindow_endExternalCommands(self: pointer, ): void {.importc: "QQuickWindow_endExternalCommands".}
proc fcQQuickWindow_incubationController(self: pointer, ): pointer {.importc: "QQuickWindow_incubationController".}
proc fcQQuickWindow_accessibleRoot(self: pointer, ): pointer {.importc: "QQuickWindow_accessibleRoot".}
proc fcQQuickWindow_createTextureFromImage(self: pointer, image: pointer): pointer {.importc: "QQuickWindow_createTextureFromImage".}
proc fcQQuickWindow_createTextureFromImage2(self: pointer, image: pointer, options: cint): pointer {.importc: "QQuickWindow_createTextureFromImage2".}
proc fcQQuickWindow_createTextureFromId(self: pointer, id: cuint, size: pointer): pointer {.importc: "QQuickWindow_createTextureFromId".}
proc fcQQuickWindow_createTextureFromNativeObject(self: pointer, typeVal: cint, nativeObjectPtr: pointer, nativeLayout: cint, size: pointer): pointer {.importc: "QQuickWindow_createTextureFromNativeObject".}
proc fcQQuickWindow_setClearBeforeRendering(self: pointer, enabled: bool): void {.importc: "QQuickWindow_setClearBeforeRendering".}
proc fcQQuickWindow_clearBeforeRendering(self: pointer, ): bool {.importc: "QQuickWindow_clearBeforeRendering".}
proc fcQQuickWindow_setColor(self: pointer, color: pointer): void {.importc: "QQuickWindow_setColor".}
proc fcQQuickWindow_color(self: pointer, ): pointer {.importc: "QQuickWindow_color".}
proc fcQQuickWindow_hasDefaultAlphaBuffer(): bool {.importc: "QQuickWindow_hasDefaultAlphaBuffer".}
proc fcQQuickWindow_setDefaultAlphaBuffer(useAlpha: bool): void {.importc: "QQuickWindow_setDefaultAlphaBuffer".}
proc fcQQuickWindow_setPersistentOpenGLContext(self: pointer, persistent: bool): void {.importc: "QQuickWindow_setPersistentOpenGLContext".}
proc fcQQuickWindow_isPersistentOpenGLContext(self: pointer, ): bool {.importc: "QQuickWindow_isPersistentOpenGLContext".}
proc fcQQuickWindow_setPersistentSceneGraph(self: pointer, persistent: bool): void {.importc: "QQuickWindow_setPersistentSceneGraph".}
proc fcQQuickWindow_isPersistentSceneGraph(self: pointer, ): bool {.importc: "QQuickWindow_isPersistentSceneGraph".}
proc fcQQuickWindow_isSceneGraphInitialized(self: pointer, ): bool {.importc: "QQuickWindow_isSceneGraphInitialized".}
proc fcQQuickWindow_scheduleRenderJob(self: pointer, job: pointer, schedule: cint): void {.importc: "QQuickWindow_scheduleRenderJob".}
proc fcQQuickWindow_effectiveDevicePixelRatio(self: pointer, ): float64 {.importc: "QQuickWindow_effectiveDevicePixelRatio".}
proc fcQQuickWindow_rendererInterface(self: pointer, ): pointer {.importc: "QQuickWindow_rendererInterface".}
proc fcQQuickWindow_setSceneGraphBackend(api: cint): void {.importc: "QQuickWindow_setSceneGraphBackend".}
proc fcQQuickWindow_setSceneGraphBackendWithBackend(backend: struct_miqt_string): void {.importc: "QQuickWindow_setSceneGraphBackendWithBackend".}
proc fcQQuickWindow_sceneGraphBackend(): struct_miqt_string {.importc: "QQuickWindow_sceneGraphBackend".}
proc fcQQuickWindow_createRectangleNode(self: pointer, ): pointer {.importc: "QQuickWindow_createRectangleNode".}
proc fcQQuickWindow_createImageNode(self: pointer, ): pointer {.importc: "QQuickWindow_createImageNode".}
proc fcQQuickWindow_createNinePatchNode(self: pointer, ): pointer {.importc: "QQuickWindow_createNinePatchNode".}
proc fcQQuickWindow_textRenderType(): cint {.importc: "QQuickWindow_textRenderType".}
proc fcQQuickWindow_setTextRenderType(renderType: cint): void {.importc: "QQuickWindow_setTextRenderType".}
proc fcQQuickWindow_frameSwapped(self: pointer, ): void {.importc: "QQuickWindow_frameSwapped".}
proc fQQuickWindow_connect_frameSwapped(self: pointer, slot: int) {.importc: "QQuickWindow_connect_frameSwapped".}
proc fcQQuickWindow_sceneGraphInitialized(self: pointer, ): void {.importc: "QQuickWindow_sceneGraphInitialized".}
proc fQQuickWindow_connect_sceneGraphInitialized(self: pointer, slot: int) {.importc: "QQuickWindow_connect_sceneGraphInitialized".}
proc fcQQuickWindow_sceneGraphInvalidated(self: pointer, ): void {.importc: "QQuickWindow_sceneGraphInvalidated".}
proc fQQuickWindow_connect_sceneGraphInvalidated(self: pointer, slot: int) {.importc: "QQuickWindow_connect_sceneGraphInvalidated".}
proc fcQQuickWindow_beforeSynchronizing(self: pointer, ): void {.importc: "QQuickWindow_beforeSynchronizing".}
proc fQQuickWindow_connect_beforeSynchronizing(self: pointer, slot: int) {.importc: "QQuickWindow_connect_beforeSynchronizing".}
proc fcQQuickWindow_afterSynchronizing(self: pointer, ): void {.importc: "QQuickWindow_afterSynchronizing".}
proc fQQuickWindow_connect_afterSynchronizing(self: pointer, slot: int) {.importc: "QQuickWindow_connect_afterSynchronizing".}
proc fcQQuickWindow_beforeRendering(self: pointer, ): void {.importc: "QQuickWindow_beforeRendering".}
proc fQQuickWindow_connect_beforeRendering(self: pointer, slot: int) {.importc: "QQuickWindow_connect_beforeRendering".}
proc fcQQuickWindow_afterRendering(self: pointer, ): void {.importc: "QQuickWindow_afterRendering".}
proc fQQuickWindow_connect_afterRendering(self: pointer, slot: int) {.importc: "QQuickWindow_connect_afterRendering".}
proc fcQQuickWindow_afterAnimating(self: pointer, ): void {.importc: "QQuickWindow_afterAnimating".}
proc fQQuickWindow_connect_afterAnimating(self: pointer, slot: int) {.importc: "QQuickWindow_connect_afterAnimating".}
proc fcQQuickWindow_sceneGraphAboutToStop(self: pointer, ): void {.importc: "QQuickWindow_sceneGraphAboutToStop".}
proc fQQuickWindow_connect_sceneGraphAboutToStop(self: pointer, slot: int) {.importc: "QQuickWindow_connect_sceneGraphAboutToStop".}
proc fcQQuickWindow_colorChanged(self: pointer, param1: pointer): void {.importc: "QQuickWindow_colorChanged".}
proc fQQuickWindow_connect_colorChanged(self: pointer, slot: int) {.importc: "QQuickWindow_connect_colorChanged".}
proc fcQQuickWindow_activeFocusItemChanged(self: pointer, ): void {.importc: "QQuickWindow_activeFocusItemChanged".}
proc fQQuickWindow_connect_activeFocusItemChanged(self: pointer, slot: int) {.importc: "QQuickWindow_connect_activeFocusItemChanged".}
proc fcQQuickWindow_sceneGraphError(self: pointer, error: cint, message: struct_miqt_string): void {.importc: "QQuickWindow_sceneGraphError".}
proc fQQuickWindow_connect_sceneGraphError(self: pointer, slot: int) {.importc: "QQuickWindow_connect_sceneGraphError".}
proc fcQQuickWindow_beforeRenderPassRecording(self: pointer, ): void {.importc: "QQuickWindow_beforeRenderPassRecording".}
proc fQQuickWindow_connect_beforeRenderPassRecording(self: pointer, slot: int) {.importc: "QQuickWindow_connect_beforeRenderPassRecording".}
proc fcQQuickWindow_afterRenderPassRecording(self: pointer, ): void {.importc: "QQuickWindow_afterRenderPassRecording".}
proc fQQuickWindow_connect_afterRenderPassRecording(self: pointer, slot: int) {.importc: "QQuickWindow_connect_afterRenderPassRecording".}
proc fcQQuickWindow_update(self: pointer, ): void {.importc: "QQuickWindow_update".}
proc fcQQuickWindow_releaseResources(self: pointer, ): void {.importc: "QQuickWindow_releaseResources".}
proc fcQQuickWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWindow_tr2".}
proc fcQQuickWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWindow_tr3".}
proc fcQQuickWindow_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWindow_trUtf82".}
proc fcQQuickWindow_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWindow_trUtf83".}
proc fcQQuickWindow_createTextureFromId3(self: pointer, id: cuint, size: pointer, options: cint): pointer {.importc: "QQuickWindow_createTextureFromId3".}
proc fcQQuickWindow_createTextureFromNativeObject5(self: pointer, typeVal: cint, nativeObjectPtr: pointer, nativeLayout: cint, size: pointer, options: cint): pointer {.importc: "QQuickWindow_createTextureFromNativeObject5".}
proc fQQuickWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickWindow_virtualbase_metacall".}
proc fcQQuickWindow_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_metacall".}
proc fQQuickWindow_virtualbase_focusObject(self: pointer, ): pointer{.importc: "QQuickWindow_virtualbase_focusObject".}
proc fcQQuickWindow_override_virtual_focusObject(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_focusObject".}
proc fQQuickWindow_virtualbase_accessibleRoot(self: pointer, ): pointer{.importc: "QQuickWindow_virtualbase_accessibleRoot".}
proc fcQQuickWindow_override_virtual_accessibleRoot(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_accessibleRoot".}
proc fQQuickWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_exposeEvent".}
proc fcQQuickWindow_override_virtual_exposeEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_exposeEvent".}
proc fQQuickWindow_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_resizeEvent".}
proc fcQQuickWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_resizeEvent".}
proc fQQuickWindow_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_showEvent".}
proc fcQQuickWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_showEvent".}
proc fQQuickWindow_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_hideEvent".}
proc fcQQuickWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_hideEvent".}
proc fQQuickWindow_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_focusInEvent".}
proc fcQQuickWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_focusInEvent".}
proc fQQuickWindow_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_focusOutEvent".}
proc fcQQuickWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_focusOutEvent".}
proc fQQuickWindow_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQuickWindow_virtualbase_event".}
proc fcQQuickWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_event".}
proc fQQuickWindow_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_keyPressEvent".}
proc fcQQuickWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_keyPressEvent".}
proc fQQuickWindow_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_keyReleaseEvent".}
proc fcQQuickWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_keyReleaseEvent".}
proc fQQuickWindow_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_mousePressEvent".}
proc fcQQuickWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_mousePressEvent".}
proc fQQuickWindow_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_mouseReleaseEvent".}
proc fcQQuickWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_mouseReleaseEvent".}
proc fQQuickWindow_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQQuickWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_mouseDoubleClickEvent".}
proc fQQuickWindow_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_mouseMoveEvent".}
proc fcQQuickWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_mouseMoveEvent".}
proc fQQuickWindow_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_wheelEvent".}
proc fcQQuickWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_wheelEvent".}
proc fQQuickWindow_virtualbase_tabletEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_tabletEvent".}
proc fcQQuickWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_tabletEvent".}
proc fQQuickWindow_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QQuickWindow_virtualbase_surfaceType".}
proc fcQQuickWindow_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_surfaceType".}
proc fQQuickWindow_virtualbase_format(self: pointer, ): pointer{.importc: "QQuickWindow_virtualbase_format".}
proc fcQQuickWindow_override_virtual_format(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_format".}
proc fQQuickWindow_virtualbase_size(self: pointer, ): pointer{.importc: "QQuickWindow_virtualbase_size".}
proc fcQQuickWindow_override_virtual_size(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_size".}
proc fQQuickWindow_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_moveEvent".}
proc fcQQuickWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_moveEvent".}
proc fQQuickWindow_virtualbase_touchEvent(self: pointer, param1: pointer): void{.importc: "QQuickWindow_virtualbase_touchEvent".}
proc fcQQuickWindow_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_touchEvent".}
proc fQQuickWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QQuickWindow_virtualbase_nativeEvent".}
proc fcQQuickWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_nativeEvent".}
proc fQQuickWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickWindow_virtualbase_eventFilter".}
proc fcQQuickWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_eventFilter".}
proc fQQuickWindow_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickWindow_virtualbase_timerEvent".}
proc fcQQuickWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_timerEvent".}
proc fQQuickWindow_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickWindow_virtualbase_childEvent".}
proc fcQQuickWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_childEvent".}
proc fQQuickWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickWindow_virtualbase_customEvent".}
proc fcQQuickWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_customEvent".}
proc fQQuickWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickWindow_virtualbase_connectNotify".}
proc fcQQuickWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_connectNotify".}
proc fQQuickWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickWindow_virtualbase_disconnectNotify".}
proc fcQQuickWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickWindow_override_virtual_disconnectNotify".}
proc fcQQuickWindow_delete(self: pointer) {.importc: "QQuickWindow_delete".}
proc fcQQuickWindowGraphicsStateInfo_delete(self: pointer) {.importc: "QQuickWindow__GraphicsStateInfo_delete".}


func init*(T: type QQuickWindow, h: ptr cQQuickWindow): QQuickWindow =
  T(h: h)
proc create*(T: type QQuickWindow, ): QQuickWindow =

  QQuickWindow.init(fcQQuickWindow_new())
proc create*(T: type QQuickWindow, renderControl: gen_qquickrendercontrol.QQuickRenderControl): QQuickWindow =

  QQuickWindow.init(fcQQuickWindow_new2(renderControl.h))
proc create2*(T: type QQuickWindow, parent: gen_qwindow.QWindow): QQuickWindow =

  QQuickWindow.init(fcQQuickWindow_new3(parent.h))
proc metaObject*(self: QQuickWindow, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickWindow_metaObject(self.h))

proc metacast*(self: QQuickWindow, param1: cstring): pointer =

  fcQQuickWindow_metacast(self.h, param1)

proc metacall*(self: QQuickWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickWindow, s: cstring): string =

  let v_ms = fcQQuickWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickWindow, s: cstring): string =

  let v_ms = fcQQuickWindow_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc contentItem*(self: QQuickWindow, ): gen_qquickitem.QQuickItem =

  gen_qquickitem.QQuickItem(h: fcQQuickWindow_contentItem(self.h))

proc activeFocusItem*(self: QQuickWindow, ): gen_qquickitem.QQuickItem =

  gen_qquickitem.QQuickItem(h: fcQQuickWindow_activeFocusItem(self.h))

proc focusObject*(self: QQuickWindow, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQQuickWindow_focusObject(self.h))

proc mouseGrabberItem*(self: QQuickWindow, ): gen_qquickitem.QQuickItem =

  gen_qquickitem.QQuickItem(h: fcQQuickWindow_mouseGrabberItem(self.h))

proc sendEvent*(self: QQuickWindow, param1: gen_qquickitem.QQuickItem, param2: gen_qcoreevent.QEvent): bool =

  fcQQuickWindow_sendEvent(self.h, param1.h, param2.h)

proc grabWindow*(self: QQuickWindow, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQQuickWindow_grabWindow(self.h))

proc setRenderTarget2*(self: QQuickWindow, fboId: cuint, size: gen_qsize.QSize): void =

  fcQQuickWindow_setRenderTarget2(self.h, fboId, size.h)

proc renderTargetId*(self: QQuickWindow, ): cuint =

  fcQQuickWindow_renderTargetId(self.h)

proc renderTargetSize*(self: QQuickWindow, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQQuickWindow_renderTargetSize(self.h))

proc resetOpenGLState*(self: QQuickWindow, ): void =

  fcQQuickWindow_resetOpenGLState(self.h)

proc graphicsStateInfo*(self: QQuickWindow, ): QQuickWindowGraphicsStateInfo =

  QQuickWindowGraphicsStateInfo(h: fcQQuickWindow_graphicsStateInfo(self.h))

proc beginExternalCommands*(self: QQuickWindow, ): void =

  fcQQuickWindow_beginExternalCommands(self.h)

proc endExternalCommands*(self: QQuickWindow, ): void =

  fcQQuickWindow_endExternalCommands(self.h)

proc incubationController*(self: QQuickWindow, ): gen_qqmlincubator.QQmlIncubationController =

  gen_qqmlincubator.QQmlIncubationController(h: fcQQuickWindow_incubationController(self.h))

proc accessibleRoot*(self: QQuickWindow, ): gen_qaccessible.QAccessibleInterface =

  gen_qaccessible.QAccessibleInterface(h: fcQQuickWindow_accessibleRoot(self.h))

proc createTextureFromImage*(self: QQuickWindow, image: gen_qimage.QImage): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQQuickWindow_createTextureFromImage(self.h, image.h))

proc createTextureFromImage2*(self: QQuickWindow, image: gen_qimage.QImage, options: QQuickWindowCreateTextureOption): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQQuickWindow_createTextureFromImage2(self.h, image.h, cint(options)))

proc createTextureFromId*(self: QQuickWindow, id: cuint, size: gen_qsize.QSize): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQQuickWindow_createTextureFromId(self.h, id, size.h))

proc createTextureFromNativeObject*(self: QQuickWindow, typeVal: QQuickWindowNativeObjectType, nativeObjectPtr: pointer, nativeLayout: cint, size: gen_qsize.QSize): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQQuickWindow_createTextureFromNativeObject(self.h, cint(typeVal), nativeObjectPtr, nativeLayout, size.h))

proc setClearBeforeRendering*(self: QQuickWindow, enabled: bool): void =

  fcQQuickWindow_setClearBeforeRendering(self.h, enabled)

proc clearBeforeRendering*(self: QQuickWindow, ): bool =

  fcQQuickWindow_clearBeforeRendering(self.h)

proc setColor*(self: QQuickWindow, color: gen_qcolor.QColor): void =

  fcQQuickWindow_setColor(self.h, color.h)

proc color*(self: QQuickWindow, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQQuickWindow_color(self.h))

proc hasDefaultAlphaBuffer*(_: type QQuickWindow, ): bool =

  fcQQuickWindow_hasDefaultAlphaBuffer()

proc setDefaultAlphaBuffer*(_: type QQuickWindow, useAlpha: bool): void =

  fcQQuickWindow_setDefaultAlphaBuffer(useAlpha)

proc setPersistentOpenGLContext*(self: QQuickWindow, persistent: bool): void =

  fcQQuickWindow_setPersistentOpenGLContext(self.h, persistent)

proc isPersistentOpenGLContext*(self: QQuickWindow, ): bool =

  fcQQuickWindow_isPersistentOpenGLContext(self.h)

proc setPersistentSceneGraph*(self: QQuickWindow, persistent: bool): void =

  fcQQuickWindow_setPersistentSceneGraph(self.h, persistent)

proc isPersistentSceneGraph*(self: QQuickWindow, ): bool =

  fcQQuickWindow_isPersistentSceneGraph(self.h)

proc isSceneGraphInitialized*(self: QQuickWindow, ): bool =

  fcQQuickWindow_isSceneGraphInitialized(self.h)

proc scheduleRenderJob*(self: QQuickWindow, job: gen_qrunnable.QRunnable, schedule: QQuickWindowRenderStage): void =

  fcQQuickWindow_scheduleRenderJob(self.h, job.h, cint(schedule))

proc effectiveDevicePixelRatio*(self: QQuickWindow, ): float64 =

  fcQQuickWindow_effectiveDevicePixelRatio(self.h)

proc rendererInterface*(self: QQuickWindow, ): gen_qsgrendererinterface.QSGRendererInterface =

  gen_qsgrendererinterface.QSGRendererInterface(h: fcQQuickWindow_rendererInterface(self.h))

proc setSceneGraphBackend*(_: type QQuickWindow, api: gen_qsgrendererinterface.QSGRendererInterfaceGraphicsApi): void =

  fcQQuickWindow_setSceneGraphBackend(cint(api))

proc setSceneGraphBackendWithBackend*(_: type QQuickWindow, backend: string): void =

  fcQQuickWindow_setSceneGraphBackendWithBackend(struct_miqt_string(data: backend, len: csize_t(len(backend))))

proc sceneGraphBackend*(_: type QQuickWindow, ): string =

  let v_ms = fcQQuickWindow_sceneGraphBackend()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createRectangleNode*(self: QQuickWindow, ): gen_qsgrectanglenode.QSGRectangleNode =

  gen_qsgrectanglenode.QSGRectangleNode(h: fcQQuickWindow_createRectangleNode(self.h))

proc createImageNode*(self: QQuickWindow, ): gen_qsgimagenode.QSGImageNode =

  gen_qsgimagenode.QSGImageNode(h: fcQQuickWindow_createImageNode(self.h))

proc createNinePatchNode*(self: QQuickWindow, ): gen_qsgninepatchnode.QSGNinePatchNode =

  gen_qsgninepatchnode.QSGNinePatchNode(h: fcQQuickWindow_createNinePatchNode(self.h))

proc textRenderType*(_: type QQuickWindow, ): QQuickWindowTextRenderType =

  QQuickWindowTextRenderType(fcQQuickWindow_textRenderType())

proc setTextRenderType*(_: type QQuickWindow, renderType: QQuickWindowTextRenderType): void =

  fcQQuickWindow_setTextRenderType(cint(renderType))

proc frameSwapped*(self: QQuickWindow, ): void =

  fcQQuickWindow_frameSwapped(self.h)

proc miqt_exec_callback_QQuickWindow_frameSwapped(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onframeSwapped*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_frameSwapped(self.h, cast[int](addr tmp[]))
proc sceneGraphInitialized*(self: QQuickWindow, ): void =

  fcQQuickWindow_sceneGraphInitialized(self.h)

proc miqt_exec_callback_QQuickWindow_sceneGraphInitialized(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsceneGraphInitialized*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_sceneGraphInitialized(self.h, cast[int](addr tmp[]))
proc sceneGraphInvalidated*(self: QQuickWindow, ): void =

  fcQQuickWindow_sceneGraphInvalidated(self.h)

proc miqt_exec_callback_QQuickWindow_sceneGraphInvalidated(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsceneGraphInvalidated*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_sceneGraphInvalidated(self.h, cast[int](addr tmp[]))
proc beforeSynchronizing*(self: QQuickWindow, ): void =

  fcQQuickWindow_beforeSynchronizing(self.h)

proc miqt_exec_callback_QQuickWindow_beforeSynchronizing(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onbeforeSynchronizing*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_beforeSynchronizing(self.h, cast[int](addr tmp[]))
proc afterSynchronizing*(self: QQuickWindow, ): void =

  fcQQuickWindow_afterSynchronizing(self.h)

proc miqt_exec_callback_QQuickWindow_afterSynchronizing(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onafterSynchronizing*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_afterSynchronizing(self.h, cast[int](addr tmp[]))
proc beforeRendering*(self: QQuickWindow, ): void =

  fcQQuickWindow_beforeRendering(self.h)

proc miqt_exec_callback_QQuickWindow_beforeRendering(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onbeforeRendering*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_beforeRendering(self.h, cast[int](addr tmp[]))
proc afterRendering*(self: QQuickWindow, ): void =

  fcQQuickWindow_afterRendering(self.h)

proc miqt_exec_callback_QQuickWindow_afterRendering(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onafterRendering*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_afterRendering(self.h, cast[int](addr tmp[]))
proc afterAnimating*(self: QQuickWindow, ): void =

  fcQQuickWindow_afterAnimating(self.h)

proc miqt_exec_callback_QQuickWindow_afterAnimating(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onafterAnimating*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_afterAnimating(self.h, cast[int](addr tmp[]))
proc sceneGraphAboutToStop*(self: QQuickWindow, ): void =

  fcQQuickWindow_sceneGraphAboutToStop(self.h)

proc miqt_exec_callback_QQuickWindow_sceneGraphAboutToStop(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onsceneGraphAboutToStop*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_sceneGraphAboutToStop(self.h, cast[int](addr tmp[]))
proc colorChanged*(self: QQuickWindow, param1: gen_qcolor.QColor): void =

  fcQQuickWindow_colorChanged(self.h, param1.h)

proc miqt_exec_callback_QQuickWindow_colorChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qcolor.QColor)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: param1)


  nimfunc[](slotval1)

proc oncolorChanged*(self: QQuickWindow, slot: proc(param1: gen_qcolor.QColor)) =
  type Cb = proc(param1: gen_qcolor.QColor)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_colorChanged(self.h, cast[int](addr tmp[]))
proc activeFocusItemChanged*(self: QQuickWindow, ): void =

  fcQQuickWindow_activeFocusItemChanged(self.h)

proc miqt_exec_callback_QQuickWindow_activeFocusItemChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onactiveFocusItemChanged*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_activeFocusItemChanged(self.h, cast[int](addr tmp[]))
proc sceneGraphError*(self: QQuickWindow, error: QQuickWindowSceneGraphError, message: string): void =

  fcQQuickWindow_sceneGraphError(self.h, cint(error), struct_miqt_string(data: message, len: csize_t(len(message))))

proc miqt_exec_callback_QQuickWindow_sceneGraphError(slot: int, error: cint, message: struct_miqt_string) {.exportc.} =
  type Cb = proc(error: QQuickWindowSceneGraphError, message: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QQuickWindowSceneGraphError(error)

  let vmessage_ms = message
  let vmessagex_ret = string.fromBytes(toOpenArrayByte(vmessage_ms.data, 0, int(vmessage_ms.len)-1))
  c_free(vmessage_ms.data)
  let slotval2 = vmessagex_ret


  nimfunc[](slotval1, slotval2)

proc onsceneGraphError*(self: QQuickWindow, slot: proc(error: QQuickWindowSceneGraphError, message: string)) =
  type Cb = proc(error: QQuickWindowSceneGraphError, message: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_sceneGraphError(self.h, cast[int](addr tmp[]))
proc beforeRenderPassRecording*(self: QQuickWindow, ): void =

  fcQQuickWindow_beforeRenderPassRecording(self.h)

proc miqt_exec_callback_QQuickWindow_beforeRenderPassRecording(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onbeforeRenderPassRecording*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_beforeRenderPassRecording(self.h, cast[int](addr tmp[]))
proc afterRenderPassRecording*(self: QQuickWindow, ): void =

  fcQQuickWindow_afterRenderPassRecording(self.h)

proc miqt_exec_callback_QQuickWindow_afterRenderPassRecording(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onafterRenderPassRecording*(self: QQuickWindow, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWindow_connect_afterRenderPassRecording(self.h, cast[int](addr tmp[]))
proc update*(self: QQuickWindow, ): void =

  fcQQuickWindow_update(self.h)

proc releaseResources*(self: QQuickWindow, ): void =

  fcQQuickWindow_releaseResources(self.h)

proc tr2*(_: type QQuickWindow, s: cstring, c: cstring): string =

  let v_ms = fcQQuickWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickWindow, s: cstring, c: cstring): string =

  let v_ms = fcQQuickWindow_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickWindow, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickWindow_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createTextureFromId3*(self: QQuickWindow, id: cuint, size: gen_qsize.QSize, options: QQuickWindowCreateTextureOption): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQQuickWindow_createTextureFromId3(self.h, id, size.h, cint(options)))

proc createTextureFromNativeObject5*(self: QQuickWindow, typeVal: QQuickWindowNativeObjectType, nativeObjectPtr: pointer, nativeLayout: cint, size: gen_qsize.QSize, options: QQuickWindowCreateTextureOption): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQQuickWindow_createTextureFromNativeObject5(self.h, cint(typeVal), nativeObjectPtr, nativeLayout, size.h, cint(options)))

proc callVirtualBase_metacall(self: QQuickWindow, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQuickWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickWindowmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQuickWindow, slot: proc(super: QQuickWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_metacall(self: ptr cQQuickWindow, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickWindow_metacall ".} =
  type Cb = proc(super: QQuickWindowmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQuickWindow(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_focusObject(self: QQuickWindow, ): gen_qobject.QObject =


  gen_qobject.QObject(h: fQQuickWindow_virtualbase_focusObject(self.h))

type QQuickWindowfocusObjectBase* = proc(): gen_qobject.QObject
proc onfocusObject*(self: QQuickWindow, slot: proc(super: QQuickWindowfocusObjectBase): gen_qobject.QObject) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowfocusObjectBase): gen_qobject.QObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_focusObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_focusObject(self: ptr cQQuickWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWindow_focusObject ".} =
  type Cb = proc(super: QQuickWindowfocusObjectBase): gen_qobject.QObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_focusObject(QQuickWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_accessibleRoot(self: QQuickWindow, ): gen_qaccessible.QAccessibleInterface =


  gen_qaccessible.QAccessibleInterface(h: fQQuickWindow_virtualbase_accessibleRoot(self.h))

type QQuickWindowaccessibleRootBase* = proc(): gen_qaccessible.QAccessibleInterface
proc onaccessibleRoot*(self: QQuickWindow, slot: proc(super: QQuickWindowaccessibleRootBase): gen_qaccessible.QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowaccessibleRootBase): gen_qaccessible.QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_accessibleRoot(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_accessibleRoot(self: ptr cQQuickWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWindow_accessibleRoot ".} =
  type Cb = proc(super: QQuickWindowaccessibleRootBase): gen_qaccessible.QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleRoot(QQuickWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_exposeEvent(self: QQuickWindow, param1: gen_qevent.QExposeEvent): void =


  fQQuickWindow_virtualbase_exposeEvent(self.h, param1.h)

type QQuickWindowexposeEventBase* = proc(param1: gen_qevent.QExposeEvent): void
proc onexposeEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowexposeEventBase, param1: gen_qevent.QExposeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowexposeEventBase, param1: gen_qevent.QExposeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_exposeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_exposeEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_exposeEvent ".} =
  type Cb = proc(super: QQuickWindowexposeEventBase, param1: gen_qevent.QExposeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QExposeEvent): auto =
    callVirtualBase_exposeEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QExposeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QQuickWindow, param1: gen_qevent.QResizeEvent): void =


  fQQuickWindow_virtualbase_resizeEvent(self.h, param1.h)

type QQuickWindowresizeEventBase* = proc(param1: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowresizeEventBase, param1: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_resizeEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_resizeEvent ".} =
  type Cb = proc(super: QQuickWindowresizeEventBase, param1: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QResizeEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QQuickWindow, param1: gen_qevent.QShowEvent): void =


  fQQuickWindow_virtualbase_showEvent(self.h, param1.h)

type QQuickWindowshowEventBase* = proc(param1: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowshowEventBase, param1: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowshowEventBase, param1: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_showEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_showEvent ".} =
  type Cb = proc(super: QQuickWindowshowEventBase, param1: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QShowEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QQuickWindow, param1: gen_qevent.QHideEvent): void =


  fQQuickWindow_virtualbase_hideEvent(self.h, param1.h)

type QQuickWindowhideEventBase* = proc(param1: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowhideEventBase, param1: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowhideEventBase, param1: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_hideEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_hideEvent ".} =
  type Cb = proc(super: QQuickWindowhideEventBase, param1: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QHideEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QQuickWindow, param1: gen_qevent.QFocusEvent): void =


  fQQuickWindow_virtualbase_focusInEvent(self.h, param1.h)

type QQuickWindowfocusInEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowfocusInEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_focusInEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_focusInEvent ".} =
  type Cb = proc(super: QQuickWindowfocusInEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QQuickWindow, param1: gen_qevent.QFocusEvent): void =


  fQQuickWindow_virtualbase_focusOutEvent(self.h, param1.h)

type QQuickWindowfocusOutEventBase* = proc(param1: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowfocusOutEventBase, param1: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_focusOutEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_focusOutEvent ".} =
  type Cb = proc(super: QQuickWindowfocusOutEventBase, param1: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QFocusEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QQuickWindow, param1: gen_qcoreevent.QEvent): bool =


  fQQuickWindow_virtualbase_event(self.h, param1.h)

type QQuickWindoweventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQuickWindow, slot: proc(super: QQuickWindoweventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindoweventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_event(self: ptr cQQuickWindow, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQuickWindow_event ".} =
  type Cb = proc(super: QQuickWindoweventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQuickWindow(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_keyPressEvent(self: QQuickWindow, param1: gen_qevent.QKeyEvent): void =


  fQQuickWindow_virtualbase_keyPressEvent(self.h, param1.h)

type QQuickWindowkeyPressEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowkeyPressEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_keyPressEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_keyPressEvent ".} =
  type Cb = proc(super: QQuickWindowkeyPressEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QQuickWindow, param1: gen_qevent.QKeyEvent): void =


  fQQuickWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

type QQuickWindowkeyReleaseEventBase* = proc(param1: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_keyReleaseEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_keyReleaseEvent ".} =
  type Cb = proc(super: QQuickWindowkeyReleaseEventBase, param1: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QKeyEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QQuickWindow, param1: gen_qevent.QMouseEvent): void =


  fQQuickWindow_virtualbase_mousePressEvent(self.h, param1.h)

type QQuickWindowmousePressEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowmousePressEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_mousePressEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_mousePressEvent ".} =
  type Cb = proc(super: QQuickWindowmousePressEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QQuickWindow, param1: gen_qevent.QMouseEvent): void =


  fQQuickWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QQuickWindowmouseReleaseEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_mouseReleaseEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_mouseReleaseEvent ".} =
  type Cb = proc(super: QQuickWindowmouseReleaseEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QQuickWindow, param1: gen_qevent.QMouseEvent): void =


  fQQuickWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QQuickWindowmouseDoubleClickEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_mouseDoubleClickEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QQuickWindowmouseDoubleClickEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QQuickWindow, param1: gen_qevent.QMouseEvent): void =


  fQQuickWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

type QQuickWindowmouseMoveEventBase* = proc(param1: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_mouseMoveEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_mouseMoveEvent ".} =
  type Cb = proc(super: QQuickWindowmouseMoveEventBase, param1: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QMouseEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QQuickWindow, param1: gen_qevent.QWheelEvent): void =


  fQQuickWindow_virtualbase_wheelEvent(self.h, param1.h)

type QQuickWindowwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_wheelEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_wheelEvent ".} =
  type Cb = proc(super: QQuickWindowwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QQuickWindow, param1: gen_qevent.QTabletEvent): void =


  fQQuickWindow_virtualbase_tabletEvent(self.h, param1.h)

type QQuickWindowtabletEventBase* = proc(param1: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowtabletEventBase, param1: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowtabletEventBase, param1: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_tabletEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_tabletEvent ".} =
  type Cb = proc(super: QQuickWindowtabletEventBase, param1: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QTabletEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_surfaceType(self: QQuickWindow, ): gen_qsurface.QSurfaceSurfaceType =


  gen_qsurface.QSurfaceSurfaceType(fQQuickWindow_virtualbase_surfaceType(self.h))

type QQuickWindowsurfaceTypeBase* = proc(): gen_qsurface.QSurfaceSurfaceType
proc onsurfaceType*(self: QQuickWindow, slot: proc(super: QQuickWindowsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_surfaceType(self: ptr cQQuickWindow, slot: int): cint {.exportc: "miqt_exec_callback_QQuickWindow_surfaceType ".} =
  type Cb = proc(super: QQuickWindowsurfaceTypeBase): gen_qsurface.QSurfaceSurfaceType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_surfaceType(QQuickWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_format(self: QQuickWindow, ): gen_qsurfaceformat.QSurfaceFormat =


  gen_qsurfaceformat.QSurfaceFormat(h: fQQuickWindow_virtualbase_format(self.h))

type QQuickWindowformatBase* = proc(): gen_qsurfaceformat.QSurfaceFormat
proc onformat*(self: QQuickWindow, slot: proc(super: QQuickWindowformatBase): gen_qsurfaceformat.QSurfaceFormat) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowformatBase): gen_qsurfaceformat.QSurfaceFormat
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_format(self: ptr cQQuickWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWindow_format ".} =
  type Cb = proc(super: QQuickWindowformatBase): gen_qsurfaceformat.QSurfaceFormat
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_format(QQuickWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_size(self: QQuickWindow, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQQuickWindow_virtualbase_size(self.h))

type QQuickWindowsizeBase* = proc(): gen_qsize.QSize
proc onsize*(self: QQuickWindow, slot: proc(super: QQuickWindowsizeBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowsizeBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_size(self: ptr cQQuickWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWindow_size ".} =
  type Cb = proc(super: QQuickWindowsizeBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QQuickWindow(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_moveEvent(self: QQuickWindow, param1: gen_qevent.QMoveEvent): void =


  fQQuickWindow_virtualbase_moveEvent(self.h, param1.h)

type QQuickWindowmoveEventBase* = proc(param1: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowmoveEventBase, param1: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_moveEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_moveEvent ".} =
  type Cb = proc(super: QQuickWindowmoveEventBase, param1: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QMoveEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_touchEvent(self: QQuickWindow, param1: gen_qevent.QTouchEvent): void =


  fQQuickWindow_virtualbase_touchEvent(self.h, param1.h)

type QQuickWindowtouchEventBase* = proc(param1: gen_qevent.QTouchEvent): void
proc ontouchEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowtouchEventBase, param1: gen_qevent.QTouchEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowtouchEventBase, param1: gen_qevent.QTouchEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_touchEvent(self: ptr cQQuickWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_touchEvent ".} =
  type Cb = proc(super: QQuickWindowtouchEventBase, param1: gen_qevent.QTouchEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QTouchEvent): auto =
    callVirtualBase_touchEvent(QQuickWindow(h: self), param1)
  let slotval1 = gen_qevent.QTouchEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QQuickWindow, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQQuickWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QQuickWindownativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QQuickWindow, slot: proc(super: QQuickWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_nativeEvent(self: ptr cQQuickWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QQuickWindow_nativeEvent ".} =
  type Cb = proc(super: QQuickWindownativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QQuickWindow(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQuickWindow, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQuickWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickWindoweventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQuickWindow, slot: proc(super: QQuickWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_eventFilter(self: ptr cQQuickWindow, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickWindow_eventFilter ".} =
  type Cb = proc(super: QQuickWindoweventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQuickWindow(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQuickWindow, event: gen_qcoreevent.QTimerEvent): void =


  fQQuickWindow_virtualbase_timerEvent(self.h, event.h)

type QQuickWindowtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_timerEvent(self: ptr cQQuickWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_timerEvent ".} =
  type Cb = proc(super: QQuickWindowtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQuickWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQuickWindow, event: gen_qcoreevent.QChildEvent): void =


  fQQuickWindow_virtualbase_childEvent(self.h, event.h)

type QQuickWindowchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_childEvent(self: ptr cQQuickWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_childEvent ".} =
  type Cb = proc(super: QQuickWindowchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQuickWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQuickWindow, event: gen_qcoreevent.QEvent): void =


  fQQuickWindow_virtualbase_customEvent(self.h, event.h)

type QQuickWindowcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQuickWindow, slot: proc(super: QQuickWindowcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_customEvent(self: ptr cQQuickWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_customEvent ".} =
  type Cb = proc(super: QQuickWindowcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQuickWindow(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQuickWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickWindow_virtualbase_connectNotify(self.h, signal.h)

type QQuickWindowconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQuickWindow, slot: proc(super: QQuickWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_connectNotify(self: ptr cQQuickWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_connectNotify ".} =
  type Cb = proc(super: QQuickWindowconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQuickWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQuickWindow, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickWindowdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQuickWindow, slot: proc(super: QQuickWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWindow_disconnectNotify(self: ptr cQQuickWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickWindow_disconnectNotify ".} =
  type Cb = proc(super: QQuickWindowdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQuickWindow(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QQuickWindow) =
  fcQQuickWindow_delete(self.h)

func init*(T: type QQuickWindowGraphicsStateInfo, h: ptr cQQuickWindowGraphicsStateInfo): QQuickWindowGraphicsStateInfo =
  T(h: h)
proc delete*(self: QQuickWindowGraphicsStateInfo) =
  fcQQuickWindowGraphicsStateInfo_delete(self.h)
