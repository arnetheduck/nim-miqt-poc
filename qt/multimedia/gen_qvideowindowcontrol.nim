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
{.compile("gen_qvideowindowcontrol.cpp", cflags).}


import gen_qvideowindowcontrol_types
export gen_qvideowindowcontrol_types

import
  gen_qmediacontrol,
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize
export
  gen_qmediacontrol,
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize

type cQVideoWindowControl*{.exportc: "QVideoWindowControl", incompleteStruct.} = object

proc fcQVideoWindowControl_metaObject(self: pointer, ): pointer {.importc: "QVideoWindowControl_metaObject".}
proc fcQVideoWindowControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWindowControl_metacast".}
proc fcQVideoWindowControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoWindowControl_metacall".}
proc fcQVideoWindowControl_tr(s: cstring): struct_miqt_string {.importc: "QVideoWindowControl_tr".}
proc fcQVideoWindowControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoWindowControl_trUtf8".}
proc fcQVideoWindowControl_winId(self: pointer, ): uint {.importc: "QVideoWindowControl_winId".}
proc fcQVideoWindowControl_setWinId(self: pointer, id: uint): void {.importc: "QVideoWindowControl_setWinId".}
proc fcQVideoWindowControl_displayRect(self: pointer, ): pointer {.importc: "QVideoWindowControl_displayRect".}
proc fcQVideoWindowControl_setDisplayRect(self: pointer, rect: pointer): void {.importc: "QVideoWindowControl_setDisplayRect".}
proc fcQVideoWindowControl_isFullScreen(self: pointer, ): bool {.importc: "QVideoWindowControl_isFullScreen".}
proc fcQVideoWindowControl_setFullScreen(self: pointer, fullScreen: bool): void {.importc: "QVideoWindowControl_setFullScreen".}
proc fcQVideoWindowControl_repaint(self: pointer, ): void {.importc: "QVideoWindowControl_repaint".}
proc fcQVideoWindowControl_nativeSize(self: pointer, ): pointer {.importc: "QVideoWindowControl_nativeSize".}
proc fcQVideoWindowControl_aspectRatioMode(self: pointer, ): cint {.importc: "QVideoWindowControl_aspectRatioMode".}
proc fcQVideoWindowControl_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QVideoWindowControl_setAspectRatioMode".}
proc fcQVideoWindowControl_brightness(self: pointer, ): cint {.importc: "QVideoWindowControl_brightness".}
proc fcQVideoWindowControl_setBrightness(self: pointer, brightness: cint): void {.importc: "QVideoWindowControl_setBrightness".}
proc fcQVideoWindowControl_contrast(self: pointer, ): cint {.importc: "QVideoWindowControl_contrast".}
proc fcQVideoWindowControl_setContrast(self: pointer, contrast: cint): void {.importc: "QVideoWindowControl_setContrast".}
proc fcQVideoWindowControl_hue(self: pointer, ): cint {.importc: "QVideoWindowControl_hue".}
proc fcQVideoWindowControl_setHue(self: pointer, hue: cint): void {.importc: "QVideoWindowControl_setHue".}
proc fcQVideoWindowControl_saturation(self: pointer, ): cint {.importc: "QVideoWindowControl_saturation".}
proc fcQVideoWindowControl_setSaturation(self: pointer, saturation: cint): void {.importc: "QVideoWindowControl_setSaturation".}
proc fcQVideoWindowControl_fullScreenChanged(self: pointer, fullScreen: bool): void {.importc: "QVideoWindowControl_fullScreenChanged".}
proc fQVideoWindowControl_connect_fullScreenChanged(self: pointer, slot: int) {.importc: "QVideoWindowControl_connect_fullScreenChanged".}
proc fcQVideoWindowControl_brightnessChanged(self: pointer, brightness: cint): void {.importc: "QVideoWindowControl_brightnessChanged".}
proc fQVideoWindowControl_connect_brightnessChanged(self: pointer, slot: int) {.importc: "QVideoWindowControl_connect_brightnessChanged".}
proc fcQVideoWindowControl_contrastChanged(self: pointer, contrast: cint): void {.importc: "QVideoWindowControl_contrastChanged".}
proc fQVideoWindowControl_connect_contrastChanged(self: pointer, slot: int) {.importc: "QVideoWindowControl_connect_contrastChanged".}
proc fcQVideoWindowControl_hueChanged(self: pointer, hue: cint): void {.importc: "QVideoWindowControl_hueChanged".}
proc fQVideoWindowControl_connect_hueChanged(self: pointer, slot: int) {.importc: "QVideoWindowControl_connect_hueChanged".}
proc fcQVideoWindowControl_saturationChanged(self: pointer, saturation: cint): void {.importc: "QVideoWindowControl_saturationChanged".}
proc fQVideoWindowControl_connect_saturationChanged(self: pointer, slot: int) {.importc: "QVideoWindowControl_connect_saturationChanged".}
proc fcQVideoWindowControl_nativeSizeChanged(self: pointer, ): void {.importc: "QVideoWindowControl_nativeSizeChanged".}
proc fQVideoWindowControl_connect_nativeSizeChanged(self: pointer, slot: int) {.importc: "QVideoWindowControl_connect_nativeSizeChanged".}
proc fcQVideoWindowControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWindowControl_tr2".}
proc fcQVideoWindowControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWindowControl_tr3".}
proc fcQVideoWindowControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWindowControl_trUtf82".}
proc fcQVideoWindowControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWindowControl_trUtf83".}
proc fcQVideoWindowControl_staticMetaObject(): pointer {.importc: "QVideoWindowControl_staticMetaObject".}
proc fcQVideoWindowControl_delete(self: pointer) {.importc: "QVideoWindowControl_delete".}


func init*(T: type QVideoWindowControl, h: ptr cQVideoWindowControl): QVideoWindowControl =
  T(h: h)
proc metaObject*(self: QVideoWindowControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQVideoWindowControl_metaObject(self.h))

proc metacast*(self: QVideoWindowControl, param1: cstring): pointer =

  fcQVideoWindowControl_metacast(self.h, param1)

proc metacall*(self: QVideoWindowControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQVideoWindowControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QVideoWindowControl, s: cstring): string =

  let v_ms = fcQVideoWindowControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QVideoWindowControl, s: cstring): string =

  let v_ms = fcQVideoWindowControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc winId*(self: QVideoWindowControl, ): uint =

  fcQVideoWindowControl_winId(self.h)

proc setWinId*(self: QVideoWindowControl, id: uint): void =

  fcQVideoWindowControl_setWinId(self.h, id)

proc displayRect*(self: QVideoWindowControl, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQVideoWindowControl_displayRect(self.h))

proc setDisplayRect*(self: QVideoWindowControl, rect: gen_qrect.QRect): void =

  fcQVideoWindowControl_setDisplayRect(self.h, rect.h)

proc isFullScreen*(self: QVideoWindowControl, ): bool =

  fcQVideoWindowControl_isFullScreen(self.h)

proc setFullScreen*(self: QVideoWindowControl, fullScreen: bool): void =

  fcQVideoWindowControl_setFullScreen(self.h, fullScreen)

proc repaint*(self: QVideoWindowControl, ): void =

  fcQVideoWindowControl_repaint(self.h)

proc nativeSize*(self: QVideoWindowControl, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQVideoWindowControl_nativeSize(self.h))

proc aspectRatioMode*(self: QVideoWindowControl, ): gen_qnamespace.AspectRatioMode =

  gen_qnamespace.AspectRatioMode(fcQVideoWindowControl_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: QVideoWindowControl, mode: gen_qnamespace.AspectRatioMode): void =

  fcQVideoWindowControl_setAspectRatioMode(self.h, cint(mode))

proc brightness*(self: QVideoWindowControl, ): cint =

  fcQVideoWindowControl_brightness(self.h)

proc setBrightness*(self: QVideoWindowControl, brightness: cint): void =

  fcQVideoWindowControl_setBrightness(self.h, brightness)

proc contrast*(self: QVideoWindowControl, ): cint =

  fcQVideoWindowControl_contrast(self.h)

proc setContrast*(self: QVideoWindowControl, contrast: cint): void =

  fcQVideoWindowControl_setContrast(self.h, contrast)

proc hue*(self: QVideoWindowControl, ): cint =

  fcQVideoWindowControl_hue(self.h)

proc setHue*(self: QVideoWindowControl, hue: cint): void =

  fcQVideoWindowControl_setHue(self.h, hue)

proc saturation*(self: QVideoWindowControl, ): cint =

  fcQVideoWindowControl_saturation(self.h)

proc setSaturation*(self: QVideoWindowControl, saturation: cint): void =

  fcQVideoWindowControl_setSaturation(self.h, saturation)

proc fullScreenChanged*(self: QVideoWindowControl, fullScreen: bool): void =

  fcQVideoWindowControl_fullScreenChanged(self.h, fullScreen)

proc miqt_exec_callback_QVideoWindowControl_fullScreenChanged(slot: int, fullScreen: bool) {.exportc.} =
  type Cb = proc(fullScreen: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = fullScreen


  nimfunc[](slotval1)

proc onfullScreenChanged*(self: QVideoWindowControl, slot: proc(fullScreen: bool)) =
  type Cb = proc(fullScreen: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWindowControl_connect_fullScreenChanged(self.h, cast[int](addr tmp[]))
proc brightnessChanged*(self: QVideoWindowControl, brightness: cint): void =

  fcQVideoWindowControl_brightnessChanged(self.h, brightness)

proc miqt_exec_callback_QVideoWindowControl_brightnessChanged(slot: int, brightness: cint) {.exportc.} =
  type Cb = proc(brightness: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = brightness


  nimfunc[](slotval1)

proc onbrightnessChanged*(self: QVideoWindowControl, slot: proc(brightness: cint)) =
  type Cb = proc(brightness: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWindowControl_connect_brightnessChanged(self.h, cast[int](addr tmp[]))
proc contrastChanged*(self: QVideoWindowControl, contrast: cint): void =

  fcQVideoWindowControl_contrastChanged(self.h, contrast)

proc miqt_exec_callback_QVideoWindowControl_contrastChanged(slot: int, contrast: cint) {.exportc.} =
  type Cb = proc(contrast: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = contrast


  nimfunc[](slotval1)

proc oncontrastChanged*(self: QVideoWindowControl, slot: proc(contrast: cint)) =
  type Cb = proc(contrast: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWindowControl_connect_contrastChanged(self.h, cast[int](addr tmp[]))
proc hueChanged*(self: QVideoWindowControl, hue: cint): void =

  fcQVideoWindowControl_hueChanged(self.h, hue)

proc miqt_exec_callback_QVideoWindowControl_hueChanged(slot: int, hue: cint) {.exportc.} =
  type Cb = proc(hue: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = hue


  nimfunc[](slotval1)

proc onhueChanged*(self: QVideoWindowControl, slot: proc(hue: cint)) =
  type Cb = proc(hue: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWindowControl_connect_hueChanged(self.h, cast[int](addr tmp[]))
proc saturationChanged*(self: QVideoWindowControl, saturation: cint): void =

  fcQVideoWindowControl_saturationChanged(self.h, saturation)

proc miqt_exec_callback_QVideoWindowControl_saturationChanged(slot: int, saturation: cint) {.exportc.} =
  type Cb = proc(saturation: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = saturation


  nimfunc[](slotval1)

proc onsaturationChanged*(self: QVideoWindowControl, slot: proc(saturation: cint)) =
  type Cb = proc(saturation: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWindowControl_connect_saturationChanged(self.h, cast[int](addr tmp[]))
proc nativeSizeChanged*(self: QVideoWindowControl, ): void =

  fcQVideoWindowControl_nativeSizeChanged(self.h)

proc miqt_exec_callback_QVideoWindowControl_nativeSizeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnativeSizeChanged*(self: QVideoWindowControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVideoWindowControl_connect_nativeSizeChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QVideoWindowControl, s: cstring, c: cstring): string =

  let v_ms = fcQVideoWindowControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QVideoWindowControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoWindowControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QVideoWindowControl, s: cstring, c: cstring): string =

  let v_ms = fcQVideoWindowControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QVideoWindowControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVideoWindowControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QVideoWindowControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQVideoWindowControl_staticMetaObject())
proc delete*(self: QVideoWindowControl) =
  fcQVideoWindowControl_delete(self.h)
