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

const cflags = gorge("pkg-config --cflags Qt5MultimediaWidgets")
{.compile("gen_qvideowidget.cpp", cflags).}


import gen_qvideowidget_types
export gen_qvideowidget_types

import
  gen_qabstractvideosurface_types,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qmediaobject_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qwidget
export
  gen_qabstractvideosurface_types,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qmediaobject_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qwidget

type cQVideoWidget*{.exportc: "QVideoWidget", incompleteStruct.} = object

proc fcQVideoWidget_metaObject(self: pointer, ): pointer {.importc: "QVideoWidget_metaObject".}
proc fcQVideoWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWidget_metacast".}
proc fcQVideoWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoWidget_metacall".}
proc fcQVideoWidget_tr(s: cstring): struct_miqt_string {.importc: "QVideoWidget_tr".}
proc fcQVideoWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoWidget_trUtf8".}
proc fcQVideoWidget_mediaObject(self: pointer, ): pointer {.importc: "QVideoWidget_mediaObject".}
proc fcQVideoWidget_videoSurface(self: pointer, ): pointer {.importc: "QVideoWidget_videoSurface".}
proc fcQVideoWidget_aspectRatioMode(self: pointer, ): cint {.importc: "QVideoWidget_aspectRatioMode".}
proc fcQVideoWidget_brightness(self: pointer, ): cint {.importc: "QVideoWidget_brightness".}
proc fcQVideoWidget_contrast(self: pointer, ): cint {.importc: "QVideoWidget_contrast".}
proc fcQVideoWidget_hue(self: pointer, ): cint {.importc: "QVideoWidget_hue".}
proc fcQVideoWidget_saturation(self: pointer, ): cint {.importc: "QVideoWidget_saturation".}
proc fcQVideoWidget_sizeHint(self: pointer, ): pointer {.importc: "QVideoWidget_sizeHint".}
proc fcQVideoWidget_setFullScreen(self: pointer, fullScreen: bool): void {.importc: "QVideoWidget_setFullScreen".}
proc fcQVideoWidget_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QVideoWidget_setAspectRatioMode".}
proc fcQVideoWidget_setBrightness(self: pointer, brightness: cint): void {.importc: "QVideoWidget_setBrightness".}
proc fcQVideoWidget_setContrast(self: pointer, contrast: cint): void {.importc: "QVideoWidget_setContrast".}
proc fcQVideoWidget_setHue(self: pointer, hue: cint): void {.importc: "QVideoWidget_setHue".}
proc fcQVideoWidget_setSaturation(self: pointer, saturation: cint): void {.importc: "QVideoWidget_setSaturation".}
proc fcQVideoWidget_fullScreenChanged(self: pointer, fullScreen: bool): void {.importc: "QVideoWidget_fullScreenChanged".}
proc fcQVideoWidget_connect_fullScreenChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_fullScreenChanged".}
proc fcQVideoWidget_brightnessChanged(self: pointer, brightness: cint): void {.importc: "QVideoWidget_brightnessChanged".}
proc fcQVideoWidget_connect_brightnessChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_brightnessChanged".}
proc fcQVideoWidget_contrastChanged(self: pointer, contrast: cint): void {.importc: "QVideoWidget_contrastChanged".}
proc fcQVideoWidget_connect_contrastChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_contrastChanged".}
proc fcQVideoWidget_hueChanged(self: pointer, hue: cint): void {.importc: "QVideoWidget_hueChanged".}
proc fcQVideoWidget_connect_hueChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_hueChanged".}
proc fcQVideoWidget_saturationChanged(self: pointer, saturation: cint): void {.importc: "QVideoWidget_saturationChanged".}
proc fcQVideoWidget_connect_saturationChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_saturationChanged".}
proc fcQVideoWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidget_tr2".}
proc fcQVideoWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidget_tr3".}
proc fcQVideoWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidget_trUtf82".}
proc fcQVideoWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidget_trUtf83".}
type cQVideoWidgetVTable = object
  destructor*: proc(vtbl: ptr cQVideoWidgetVTable, self: ptr cQVideoWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(vtbl, self: pointer, objectVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQVideoWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_metaObject".}
proc fcQVideoWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWidget_virtualbase_metacast".}
proc fcQVideoWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoWidget_virtualbase_metacall".}
proc fcQVideoWidget_virtualbase_mediaObject(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_mediaObject".}
proc fcQVideoWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_sizeHint".}
proc fcQVideoWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QVideoWidget_virtualbase_event".}
proc fcQVideoWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_showEvent".}
proc fcQVideoWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_hideEvent".}
proc fcQVideoWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_resizeEvent".}
proc fcQVideoWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_moveEvent".}
proc fcQVideoWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_paintEvent".}
proc fcQVideoWidget_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool {.importc: "QVideoWidget_virtualbase_setMediaObject".}
proc fcQVideoWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QVideoWidget_virtualbase_devType".}
proc fcQVideoWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QVideoWidget_virtualbase_setVisible".}
proc fcQVideoWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_minimumSizeHint".}
proc fcQVideoWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QVideoWidget_virtualbase_heightForWidth".}
proc fcQVideoWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QVideoWidget_virtualbase_hasHeightForWidth".}
proc fcQVideoWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_paintEngine".}
proc fcQVideoWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_mousePressEvent".}
proc fcQVideoWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_mouseReleaseEvent".}
proc fcQVideoWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQVideoWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_mouseMoveEvent".}
proc fcQVideoWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_wheelEvent".}
proc fcQVideoWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_keyPressEvent".}
proc fcQVideoWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_keyReleaseEvent".}
proc fcQVideoWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_focusInEvent".}
proc fcQVideoWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_focusOutEvent".}
proc fcQVideoWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_enterEvent".}
proc fcQVideoWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_leaveEvent".}
proc fcQVideoWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_closeEvent".}
proc fcQVideoWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_contextMenuEvent".}
proc fcQVideoWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_tabletEvent".}
proc fcQVideoWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_actionEvent".}
proc fcQVideoWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_dragEnterEvent".}
proc fcQVideoWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_dragMoveEvent".}
proc fcQVideoWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_dragLeaveEvent".}
proc fcQVideoWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_dropEvent".}
proc fcQVideoWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QVideoWidget_virtualbase_nativeEvent".}
proc fcQVideoWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QVideoWidget_virtualbase_changeEvent".}
proc fcQVideoWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QVideoWidget_virtualbase_metric".}
proc fcQVideoWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QVideoWidget_virtualbase_initPainter".}
proc fcQVideoWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QVideoWidget_virtualbase_redirected".}
proc fcQVideoWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QVideoWidget_virtualbase_sharedPainter".}
proc fcQVideoWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QVideoWidget_virtualbase_inputMethodEvent".}
proc fcQVideoWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QVideoWidget_virtualbase_inputMethodQuery".}
proc fcQVideoWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QVideoWidget_virtualbase_focusNextPrevChild".}
proc fcQVideoWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QVideoWidget_virtualbase_eventFilter".}
proc fcQVideoWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_timerEvent".}
proc fcQVideoWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_childEvent".}
proc fcQVideoWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QVideoWidget_virtualbase_customEvent".}
proc fcQVideoWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QVideoWidget_virtualbase_connectNotify".}
proc fcQVideoWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QVideoWidget_virtualbase_disconnectNotify".}
proc fcQVideoWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QVideoWidget_protectedbase_updateMicroFocus".}
proc fcQVideoWidget_protectedbase_create(self: pointer, ): void {.importc: "QVideoWidget_protectedbase_create".}
proc fcQVideoWidget_protectedbase_destroy(self: pointer, ): void {.importc: "QVideoWidget_protectedbase_destroy".}
proc fcQVideoWidget_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QVideoWidget_protectedbase_focusNextChild".}
proc fcQVideoWidget_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QVideoWidget_protectedbase_focusPreviousChild".}
proc fcQVideoWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QVideoWidget_protectedbase_sender".}
proc fcQVideoWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QVideoWidget_protectedbase_senderSignalIndex".}
proc fcQVideoWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoWidget_protectedbase_receivers".}
proc fcQVideoWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoWidget_protectedbase_isSignalConnected".}
proc fcQVideoWidget_new(vtbl: pointer, parent: pointer): ptr cQVideoWidget {.importc: "QVideoWidget_new".}
proc fcQVideoWidget_new2(vtbl: pointer, ): ptr cQVideoWidget {.importc: "QVideoWidget_new2".}
proc fcQVideoWidget_staticMetaObject(): pointer {.importc: "QVideoWidget_staticMetaObject".}
proc fcQVideoWidget_delete(self: pointer) {.importc: "QVideoWidget_delete".}

proc metaObject*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_metaObject(self.h))

proc metacast*(self: gen_qvideowidget_types.QVideoWidget, param1: cstring): pointer =
  fcQVideoWidget_metacast(self.h, param1)

proc metacall*(self: gen_qvideowidget_types.QVideoWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring): string =
  let v_ms = fcQVideoWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring): string =
  let v_ms = fcQVideoWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQVideoWidget_mediaObject(self.h))

proc videoSurface*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qabstractvideosurface_types.QAbstractVideoSurface =
  gen_qabstractvideosurface_types.QAbstractVideoSurface(h: fcQVideoWidget_videoSurface(self.h))

proc aspectRatioMode*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  cint(fcQVideoWidget_aspectRatioMode(self.h))

proc brightness*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_brightness(self.h)

proc contrast*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_contrast(self.h)

proc hue*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_hue(self.h)

proc saturation*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_saturation(self.h)

proc sizeHint*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_sizeHint(self.h))

proc setFullScreen*(self: gen_qvideowidget_types.QVideoWidget, fullScreen: bool): void =
  fcQVideoWidget_setFullScreen(self.h, fullScreen)

proc setAspectRatioMode*(self: gen_qvideowidget_types.QVideoWidget, mode: cint): void =
  fcQVideoWidget_setAspectRatioMode(self.h, cint(mode))

proc setBrightness*(self: gen_qvideowidget_types.QVideoWidget, brightness: cint): void =
  fcQVideoWidget_setBrightness(self.h, brightness)

proc setContrast*(self: gen_qvideowidget_types.QVideoWidget, contrast: cint): void =
  fcQVideoWidget_setContrast(self.h, contrast)

proc setHue*(self: gen_qvideowidget_types.QVideoWidget, hue: cint): void =
  fcQVideoWidget_setHue(self.h, hue)

proc setSaturation*(self: gen_qvideowidget_types.QVideoWidget, saturation: cint): void =
  fcQVideoWidget_setSaturation(self.h, saturation)

proc fullScreenChanged*(self: gen_qvideowidget_types.QVideoWidget, fullScreen: bool): void =
  fcQVideoWidget_fullScreenChanged(self.h, fullScreen)

type QVideoWidgetfullScreenChangedSlot* = proc(fullScreen: bool)
proc miqt_exec_callback_cQVideoWidget_fullScreenChanged(slot: int, fullScreen: bool) {.exportc: "miqt_exec_callback_QVideoWidget_fullScreenChanged".} =
  let nimfunc = cast[ptr QVideoWidgetfullScreenChangedSlot](cast[pointer](slot))
  let slotval1 = fullScreen

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoWidget_fullScreenChanged_release(slot: int) {.exportc: "miqt_exec_callback_QVideoWidget_fullScreenChanged_release".} =
  let nimfunc = cast[ref QVideoWidgetfullScreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfullScreenChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetfullScreenChangedSlot) =
  var tmp = new QVideoWidgetfullScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_fullScreenChanged(self.h, cast[int](addr tmp[]))

proc brightnessChanged*(self: gen_qvideowidget_types.QVideoWidget, brightness: cint): void =
  fcQVideoWidget_brightnessChanged(self.h, brightness)

type QVideoWidgetbrightnessChangedSlot* = proc(brightness: cint)
proc miqt_exec_callback_cQVideoWidget_brightnessChanged(slot: int, brightness: cint) {.exportc: "miqt_exec_callback_QVideoWidget_brightnessChanged".} =
  let nimfunc = cast[ptr QVideoWidgetbrightnessChangedSlot](cast[pointer](slot))
  let slotval1 = brightness

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoWidget_brightnessChanged_release(slot: int) {.exportc: "miqt_exec_callback_QVideoWidget_brightnessChanged_release".} =
  let nimfunc = cast[ref QVideoWidgetbrightnessChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbrightnessChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetbrightnessChangedSlot) =
  var tmp = new QVideoWidgetbrightnessChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_brightnessChanged(self.h, cast[int](addr tmp[]))

proc contrastChanged*(self: gen_qvideowidget_types.QVideoWidget, contrast: cint): void =
  fcQVideoWidget_contrastChanged(self.h, contrast)

type QVideoWidgetcontrastChangedSlot* = proc(contrast: cint)
proc miqt_exec_callback_cQVideoWidget_contrastChanged(slot: int, contrast: cint) {.exportc: "miqt_exec_callback_QVideoWidget_contrastChanged".} =
  let nimfunc = cast[ptr QVideoWidgetcontrastChangedSlot](cast[pointer](slot))
  let slotval1 = contrast

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoWidget_contrastChanged_release(slot: int) {.exportc: "miqt_exec_callback_QVideoWidget_contrastChanged_release".} =
  let nimfunc = cast[ref QVideoWidgetcontrastChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontrastChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetcontrastChangedSlot) =
  var tmp = new QVideoWidgetcontrastChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_contrastChanged(self.h, cast[int](addr tmp[]))

proc hueChanged*(self: gen_qvideowidget_types.QVideoWidget, hue: cint): void =
  fcQVideoWidget_hueChanged(self.h, hue)

type QVideoWidgethueChangedSlot* = proc(hue: cint)
proc miqt_exec_callback_cQVideoWidget_hueChanged(slot: int, hue: cint) {.exportc: "miqt_exec_callback_QVideoWidget_hueChanged".} =
  let nimfunc = cast[ptr QVideoWidgethueChangedSlot](cast[pointer](slot))
  let slotval1 = hue

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoWidget_hueChanged_release(slot: int) {.exportc: "miqt_exec_callback_QVideoWidget_hueChanged_release".} =
  let nimfunc = cast[ref QVideoWidgethueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhueChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgethueChangedSlot) =
  var tmp = new QVideoWidgethueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_hueChanged(self.h, cast[int](addr tmp[]))

proc saturationChanged*(self: gen_qvideowidget_types.QVideoWidget, saturation: cint): void =
  fcQVideoWidget_saturationChanged(self.h, saturation)

type QVideoWidgetsaturationChangedSlot* = proc(saturation: cint)
proc miqt_exec_callback_cQVideoWidget_saturationChanged(slot: int, saturation: cint) {.exportc: "miqt_exec_callback_QVideoWidget_saturationChanged".} =
  let nimfunc = cast[ptr QVideoWidgetsaturationChangedSlot](cast[pointer](slot))
  let slotval1 = saturation

  nimfunc[](slotval1)

proc miqt_exec_callback_cQVideoWidget_saturationChanged_release(slot: int) {.exportc: "miqt_exec_callback_QVideoWidget_saturationChanged_release".} =
  let nimfunc = cast[ref QVideoWidgetsaturationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsaturationChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetsaturationChangedSlot) =
  var tmp = new QVideoWidgetsaturationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_saturationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QVideoWidgetmetaObjectProc* = proc(self: QVideoWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QVideoWidgetmetacastProc* = proc(self: QVideoWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QVideoWidgetmetacallProc* = proc(self: QVideoWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QVideoWidgetmediaObjectProc* = proc(self: QVideoWidget): gen_qmediaobject_types.QMediaObject {.raises: [], gcsafe.}
type QVideoWidgetsizeHintProc* = proc(self: QVideoWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QVideoWidgeteventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoWidgetshowEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QVideoWidgethideEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QVideoWidgetresizeEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmoveEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QVideoWidgetpaintEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QVideoWidgetsetMediaObjectProc* = proc(self: QVideoWidget, objectVal: gen_qmediaobject_types.QMediaObject): bool {.raises: [], gcsafe.}
type QVideoWidgetdevTypeProc* = proc(self: QVideoWidget): cint {.raises: [], gcsafe.}
type QVideoWidgetsetVisibleProc* = proc(self: QVideoWidget, visible: bool): void {.raises: [], gcsafe.}
type QVideoWidgetminimumSizeHintProc* = proc(self: QVideoWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QVideoWidgetheightForWidthProc* = proc(self: QVideoWidget, param1: cint): cint {.raises: [], gcsafe.}
type QVideoWidgethasHeightForWidthProc* = proc(self: QVideoWidget): bool {.raises: [], gcsafe.}
type QVideoWidgetpaintEngineProc* = proc(self: QVideoWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QVideoWidgetmousePressEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmouseReleaseEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmouseDoubleClickEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmouseMoveEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetwheelEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QVideoWidgetkeyPressEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QVideoWidgetkeyReleaseEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QVideoWidgetfocusInEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QVideoWidgetfocusOutEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QVideoWidgetenterEventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoWidgetleaveEventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoWidgetcloseEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QVideoWidgetcontextMenuEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QVideoWidgettabletEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QVideoWidgetactionEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QVideoWidgetdragEnterEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QVideoWidgetdragMoveEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QVideoWidgetdragLeaveEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QVideoWidgetdropEventProc* = proc(self: QVideoWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QVideoWidgetnativeEventProc* = proc(self: QVideoWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QVideoWidgetchangeEventProc* = proc(self: QVideoWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoWidgetmetricProc* = proc(self: QVideoWidget, param1: cint): cint {.raises: [], gcsafe.}
type QVideoWidgetinitPainterProc* = proc(self: QVideoWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QVideoWidgetredirectedProc* = proc(self: QVideoWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QVideoWidgetsharedPainterProc* = proc(self: QVideoWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QVideoWidgetinputMethodEventProc* = proc(self: QVideoWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QVideoWidgetinputMethodQueryProc* = proc(self: QVideoWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QVideoWidgetfocusNextPrevChildProc* = proc(self: QVideoWidget, next: bool): bool {.raises: [], gcsafe.}
type QVideoWidgeteventFilterProc* = proc(self: QVideoWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QVideoWidgettimerEventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QVideoWidgetchildEventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QVideoWidgetcustomEventProc* = proc(self: QVideoWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QVideoWidgetconnectNotifyProc* = proc(self: QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoWidgetdisconnectNotifyProc* = proc(self: QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QVideoWidgetVTable* = object
  vtbl: cQVideoWidgetVTable
  metaObject*: QVideoWidgetmetaObjectProc
  metacast*: QVideoWidgetmetacastProc
  metacall*: QVideoWidgetmetacallProc
  mediaObject*: QVideoWidgetmediaObjectProc
  sizeHint*: QVideoWidgetsizeHintProc
  event*: QVideoWidgeteventProc
  showEvent*: QVideoWidgetshowEventProc
  hideEvent*: QVideoWidgethideEventProc
  resizeEvent*: QVideoWidgetresizeEventProc
  moveEvent*: QVideoWidgetmoveEventProc
  paintEvent*: QVideoWidgetpaintEventProc
  setMediaObject*: QVideoWidgetsetMediaObjectProc
  devType*: QVideoWidgetdevTypeProc
  setVisible*: QVideoWidgetsetVisibleProc
  minimumSizeHint*: QVideoWidgetminimumSizeHintProc
  heightForWidth*: QVideoWidgetheightForWidthProc
  hasHeightForWidth*: QVideoWidgethasHeightForWidthProc
  paintEngine*: QVideoWidgetpaintEngineProc
  mousePressEvent*: QVideoWidgetmousePressEventProc
  mouseReleaseEvent*: QVideoWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QVideoWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QVideoWidgetmouseMoveEventProc
  wheelEvent*: QVideoWidgetwheelEventProc
  keyPressEvent*: QVideoWidgetkeyPressEventProc
  keyReleaseEvent*: QVideoWidgetkeyReleaseEventProc
  focusInEvent*: QVideoWidgetfocusInEventProc
  focusOutEvent*: QVideoWidgetfocusOutEventProc
  enterEvent*: QVideoWidgetenterEventProc
  leaveEvent*: QVideoWidgetleaveEventProc
  closeEvent*: QVideoWidgetcloseEventProc
  contextMenuEvent*: QVideoWidgetcontextMenuEventProc
  tabletEvent*: QVideoWidgettabletEventProc
  actionEvent*: QVideoWidgetactionEventProc
  dragEnterEvent*: QVideoWidgetdragEnterEventProc
  dragMoveEvent*: QVideoWidgetdragMoveEventProc
  dragLeaveEvent*: QVideoWidgetdragLeaveEventProc
  dropEvent*: QVideoWidgetdropEventProc
  nativeEvent*: QVideoWidgetnativeEventProc
  changeEvent*: QVideoWidgetchangeEventProc
  metric*: QVideoWidgetmetricProc
  initPainter*: QVideoWidgetinitPainterProc
  redirected*: QVideoWidgetredirectedProc
  sharedPainter*: QVideoWidgetsharedPainterProc
  inputMethodEvent*: QVideoWidgetinputMethodEventProc
  inputMethodQuery*: QVideoWidgetinputMethodQueryProc
  focusNextPrevChild*: QVideoWidgetfocusNextPrevChildProc
  eventFilter*: QVideoWidgeteventFilterProc
  timerEvent*: QVideoWidgettimerEventProc
  childEvent*: QVideoWidgetchildEventProc
  customEvent*: QVideoWidgetcustomEventProc
  connectNotify*: QVideoWidgetconnectNotifyProc
  disconnectNotify*: QVideoWidgetdisconnectNotifyProc
proc QVideoWidgetmetaObject*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQVideoWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QVideoWidgetmetacast*(self: gen_qvideowidget_types.QVideoWidget, param1: cstring): pointer =
  fcQVideoWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQVideoWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QVideoWidgetmetacall*(self: gen_qvideowidget_types.QVideoWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQVideoWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoWidgetmediaObject*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQVideoWidget_virtualbase_mediaObject(self.h))

proc miqt_exec_callback_cQVideoWidget_mediaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.h

proc QVideoWidgetsizeHint*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQVideoWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QVideoWidgetevent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoWidget_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QVideoWidgetshowEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QShowEvent): void =
  fcQVideoWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QVideoWidgethideEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QHideEvent): void =
  fcQVideoWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QVideoWidgetresizeEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQVideoWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QVideoWidgetmoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQVideoWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QVideoWidgetpaintEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQVideoWidget_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QVideoWidgetsetMediaObject*(self: gen_qvideowidget_types.QVideoWidget, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fcQVideoWidget_virtualbase_setMediaObject(self.h, objectVal.h)

proc miqt_exec_callback_cQVideoWidget_setMediaObject(vtbl: pointer, self: pointer, objectVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal)
  let virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc QVideoWidgetdevType*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQVideoWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QVideoWidgetsetVisible*(self: gen_qvideowidget_types.QVideoWidget, visible: bool): void =
  fcQVideoWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQVideoWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QVideoWidgetminimumSizeHint*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQVideoWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QVideoWidgetheightForWidth*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): cint =
  fcQVideoWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQVideoWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = param1
  let virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QVideoWidgethasHeightForWidth*(self: gen_qvideowidget_types.QVideoWidget, ): bool =
  fcQVideoWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQVideoWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QVideoWidgetpaintEngine*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQVideoWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQVideoWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QVideoWidgetmousePressEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QVideoWidgetmouseReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QVideoWidgetmouseDoubleClickEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QVideoWidgetmouseMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQVideoWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QVideoWidgetwheelEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQVideoWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QVideoWidgetkeyPressEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQVideoWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QVideoWidgetkeyReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQVideoWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QVideoWidgetfocusInEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQVideoWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QVideoWidgetfocusOutEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQVideoWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QVideoWidgetenterEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QVideoWidgetleaveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QVideoWidgetcloseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQVideoWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QVideoWidgetcontextMenuEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQVideoWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QVideoWidgettabletEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQVideoWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QVideoWidgetactionEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QActionEvent): void =
  fcQVideoWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QVideoWidgetdragEnterEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQVideoWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QVideoWidgetdragMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQVideoWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QVideoWidgetdragLeaveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQVideoWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QVideoWidgetdropEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDropEvent): void =
  fcQVideoWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QVideoWidgetnativeEvent*(self: gen_qvideowidget_types.QVideoWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQVideoWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQVideoWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  let virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QVideoWidgetchangeEvent*(self: gen_qvideowidget_types.QVideoWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQVideoWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QVideoWidgetmetric*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): cint =
  fcQVideoWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQVideoWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = cint(param1)
  let virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QVideoWidgetinitPainter*(self: gen_qvideowidget_types.QVideoWidget, painter: gen_qpainter_types.QPainter): void =
  fcQVideoWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQVideoWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QVideoWidgetredirected*(self: gen_qvideowidget_types.QVideoWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQVideoWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQVideoWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  let virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QVideoWidgetsharedPainter*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQVideoWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQVideoWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QVideoWidgetinputMethodEvent*(self: gen_qvideowidget_types.QVideoWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQVideoWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQVideoWidget_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QVideoWidgetinputMethodQuery*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQVideoWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQVideoWidget_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = cint(param1)
  let virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QVideoWidgetfocusNextPrevChild*(self: gen_qvideowidget_types.QVideoWidget, next: bool): bool =
  fcQVideoWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQVideoWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = next
  let virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QVideoWidgeteventFilter*(self: gen_qvideowidget_types.QVideoWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQVideoWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQVideoWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QVideoWidgettimerEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQVideoWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QVideoWidgetchildEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQVideoWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QVideoWidgetcustomEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQVideoWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQVideoWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QVideoWidgetconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVideoWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QVideoWidgetdisconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQVideoWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQVideoWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QVideoWidgetVTable](vtbl)
  let self = QVideoWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qvideowidget_types.QVideoWidget, ): void =
  fcQVideoWidget_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qvideowidget_types.QVideoWidget, ): void =
  fcQVideoWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qvideowidget_types.QVideoWidget, ): void =
  fcQVideoWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qvideowidget_types.QVideoWidget, ): bool =
  fcQVideoWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qvideowidget_types.QVideoWidget, ): bool =
  fcQVideoWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoWidget_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideowidget_types.QVideoWidget, signal: cstring): cint =
  fcQVideoWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qvideowidget_types.QVideoWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QVideoWidgetVTable = nil): gen_qvideowidget_types.QVideoWidget =
  let vtbl = if vtbl == nil: new QVideoWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVideoWidgetVTable, _: ptr cQVideoWidget) {.cdecl.} =
    let vtbl = cast[ref QVideoWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVideoWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVideoWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVideoWidget_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQVideoWidget_mediaObject
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQVideoWidget_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVideoWidget_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQVideoWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQVideoWidget_hideEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQVideoWidget_resizeEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQVideoWidget_moveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQVideoWidget_paintEvent
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQVideoWidget_setMediaObject
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQVideoWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQVideoWidget_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQVideoWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQVideoWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQVideoWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQVideoWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQVideoWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQVideoWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQVideoWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQVideoWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQVideoWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQVideoWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQVideoWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQVideoWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQVideoWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQVideoWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQVideoWidget_leaveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQVideoWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQVideoWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQVideoWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQVideoWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQVideoWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQVideoWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQVideoWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQVideoWidget_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQVideoWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQVideoWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQVideoWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQVideoWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQVideoWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQVideoWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQVideoWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQVideoWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQVideoWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVideoWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVideoWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVideoWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVideoWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVideoWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVideoWidget_disconnectNotify
  gen_qvideowidget_types.QVideoWidget(h: fcQVideoWidget_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qvideowidget_types.QVideoWidget,
    vtbl: ref QVideoWidgetVTable = nil): gen_qvideowidget_types.QVideoWidget =
  let vtbl = if vtbl == nil: new QVideoWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQVideoWidgetVTable, _: ptr cQVideoWidget) {.cdecl.} =
    let vtbl = cast[ref QVideoWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQVideoWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQVideoWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQVideoWidget_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQVideoWidget_mediaObject
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQVideoWidget_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQVideoWidget_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQVideoWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQVideoWidget_hideEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQVideoWidget_resizeEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQVideoWidget_moveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQVideoWidget_paintEvent
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQVideoWidget_setMediaObject
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQVideoWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQVideoWidget_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQVideoWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQVideoWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQVideoWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQVideoWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQVideoWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQVideoWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQVideoWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQVideoWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQVideoWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQVideoWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQVideoWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQVideoWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQVideoWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQVideoWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQVideoWidget_leaveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQVideoWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQVideoWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQVideoWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQVideoWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQVideoWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQVideoWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQVideoWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQVideoWidget_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQVideoWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQVideoWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQVideoWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQVideoWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQVideoWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQVideoWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQVideoWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQVideoWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQVideoWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQVideoWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQVideoWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQVideoWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQVideoWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQVideoWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQVideoWidget_disconnectNotify
  gen_qvideowidget_types.QVideoWidget(h: fcQVideoWidget_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qvideowidget_types.QVideoWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_staticMetaObject())
proc delete*(self: gen_qvideowidget_types.QVideoWidget) =
  fcQVideoWidget_delete(self.h)
