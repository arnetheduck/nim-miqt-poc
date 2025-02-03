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
{.compile("gen_qvideowidget.cpp", cflags).}


import gen_qvideowidget_types
export gen_qvideowidget_types

import
  gen_qabstractvideosurface,
  gen_qcoreevent,
  gen_qevent,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractvideosurface,
  gen_qcoreevent,
  gen_qevent,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qsize,
  gen_qvariant,
  gen_qwidget

type cQVideoWidget*{.exportc: "QVideoWidget", incompleteStruct.} = object

proc fcQVideoWidget_new(parent: pointer): ptr cQVideoWidget {.importc: "QVideoWidget_new".}
proc fcQVideoWidget_new2(): ptr cQVideoWidget {.importc: "QVideoWidget_new2".}
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
proc fQVideoWidget_connect_fullScreenChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_fullScreenChanged".}
proc fcQVideoWidget_brightnessChanged(self: pointer, brightness: cint): void {.importc: "QVideoWidget_brightnessChanged".}
proc fQVideoWidget_connect_brightnessChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_brightnessChanged".}
proc fcQVideoWidget_contrastChanged(self: pointer, contrast: cint): void {.importc: "QVideoWidget_contrastChanged".}
proc fQVideoWidget_connect_contrastChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_contrastChanged".}
proc fcQVideoWidget_hueChanged(self: pointer, hue: cint): void {.importc: "QVideoWidget_hueChanged".}
proc fQVideoWidget_connect_hueChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_hueChanged".}
proc fcQVideoWidget_saturationChanged(self: pointer, saturation: cint): void {.importc: "QVideoWidget_saturationChanged".}
proc fQVideoWidget_connect_saturationChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_saturationChanged".}
proc fcQVideoWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidget_tr2".}
proc fcQVideoWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidget_tr3".}
proc fcQVideoWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidget_trUtf82".}
proc fcQVideoWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidget_trUtf83".}
proc fQVideoWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QVideoWidget_virtualbase_metacall".}
proc fcQVideoWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_metacall".}
proc fQVideoWidget_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_mediaObject".}
proc fcQVideoWidget_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mediaObject".}
proc fQVideoWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_sizeHint".}
proc fcQVideoWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_sizeHint".}
proc fQVideoWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVideoWidget_virtualbase_event".}
proc fcQVideoWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_event".}
proc fQVideoWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_showEvent".}
proc fcQVideoWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_showEvent".}
proc fQVideoWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_hideEvent".}
proc fcQVideoWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_hideEvent".}
proc fQVideoWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_resizeEvent".}
proc fcQVideoWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_resizeEvent".}
proc fQVideoWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_moveEvent".}
proc fcQVideoWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_moveEvent".}
proc fQVideoWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_paintEvent".}
proc fcQVideoWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_paintEvent".}
proc fQVideoWidget_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool{.importc: "QVideoWidget_virtualbase_setMediaObject".}
proc fcQVideoWidget_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_setMediaObject".}
proc fQVideoWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QVideoWidget_virtualbase_devType".}
proc fcQVideoWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_devType".}
proc fQVideoWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QVideoWidget_virtualbase_setVisible".}
proc fcQVideoWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_setVisible".}
proc fQVideoWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_minimumSizeHint".}
proc fcQVideoWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_minimumSizeHint".}
proc fQVideoWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QVideoWidget_virtualbase_heightForWidth".}
proc fcQVideoWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_heightForWidth".}
proc fQVideoWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QVideoWidget_virtualbase_hasHeightForWidth".}
proc fcQVideoWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_hasHeightForWidth".}
proc fQVideoWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_paintEngine".}
proc fcQVideoWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_paintEngine".}
proc fQVideoWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_mousePressEvent".}
proc fcQVideoWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mousePressEvent".}
proc fQVideoWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_mouseReleaseEvent".}
proc fcQVideoWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mouseReleaseEvent".}
proc fQVideoWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQVideoWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mouseDoubleClickEvent".}
proc fQVideoWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_mouseMoveEvent".}
proc fcQVideoWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mouseMoveEvent".}
proc fQVideoWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_wheelEvent".}
proc fcQVideoWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_wheelEvent".}
proc fQVideoWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_keyPressEvent".}
proc fcQVideoWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_keyPressEvent".}
proc fQVideoWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_keyReleaseEvent".}
proc fcQVideoWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_keyReleaseEvent".}
proc fQVideoWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_focusInEvent".}
proc fcQVideoWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_focusInEvent".}
proc fQVideoWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_focusOutEvent".}
proc fcQVideoWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_focusOutEvent".}
proc fQVideoWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_enterEvent".}
proc fcQVideoWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_enterEvent".}
proc fQVideoWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_leaveEvent".}
proc fcQVideoWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_leaveEvent".}
proc fQVideoWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_closeEvent".}
proc fcQVideoWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_closeEvent".}
proc fQVideoWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_contextMenuEvent".}
proc fcQVideoWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_contextMenuEvent".}
proc fQVideoWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_tabletEvent".}
proc fcQVideoWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_tabletEvent".}
proc fQVideoWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_actionEvent".}
proc fcQVideoWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_actionEvent".}
proc fQVideoWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_dragEnterEvent".}
proc fcQVideoWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_dragEnterEvent".}
proc fQVideoWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_dragMoveEvent".}
proc fcQVideoWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_dragMoveEvent".}
proc fQVideoWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_dragLeaveEvent".}
proc fcQVideoWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_dragLeaveEvent".}
proc fQVideoWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_dropEvent".}
proc fcQVideoWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_dropEvent".}
proc fQVideoWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QVideoWidget_virtualbase_nativeEvent".}
proc fcQVideoWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_nativeEvent".}
proc fQVideoWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QVideoWidget_virtualbase_changeEvent".}
proc fcQVideoWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_changeEvent".}
proc fQVideoWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QVideoWidget_virtualbase_metric".}
proc fcQVideoWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_metric".}
proc fQVideoWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QVideoWidget_virtualbase_initPainter".}
proc fcQVideoWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_initPainter".}
proc fQVideoWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QVideoWidget_virtualbase_redirected".}
proc fcQVideoWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_redirected".}
proc fQVideoWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_sharedPainter".}
proc fcQVideoWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_sharedPainter".}
proc fQVideoWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QVideoWidget_virtualbase_inputMethodEvent".}
proc fcQVideoWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_inputMethodEvent".}
proc fQVideoWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QVideoWidget_virtualbase_inputMethodQuery".}
proc fcQVideoWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_inputMethodQuery".}
proc fQVideoWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QVideoWidget_virtualbase_focusNextPrevChild".}
proc fcQVideoWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_focusNextPrevChild".}
proc fQVideoWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVideoWidget_virtualbase_eventFilter".}
proc fcQVideoWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_eventFilter".}
proc fQVideoWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_timerEvent".}
proc fcQVideoWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_timerEvent".}
proc fQVideoWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_childEvent".}
proc fcQVideoWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_childEvent".}
proc fQVideoWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_customEvent".}
proc fcQVideoWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_customEvent".}
proc fQVideoWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVideoWidget_virtualbase_connectNotify".}
proc fcQVideoWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_connectNotify".}
proc fQVideoWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVideoWidget_virtualbase_disconnectNotify".}
proc fcQVideoWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_disconnectNotify".}
proc fcQVideoWidget_delete(self: pointer) {.importc: "QVideoWidget_delete".}


func init*(T: type QVideoWidget, h: ptr cQVideoWidget): QVideoWidget =
  T(h: h)
proc create*(T: type QVideoWidget, parent: gen_qwidget.QWidget): QVideoWidget =

  QVideoWidget.init(fcQVideoWidget_new(parent.h))
proc create*(T: type QVideoWidget, ): QVideoWidget =

  QVideoWidget.init(fcQVideoWidget_new2())
proc metaObject*(self: QVideoWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQVideoWidget_metaObject(self.h))

proc metacast*(self: QVideoWidget, param1: cstring): pointer =

  fcQVideoWidget_metacast(self.h, param1)

proc metacall*(self: QVideoWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQVideoWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QVideoWidget, s: cstring): string =

  let v_ms = fcQVideoWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QVideoWidget, s: cstring): string =

  let v_ms = fcQVideoWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: QVideoWidget, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fcQVideoWidget_mediaObject(self.h))

proc videoSurface*(self: QVideoWidget, ): gen_qabstractvideosurface.QAbstractVideoSurface =

  gen_qabstractvideosurface.QAbstractVideoSurface(h: fcQVideoWidget_videoSurface(self.h))

proc aspectRatioMode*(self: QVideoWidget, ): gen_qnamespace.AspectRatioMode =

  gen_qnamespace.AspectRatioMode(fcQVideoWidget_aspectRatioMode(self.h))

proc brightness*(self: QVideoWidget, ): cint =

  fcQVideoWidget_brightness(self.h)

proc contrast*(self: QVideoWidget, ): cint =

  fcQVideoWidget_contrast(self.h)

proc hue*(self: QVideoWidget, ): cint =

  fcQVideoWidget_hue(self.h)

proc saturation*(self: QVideoWidget, ): cint =

  fcQVideoWidget_saturation(self.h)

proc sizeHint*(self: QVideoWidget, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQVideoWidget_sizeHint(self.h))

proc setFullScreen*(self: QVideoWidget, fullScreen: bool): void =

  fcQVideoWidget_setFullScreen(self.h, fullScreen)

proc setAspectRatioMode*(self: QVideoWidget, mode: gen_qnamespace.AspectRatioMode): void =

  fcQVideoWidget_setAspectRatioMode(self.h, cint(mode))

proc setBrightness*(self: QVideoWidget, brightness: cint): void =

  fcQVideoWidget_setBrightness(self.h, brightness)

proc setContrast*(self: QVideoWidget, contrast: cint): void =

  fcQVideoWidget_setContrast(self.h, contrast)

proc setHue*(self: QVideoWidget, hue: cint): void =

  fcQVideoWidget_setHue(self.h, hue)

proc setSaturation*(self: QVideoWidget, saturation: cint): void =

  fcQVideoWidget_setSaturation(self.h, saturation)

proc fullScreenChanged*(self: QVideoWidget, fullScreen: bool): void =

  fcQVideoWidget_fullScreenChanged(self.h, fullScreen)

proc miqt_exec_callback_QVideoWidget_fullScreenChanged(slot: int, fullScreen: bool) {.exportc.} =
  type Cb = proc(fullScreen: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = fullScreen


  nimfunc[](slotval1)

proc onfullScreenChanged*(self: QVideoWidget, slot: proc(fullScreen: bool)) =
  type Cb = proc(fullScreen: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWidget_connect_fullScreenChanged(self.h, cast[int](addr tmp[]))
proc brightnessChanged*(self: QVideoWidget, brightness: cint): void =

  fcQVideoWidget_brightnessChanged(self.h, brightness)

proc miqt_exec_callback_QVideoWidget_brightnessChanged(slot: int, brightness: cint) {.exportc.} =
  type Cb = proc(brightness: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = brightness


  nimfunc[](slotval1)

proc onbrightnessChanged*(self: QVideoWidget, slot: proc(brightness: cint)) =
  type Cb = proc(brightness: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWidget_connect_brightnessChanged(self.h, cast[int](addr tmp[]))
proc contrastChanged*(self: QVideoWidget, contrast: cint): void =

  fcQVideoWidget_contrastChanged(self.h, contrast)

proc miqt_exec_callback_QVideoWidget_contrastChanged(slot: int, contrast: cint) {.exportc.} =
  type Cb = proc(contrast: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = contrast


  nimfunc[](slotval1)

proc oncontrastChanged*(self: QVideoWidget, slot: proc(contrast: cint)) =
  type Cb = proc(contrast: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWidget_connect_contrastChanged(self.h, cast[int](addr tmp[]))
proc hueChanged*(self: QVideoWidget, hue: cint): void =

  fcQVideoWidget_hueChanged(self.h, hue)

proc miqt_exec_callback_QVideoWidget_hueChanged(slot: int, hue: cint) {.exportc.} =
  type Cb = proc(hue: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = hue


  nimfunc[](slotval1)

proc onhueChanged*(self: QVideoWidget, slot: proc(hue: cint)) =
  type Cb = proc(hue: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWidget_connect_hueChanged(self.h, cast[int](addr tmp[]))
proc saturationChanged*(self: QVideoWidget, saturation: cint): void =

  fcQVideoWidget_saturationChanged(self.h, saturation)

proc miqt_exec_callback_QVideoWidget_saturationChanged(slot: int, saturation: cint) {.exportc.} =
  type Cb = proc(saturation: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = saturation


  nimfunc[](slotval1)

proc onsaturationChanged*(self: QVideoWidget, slot: proc(saturation: cint)) =
  type Cb = proc(saturation: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWidget_connect_saturationChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QVideoWidget, s: cstring, c: cstring): string =

  let v_ms = fcQVideoWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QVideoWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QVideoWidget, s: cstring, c: cstring): string =

  let v_ms = fcQVideoWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QVideoWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QVideoWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQVideoWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QVideoWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QVideoWidget, slot: proc(super: QVideoWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_metacall(self: ptr cQVideoWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QVideoWidget_metacall ".} =
  type Cb = proc(super: QVideoWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QVideoWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_mediaObject(self: QVideoWidget, ): gen_qmediaobject.QMediaObject =


  gen_qmediaobject.QMediaObject(h: fQVideoWidget_virtualbase_mediaObject(self.h))

type QVideoWidgetmediaObjectBase* = proc(): gen_qmediaobject.QMediaObject
proc onmediaObject*(self: QVideoWidget, slot: proc(super: QVideoWidgetmediaObjectBase): gen_qmediaobject.QMediaObject) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetmediaObjectBase): gen_qmediaobject.QMediaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mediaObject(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_mediaObject ".} =
  type Cb = proc(super: QVideoWidgetmediaObjectBase): gen_qmediaobject.QMediaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mediaObject(QVideoWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QVideoWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQVideoWidget_virtualbase_sizeHint(self.h))

type QVideoWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QVideoWidget, slot: proc(super: QVideoWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_sizeHint(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_sizeHint ".} =
  type Cb = proc(super: QVideoWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QVideoWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QVideoWidget, event: gen_qcoreevent.QEvent): bool =


  fQVideoWidget_virtualbase_event(self.h, event.h)

type QVideoWidgeteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QVideoWidget, slot: proc(super: QVideoWidgeteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_event(self: ptr cQVideoWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoWidget_event ".} =
  type Cb = proc(super: QVideoWidgeteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QVideoWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_showEvent(self: QVideoWidget, event: gen_qevent.QShowEvent): void =


  fQVideoWidget_virtualbase_showEvent(self.h, event.h)

type QVideoWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_showEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_showEvent ".} =
  type Cb = proc(super: QVideoWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QVideoWidget, event: gen_qevent.QHideEvent): void =


  fQVideoWidget_virtualbase_hideEvent(self.h, event.h)

type QVideoWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_hideEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_hideEvent ".} =
  type Cb = proc(super: QVideoWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QVideoWidget, event: gen_qevent.QResizeEvent): void =


  fQVideoWidget_virtualbase_resizeEvent(self.h, event.h)

type QVideoWidgetresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_resizeEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_resizeEvent ".} =
  type Cb = proc(super: QVideoWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QVideoWidget, event: gen_qevent.QMoveEvent): void =


  fQVideoWidget_virtualbase_moveEvent(self.h, event.h)

type QVideoWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_moveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_moveEvent ".} =
  type Cb = proc(super: QVideoWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QVideoWidget, event: gen_qevent.QPaintEvent): void =


  fQVideoWidget_virtualbase_paintEvent(self.h, event.h)

type QVideoWidgetpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_paintEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_paintEvent ".} =
  type Cb = proc(super: QVideoWidgetpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setMediaObject(self: QVideoWidget, objectVal: gen_qmediaobject.QMediaObject): bool =


  fQVideoWidget_virtualbase_setMediaObject(self.h, objectVal.h)

type QVideoWidgetsetMediaObjectBase* = proc(objectVal: gen_qmediaobject.QMediaObject): bool
proc onsetMediaObject*(self: QVideoWidget, slot: proc(super: QVideoWidgetsetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetsetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_setMediaObject(self: ptr cQVideoWidget, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QVideoWidget_setMediaObject ".} =
  type Cb = proc(super: QVideoWidgetsetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qmediaobject.QMediaObject): auto =
    callVirtualBase_setMediaObject(QVideoWidget(h: self), objectVal)
  let slotval1 = gen_qmediaobject.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_devType(self: QVideoWidget, ): cint =


  fQVideoWidget_virtualbase_devType(self.h)

type QVideoWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QVideoWidget, slot: proc(super: QVideoWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_devType(self: ptr cQVideoWidget, slot: int): cint {.exportc: "miqt_exec_callback_QVideoWidget_devType ".} =
  type Cb = proc(super: QVideoWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QVideoWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QVideoWidget, visible: bool): void =


  fQVideoWidget_virtualbase_setVisible(self.h, visible)

type QVideoWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QVideoWidget, slot: proc(super: QVideoWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_setVisible(self: ptr cQVideoWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QVideoWidget_setVisible ".} =
  type Cb = proc(super: QVideoWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QVideoWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_minimumSizeHint(self: QVideoWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQVideoWidget_virtualbase_minimumSizeHint(self.h))

type QVideoWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QVideoWidget, slot: proc(super: QVideoWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_minimumSizeHint(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_minimumSizeHint ".} =
  type Cb = proc(super: QVideoWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QVideoWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_heightForWidth(self: QVideoWidget, param1: cint): cint =


  fQVideoWidget_virtualbase_heightForWidth(self.h, param1)

type QVideoWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QVideoWidget, slot: proc(super: QVideoWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_heightForWidth(self: ptr cQVideoWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QVideoWidget_heightForWidth ".} =
  type Cb = proc(super: QVideoWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QVideoWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QVideoWidget, ): bool =


  fQVideoWidget_virtualbase_hasHeightForWidth(self.h)

type QVideoWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QVideoWidget, slot: proc(super: QVideoWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_hasHeightForWidth(self: ptr cQVideoWidget, slot: int): bool {.exportc: "miqt_exec_callback_QVideoWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QVideoWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QVideoWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QVideoWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQVideoWidget_virtualbase_paintEngine(self.h))

type QVideoWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QVideoWidget, slot: proc(super: QVideoWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_paintEngine(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_paintEngine ".} =
  type Cb = proc(super: QVideoWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QVideoWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_mousePressEvent(self: QVideoWidget, event: gen_qevent.QMouseEvent): void =


  fQVideoWidget_virtualbase_mousePressEvent(self.h, event.h)

type QVideoWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mousePressEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_mousePressEvent ".} =
  type Cb = proc(super: QVideoWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QVideoWidget, event: gen_qevent.QMouseEvent): void =


  fQVideoWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QVideoWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mouseReleaseEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QVideoWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QVideoWidget, event: gen_qevent.QMouseEvent): void =


  fQVideoWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QVideoWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mouseDoubleClickEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QVideoWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QVideoWidget, event: gen_qevent.QMouseEvent): void =


  fQVideoWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QVideoWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mouseMoveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QVideoWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QVideoWidget, event: gen_qevent.QWheelEvent): void =


  fQVideoWidget_virtualbase_wheelEvent(self.h, event.h)

type QVideoWidgetwheelEventBase* = proc(event: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_wheelEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_wheelEvent ".} =
  type Cb = proc(super: QVideoWidgetwheelEventBase, event: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QWheelEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QVideoWidget, event: gen_qevent.QKeyEvent): void =


  fQVideoWidget_virtualbase_keyPressEvent(self.h, event.h)

type QVideoWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_keyPressEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_keyPressEvent ".} =
  type Cb = proc(super: QVideoWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyReleaseEvent(self: QVideoWidget, event: gen_qevent.QKeyEvent): void =


  fQVideoWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QVideoWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_keyReleaseEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QVideoWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QVideoWidget, event: gen_qevent.QFocusEvent): void =


  fQVideoWidget_virtualbase_focusInEvent(self.h, event.h)

type QVideoWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_focusInEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_focusInEvent ".} =
  type Cb = proc(super: QVideoWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QVideoWidget, event: gen_qevent.QFocusEvent): void =


  fQVideoWidget_virtualbase_focusOutEvent(self.h, event.h)

type QVideoWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_focusOutEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_focusOutEvent ".} =
  type Cb = proc(super: QVideoWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QVideoWidget, event: gen_qcoreevent.QEvent): void =


  fQVideoWidget_virtualbase_enterEvent(self.h, event.h)

type QVideoWidgetenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_enterEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_enterEvent ".} =
  type Cb = proc(super: QVideoWidgetenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QVideoWidget, event: gen_qcoreevent.QEvent): void =


  fQVideoWidget_virtualbase_leaveEvent(self.h, event.h)

type QVideoWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_leaveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_leaveEvent ".} =
  type Cb = proc(super: QVideoWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QVideoWidget, event: gen_qevent.QCloseEvent): void =


  fQVideoWidget_virtualbase_closeEvent(self.h, event.h)

type QVideoWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_closeEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_closeEvent ".} =
  type Cb = proc(super: QVideoWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QVideoWidget, event: gen_qevent.QContextMenuEvent): void =


  fQVideoWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QVideoWidgetcontextMenuEventBase* = proc(event: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_contextMenuEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_contextMenuEvent ".} =
  type Cb = proc(super: QVideoWidgetcontextMenuEventBase, event: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QContextMenuEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QVideoWidget, event: gen_qevent.QTabletEvent): void =


  fQVideoWidget_virtualbase_tabletEvent(self.h, event.h)

type QVideoWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_tabletEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_tabletEvent ".} =
  type Cb = proc(super: QVideoWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QVideoWidget, event: gen_qevent.QActionEvent): void =


  fQVideoWidget_virtualbase_actionEvent(self.h, event.h)

type QVideoWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_actionEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_actionEvent ".} =
  type Cb = proc(super: QVideoWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QVideoWidget, event: gen_qevent.QDragEnterEvent): void =


  fQVideoWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QVideoWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_dragEnterEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_dragEnterEvent ".} =
  type Cb = proc(super: QVideoWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QVideoWidget, event: gen_qevent.QDragMoveEvent): void =


  fQVideoWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QVideoWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_dragMoveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_dragMoveEvent ".} =
  type Cb = proc(super: QVideoWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QVideoWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQVideoWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QVideoWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_dragLeaveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QVideoWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QVideoWidget, event: gen_qevent.QDropEvent): void =


  fQVideoWidget_virtualbase_dropEvent(self.h, event.h)

type QVideoWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_dropEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_dropEvent ".} =
  type Cb = proc(super: QVideoWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QVideoWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQVideoWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QVideoWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_nativeEvent(self: ptr cQVideoWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QVideoWidget_nativeEvent ".} =
  type Cb = proc(super: QVideoWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QVideoWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_changeEvent(self: QVideoWidget, param1: gen_qcoreevent.QEvent): void =


  fQVideoWidget_virtualbase_changeEvent(self.h, param1.h)

type QVideoWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_changeEvent(self: ptr cQVideoWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_changeEvent ".} =
  type Cb = proc(super: QVideoWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QVideoWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_metric(self: QVideoWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQVideoWidget_virtualbase_metric(self.h, cint(param1))

type QVideoWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QVideoWidget, slot: proc(super: QVideoWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_metric(self: ptr cQVideoWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QVideoWidget_metric ".} =
  type Cb = proc(super: QVideoWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QVideoWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QVideoWidget, painter: gen_qpainter.QPainter): void =


  fQVideoWidget_virtualbase_initPainter(self.h, painter.h)

type QVideoWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QVideoWidget, slot: proc(super: QVideoWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_initPainter(self: ptr cQVideoWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_initPainter ".} =
  type Cb = proc(super: QVideoWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QVideoWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QVideoWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQVideoWidget_virtualbase_redirected(self.h, offset.h))

type QVideoWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QVideoWidget, slot: proc(super: QVideoWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_redirected(self: ptr cQVideoWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QVideoWidget_redirected ".} =
  type Cb = proc(super: QVideoWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QVideoWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QVideoWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQVideoWidget_virtualbase_sharedPainter(self.h))

type QVideoWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QVideoWidget, slot: proc(super: QVideoWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_sharedPainter(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_sharedPainter ".} =
  type Cb = proc(super: QVideoWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QVideoWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_inputMethodEvent(self: QVideoWidget, param1: gen_qevent.QInputMethodEvent): void =


  fQVideoWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QVideoWidgetinputMethodEventBase* = proc(param1: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_inputMethodEvent(self: ptr cQVideoWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_inputMethodEvent ".} =
  type Cb = proc(super: QVideoWidgetinputMethodEventBase, param1: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QVideoWidget(h: self), param1)
  let slotval1 = gen_qevent.QInputMethodEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QVideoWidget, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQVideoWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QVideoWidgetinputMethodQueryBase* = proc(param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QVideoWidget, slot: proc(super: QVideoWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_inputMethodQuery(self: ptr cQVideoWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QVideoWidget_inputMethodQuery ".} =
  type Cb = proc(super: QVideoWidgetinputMethodQueryBase, param1: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QVideoWidget(h: self), param1)
  let slotval1 = gen_qnamespace.InputMethodQuery(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QVideoWidget, next: bool): bool =


  fQVideoWidget_virtualbase_focusNextPrevChild(self.h, next)

type QVideoWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QVideoWidget, slot: proc(super: QVideoWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_focusNextPrevChild(self: ptr cQVideoWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QVideoWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QVideoWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QVideoWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QVideoWidget, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQVideoWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVideoWidgeteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QVideoWidget, slot: proc(super: QVideoWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_eventFilter(self: ptr cQVideoWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoWidget_eventFilter ".} =
  type Cb = proc(super: QVideoWidgeteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QVideoWidget(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QVideoWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQVideoWidget_virtualbase_timerEvent(self.h, event.h)

type QVideoWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_timerEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_timerEvent ".} =
  type Cb = proc(super: QVideoWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QVideoWidget, event: gen_qcoreevent.QChildEvent): void =


  fQVideoWidget_virtualbase_childEvent(self.h, event.h)

type QVideoWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_childEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_childEvent ".} =
  type Cb = proc(super: QVideoWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QVideoWidget, event: gen_qcoreevent.QEvent): void =


  fQVideoWidget_virtualbase_customEvent(self.h, event.h)

type QVideoWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QVideoWidget, slot: proc(super: QVideoWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_customEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_customEvent ".} =
  type Cb = proc(super: QVideoWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QVideoWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QVideoWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQVideoWidget_virtualbase_connectNotify(self.h, signal.h)

type QVideoWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QVideoWidget, slot: proc(super: QVideoWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_connectNotify(self: ptr cQVideoWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_connectNotify ".} =
  type Cb = proc(super: QVideoWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QVideoWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QVideoWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQVideoWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QVideoWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QVideoWidget, slot: proc(super: QVideoWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVideoWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_disconnectNotify(self: ptr cQVideoWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_disconnectNotify ".} =
  type Cb = proc(super: QVideoWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QVideoWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QVideoWidget) =
  fcQVideoWidget_delete(self.h)
