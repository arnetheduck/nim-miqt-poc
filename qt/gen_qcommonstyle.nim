import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qcommonstyle.cpp", cflags).}


import gen_qcommonstyle_types
export gen_qcommonstyle_types

import
  gen_qapplication,
  gen_qcoreevent,
  gen_qfontmetrics,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpalette,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy,
  gen_qstyle,
  gen_qstyleoption,
  gen_qwidget
export
  gen_qapplication,
  gen_qcoreevent,
  gen_qfontmetrics,
  gen_qicon,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpalette,
  gen_qpixmap,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qsizepolicy,
  gen_qstyle,
  gen_qstyleoption,
  gen_qwidget

type cQCommonStyle*{.exportc: "QCommonStyle", incompleteStruct.} = object

proc fcQCommonStyle_new(): ptr cQCommonStyle {.importc: "QCommonStyle_new".}
proc fcQCommonStyle_metaObject(self: pointer, ): pointer {.importc: "QCommonStyle_metaObject".}
proc fcQCommonStyle_metacast(self: pointer, param1: cstring): pointer {.importc: "QCommonStyle_metacast".}
proc fcQCommonStyle_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCommonStyle_metacall".}
proc fcQCommonStyle_tr(s: cstring): struct_miqt_string {.importc: "QCommonStyle_tr".}
proc fcQCommonStyle_trUtf8(s: cstring): struct_miqt_string {.importc: "QCommonStyle_trUtf8".}
proc fcQCommonStyle_drawPrimitive(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QCommonStyle_drawPrimitive".}
proc fcQCommonStyle_drawControl(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QCommonStyle_drawControl".}
proc fcQCommonStyle_subElementRect(self: pointer, r: cint, opt: pointer, widget: pointer): pointer {.importc: "QCommonStyle_subElementRect".}
proc fcQCommonStyle_drawComplexControl(self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QCommonStyle_drawComplexControl".}
proc fcQCommonStyle_hitTestComplexControl(self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.importc: "QCommonStyle_hitTestComplexControl".}
proc fcQCommonStyle_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.importc: "QCommonStyle_subControlRect".}
proc fcQCommonStyle_sizeFromContents(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.importc: "QCommonStyle_sizeFromContents".}
proc fcQCommonStyle_pixelMetric(self: pointer, m: cint, opt: pointer, widget: pointer): cint {.importc: "QCommonStyle_pixelMetric".}
proc fcQCommonStyle_styleHint(self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.importc: "QCommonStyle_styleHint".}
proc fcQCommonStyle_standardIcon(self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer {.importc: "QCommonStyle_standardIcon".}
proc fcQCommonStyle_standardPixmap(self: pointer, sp: cint, opt: pointer, widget: pointer): pointer {.importc: "QCommonStyle_standardPixmap".}
proc fcQCommonStyle_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.importc: "QCommonStyle_generatedIconPixmap".}
proc fcQCommonStyle_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QCommonStyle_layoutSpacing".}
proc fcQCommonStyle_polish(self: pointer, param1: pointer): void {.importc: "QCommonStyle_polish".}
proc fcQCommonStyle_polishWithApp(self: pointer, app: pointer): void {.importc: "QCommonStyle_polishWithApp".}
proc fcQCommonStyle_polishWithWidget(self: pointer, widget: pointer): void {.importc: "QCommonStyle_polishWithWidget".}
proc fcQCommonStyle_unpolish(self: pointer, widget: pointer): void {.importc: "QCommonStyle_unpolish".}
proc fcQCommonStyle_unpolishWithApplication(self: pointer, application: pointer): void {.importc: "QCommonStyle_unpolishWithApplication".}
proc fcQCommonStyle_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCommonStyle_tr2".}
proc fcQCommonStyle_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCommonStyle_tr3".}
proc fcQCommonStyle_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCommonStyle_trUtf82".}
proc fcQCommonStyle_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCommonStyle_trUtf83".}
proc fQCommonStyle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCommonStyle_virtualbase_metacall".}
proc fcQCommonStyle_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_metacall".}
proc fQCommonStyle_virtualbase_drawPrimitive(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void{.importc: "QCommonStyle_virtualbase_drawPrimitive".}
proc fcQCommonStyle_override_virtual_drawPrimitive(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawPrimitive".}
proc fQCommonStyle_virtualbase_drawControl(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void{.importc: "QCommonStyle_virtualbase_drawControl".}
proc fcQCommonStyle_override_virtual_drawControl(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawControl".}
proc fQCommonStyle_virtualbase_subElementRect(self: pointer, r: cint, opt: pointer, widget: pointer): pointer{.importc: "QCommonStyle_virtualbase_subElementRect".}
proc fcQCommonStyle_override_virtual_subElementRect(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_subElementRect".}
proc fQCommonStyle_virtualbase_drawComplexControl(self: pointer, cc: cint, opt: pointer, p: pointer, w: pointer): void{.importc: "QCommonStyle_virtualbase_drawComplexControl".}
proc fcQCommonStyle_override_virtual_drawComplexControl(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawComplexControl".}
proc fQCommonStyle_virtualbase_hitTestComplexControl(self: pointer, cc: cint, opt: pointer, pt: pointer, w: pointer): cint{.importc: "QCommonStyle_virtualbase_hitTestComplexControl".}
proc fcQCommonStyle_override_virtual_hitTestComplexControl(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_hitTestComplexControl".}
proc fQCommonStyle_virtualbase_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, w: pointer): pointer{.importc: "QCommonStyle_virtualbase_subControlRect".}
proc fcQCommonStyle_override_virtual_subControlRect(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_subControlRect".}
proc fQCommonStyle_virtualbase_sizeFromContents(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer{.importc: "QCommonStyle_virtualbase_sizeFromContents".}
proc fcQCommonStyle_override_virtual_sizeFromContents(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_sizeFromContents".}
proc fQCommonStyle_virtualbase_pixelMetric(self: pointer, m: cint, opt: pointer, widget: pointer): cint{.importc: "QCommonStyle_virtualbase_pixelMetric".}
proc fcQCommonStyle_override_virtual_pixelMetric(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_pixelMetric".}
proc fQCommonStyle_virtualbase_styleHint(self: pointer, sh: cint, opt: pointer, w: pointer, shret: pointer): cint{.importc: "QCommonStyle_virtualbase_styleHint".}
proc fcQCommonStyle_override_virtual_styleHint(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_styleHint".}
proc fQCommonStyle_virtualbase_standardIcon(self: pointer, standardIcon: cint, opt: pointer, widget: pointer): pointer{.importc: "QCommonStyle_virtualbase_standardIcon".}
proc fcQCommonStyle_override_virtual_standardIcon(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_standardIcon".}
proc fQCommonStyle_virtualbase_standardPixmap(self: pointer, sp: cint, opt: pointer, widget: pointer): pointer{.importc: "QCommonStyle_virtualbase_standardPixmap".}
proc fcQCommonStyle_override_virtual_standardPixmap(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_standardPixmap".}
proc fQCommonStyle_virtualbase_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer{.importc: "QCommonStyle_virtualbase_generatedIconPixmap".}
proc fcQCommonStyle_override_virtual_generatedIconPixmap(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_generatedIconPixmap".}
proc fQCommonStyle_virtualbase_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint{.importc: "QCommonStyle_virtualbase_layoutSpacing".}
proc fcQCommonStyle_override_virtual_layoutSpacing(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_layoutSpacing".}
proc fQCommonStyle_virtualbase_polish(self: pointer, param1: pointer): void{.importc: "QCommonStyle_virtualbase_polish".}
proc fcQCommonStyle_override_virtual_polish(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_polish".}
proc fQCommonStyle_virtualbase_polishWithApp(self: pointer, app: pointer): void{.importc: "QCommonStyle_virtualbase_polishWithApp".}
proc fcQCommonStyle_override_virtual_polishWithApp(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_polishWithApp".}
proc fQCommonStyle_virtualbase_polishWithWidget(self: pointer, widget: pointer): void{.importc: "QCommonStyle_virtualbase_polishWithWidget".}
proc fcQCommonStyle_override_virtual_polishWithWidget(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_polishWithWidget".}
proc fQCommonStyle_virtualbase_unpolish(self: pointer, widget: pointer): void{.importc: "QCommonStyle_virtualbase_unpolish".}
proc fcQCommonStyle_override_virtual_unpolish(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_unpolish".}
proc fQCommonStyle_virtualbase_unpolishWithApplication(self: pointer, application: pointer): void{.importc: "QCommonStyle_virtualbase_unpolishWithApplication".}
proc fcQCommonStyle_override_virtual_unpolishWithApplication(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_unpolishWithApplication".}
proc fQCommonStyle_virtualbase_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer{.importc: "QCommonStyle_virtualbase_itemTextRect".}
proc fcQCommonStyle_override_virtual_itemTextRect(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_itemTextRect".}
proc fQCommonStyle_virtualbase_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer{.importc: "QCommonStyle_virtualbase_itemPixmapRect".}
proc fcQCommonStyle_override_virtual_itemPixmapRect(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_itemPixmapRect".}
proc fQCommonStyle_virtualbase_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void{.importc: "QCommonStyle_virtualbase_drawItemText".}
proc fcQCommonStyle_override_virtual_drawItemText(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawItemText".}
proc fQCommonStyle_virtualbase_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void{.importc: "QCommonStyle_virtualbase_drawItemPixmap".}
proc fcQCommonStyle_override_virtual_drawItemPixmap(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_drawItemPixmap".}
proc fQCommonStyle_virtualbase_standardPalette(self: pointer, ): pointer{.importc: "QCommonStyle_virtualbase_standardPalette".}
proc fcQCommonStyle_override_virtual_standardPalette(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_standardPalette".}
proc fQCommonStyle_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QCommonStyle_virtualbase_event".}
proc fcQCommonStyle_override_virtual_event(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_event".}
proc fQCommonStyle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCommonStyle_virtualbase_eventFilter".}
proc fcQCommonStyle_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_eventFilter".}
proc fQCommonStyle_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCommonStyle_virtualbase_timerEvent".}
proc fcQCommonStyle_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_timerEvent".}
proc fQCommonStyle_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCommonStyle_virtualbase_childEvent".}
proc fcQCommonStyle_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_childEvent".}
proc fQCommonStyle_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCommonStyle_virtualbase_customEvent".}
proc fcQCommonStyle_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_customEvent".}
proc fQCommonStyle_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCommonStyle_virtualbase_connectNotify".}
proc fcQCommonStyle_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_connectNotify".}
proc fQCommonStyle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCommonStyle_virtualbase_disconnectNotify".}
proc fcQCommonStyle_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCommonStyle_override_virtual_disconnectNotify".}
proc fcQCommonStyle_delete(self: pointer) {.importc: "QCommonStyle_delete".}


func init*(T: type QCommonStyle, h: ptr cQCommonStyle): QCommonStyle =
  T(h: h)
proc create*(T: type QCommonStyle, ): QCommonStyle =

  QCommonStyle.init(fcQCommonStyle_new())
proc metaObject*(self: QCommonStyle, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCommonStyle_metaObject(self.h))

proc metacast*(self: QCommonStyle, param1: cstring): pointer =

  fcQCommonStyle_metacast(self.h, param1)

proc metacall*(self: QCommonStyle, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCommonStyle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCommonStyle, s: cstring): string =

  let v_ms = fcQCommonStyle_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCommonStyle, s: cstring): string =

  let v_ms = fcQCommonStyle_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc drawPrimitive*(self: QCommonStyle, pe: gen_qstyle.QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void =

  fcQCommonStyle_drawPrimitive(self.h, cint(pe), opt.h, p.h, w.h)

proc drawControl*(self: QCommonStyle, element: gen_qstyle.QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void =

  fcQCommonStyle_drawControl(self.h, cint(element), opt.h, p.h, w.h)

proc subElementRect*(self: QCommonStyle, r: gen_qstyle.QStyleSubElement, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQCommonStyle_subElementRect(self.h, cint(r), opt.h, widget.h))

proc drawComplexControl*(self: QCommonStyle, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void =

  fcQCommonStyle_drawComplexControl(self.h, cint(cc), opt.h, p.h, w.h)

proc hitTestComplexControl*(self: QCommonStyle, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, w: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl =

  gen_qstyle.QStyleSubControl(fcQCommonStyle_hitTestComplexControl(self.h, cint(cc), opt.h, pt.h, w.h))

proc subControlRect*(self: QCommonStyle, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, w: gen_qwidget.QWidget): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQCommonStyle_subControlRect(self.h, cint(cc), opt.h, cint(sc), w.h))

proc sizeFromContents*(self: QCommonStyle, ct: gen_qstyle.QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQCommonStyle_sizeFromContents(self.h, cint(ct), opt.h, contentsSize.h, widget.h))

proc pixelMetric*(self: QCommonStyle, m: gen_qstyle.QStylePixelMetric, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =

  fcQCommonStyle_pixelMetric(self.h, cint(m), opt.h, widget.h)

proc styleHint*(self: QCommonStyle, sh: gen_qstyle.QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, w: gen_qwidget.QWidget, shret: gen_qstyleoption.QStyleHintReturn): cint =

  fcQCommonStyle_styleHint(self.h, cint(sh), opt.h, w.h, shret.h)

proc standardIcon*(self: QCommonStyle, standardIcon: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQCommonStyle_standardIcon(self.h, cint(standardIcon), opt.h, widget.h))

proc standardPixmap*(self: QCommonStyle, sp: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQCommonStyle_standardPixmap(self.h, cint(sp), opt.h, widget.h))

proc generatedIconPixmap*(self: QCommonStyle, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQCommonStyle_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

proc layoutSpacing*(self: QCommonStyle, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =

  fcQCommonStyle_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

proc polish*(self: QCommonStyle, param1: gen_qpalette.QPalette): void =

  fcQCommonStyle_polish(self.h, param1.h)

proc polishWithApp*(self: QCommonStyle, app: gen_qapplication.QApplication): void =

  fcQCommonStyle_polishWithApp(self.h, app.h)

proc polishWithWidget*(self: QCommonStyle, widget: gen_qwidget.QWidget): void =

  fcQCommonStyle_polishWithWidget(self.h, widget.h)

proc unpolish*(self: QCommonStyle, widget: gen_qwidget.QWidget): void =

  fcQCommonStyle_unpolish(self.h, widget.h)

proc unpolishWithApplication*(self: QCommonStyle, application: gen_qapplication.QApplication): void =

  fcQCommonStyle_unpolishWithApplication(self.h, application.h)

proc tr2*(_: type QCommonStyle, s: cstring, c: cstring): string =

  let v_ms = fcQCommonStyle_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCommonStyle, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCommonStyle_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCommonStyle, s: cstring, c: cstring): string =

  let v_ms = fcQCommonStyle_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCommonStyle, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCommonStyle_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QCommonStyle, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQCommonStyle_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCommonStylemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QCommonStyle, slot: proc(super: QCommonStylemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_metacall(self: ptr cQCommonStyle, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_metacall ".} =
  type Cb = proc(super: QCommonStylemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QCommonStyle(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_drawPrimitive(self: QCommonStyle, pe: gen_qstyle.QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void =


  fQCommonStyle_virtualbase_drawPrimitive(self.h, cint(pe), opt.h, p.h, w.h)

type QCommonStyledrawPrimitiveBase* = proc(pe: gen_qstyle.QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
proc ondrawPrimitive*(self: QCommonStyle, slot: proc(super: QCommonStyledrawPrimitiveBase, pe: gen_qstyle.QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyledrawPrimitiveBase, pe: gen_qstyle.QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawPrimitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawPrimitive(self: ptr cQCommonStyle, slot: int, pe: cint, opt: pointer, p: pointer, w: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_drawPrimitive ".} =
  type Cb = proc(super: QCommonStyledrawPrimitiveBase, pe: gen_qstyle.QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pe: gen_qstyle.QStylePrimitiveElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): auto =
    callVirtualBase_drawPrimitive(QCommonStyle(h: self), pe, opt, p, w)
  let slotval1 = gen_qstyle.QStylePrimitiveElement(pe)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qpainter.QPainter(h: p)

  let slotval4 = gen_qwidget.QWidget(h: w)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_drawControl(self: QCommonStyle, element: gen_qstyle.QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void =


  fQCommonStyle_virtualbase_drawControl(self.h, cint(element), opt.h, p.h, w.h)

type QCommonStyledrawControlBase* = proc(element: gen_qstyle.QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
proc ondrawControl*(self: QCommonStyle, slot: proc(super: QCommonStyledrawControlBase, element: gen_qstyle.QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyledrawControlBase, element: gen_qstyle.QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawControl(self: ptr cQCommonStyle, slot: int, element: cint, opt: pointer, p: pointer, w: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_drawControl ".} =
  type Cb = proc(super: QCommonStyledrawControlBase, element: gen_qstyle.QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(element: gen_qstyle.QStyleControlElement, opt: gen_qstyleoption.QStyleOption, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): auto =
    callVirtualBase_drawControl(QCommonStyle(h: self), element, opt, p, w)
  let slotval1 = gen_qstyle.QStyleControlElement(element)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qpainter.QPainter(h: p)

  let slotval4 = gen_qwidget.QWidget(h: w)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_subElementRect(self: QCommonStyle, r: gen_qstyle.QStyleSubElement, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect =


  gen_qrect.QRect(h: fQCommonStyle_virtualbase_subElementRect(self.h, cint(r), opt.h, widget.h))

type QCommonStylesubElementRectBase* = proc(r: gen_qstyle.QStyleSubElement, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect
proc onsubElementRect*(self: QCommonStyle, slot: proc(super: QCommonStylesubElementRectBase, r: gen_qstyle.QStyleSubElement, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylesubElementRectBase, r: gen_qstyle.QStyleSubElement, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_subElementRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_subElementRect(self: ptr cQCommonStyle, slot: int, r: cint, opt: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_subElementRect ".} =
  type Cb = proc(super: QCommonStylesubElementRectBase, r: gen_qstyle.QStyleSubElement, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(r: gen_qstyle.QStyleSubElement, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_subElementRect(QCommonStyle(h: self), r, opt, widget)
  let slotval1 = gen_qstyle.QStyleSubElement(r)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_drawComplexControl(self: QCommonStyle, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void =


  fQCommonStyle_virtualbase_drawComplexControl(self.h, cint(cc), opt.h, p.h, w.h)

type QCommonStyledrawComplexControlBase* = proc(cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
proc ondrawComplexControl*(self: QCommonStyle, slot: proc(super: QCommonStyledrawComplexControlBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyledrawComplexControlBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawComplexControl(self: ptr cQCommonStyle, slot: int, cc: cint, opt: pointer, p: pointer, w: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_drawComplexControl ".} =
  type Cb = proc(super: QCommonStyledrawComplexControlBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, p: gen_qpainter.QPainter, w: gen_qwidget.QWidget): auto =
    callVirtualBase_drawComplexControl(QCommonStyle(h: self), cc, opt, p, w)
  let slotval1 = gen_qstyle.QStyleComplexControl(cc)

  let slotval2 = gen_qstyleoption.QStyleOptionComplex(h: opt)

  let slotval3 = gen_qpainter.QPainter(h: p)

  let slotval4 = gen_qwidget.QWidget(h: w)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_hitTestComplexControl(self: QCommonStyle, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, w: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl =


  gen_qstyle.QStyleSubControl(fQCommonStyle_virtualbase_hitTestComplexControl(self.h, cint(cc), opt.h, pt.h, w.h))

type QCommonStylehitTestComplexControlBase* = proc(cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, w: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl
proc onhitTestComplexControl*(self: QCommonStyle, slot: proc(super: QCommonStylehitTestComplexControlBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, w: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylehitTestComplexControlBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, w: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_hitTestComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_hitTestComplexControl(self: ptr cQCommonStyle, slot: int, cc: cint, opt: pointer, pt: pointer, w: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_hitTestComplexControl ".} =
  type Cb = proc(super: QCommonStylehitTestComplexControlBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, w: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, pt: gen_qpoint.QPoint, w: gen_qwidget.QWidget): auto =
    callVirtualBase_hitTestComplexControl(QCommonStyle(h: self), cc, opt, pt, w)
  let slotval1 = gen_qstyle.QStyleComplexControl(cc)

  let slotval2 = gen_qstyleoption.QStyleOptionComplex(h: opt)

  let slotval3 = gen_qpoint.QPoint(h: pt)

  let slotval4 = gen_qwidget.QWidget(h: w)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  cint(virtualReturn)
proc callVirtualBase_subControlRect(self: QCommonStyle, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, w: gen_qwidget.QWidget): gen_qrect.QRect =


  gen_qrect.QRect(h: fQCommonStyle_virtualbase_subControlRect(self.h, cint(cc), opt.h, cint(sc), w.h))

type QCommonStylesubControlRectBase* = proc(cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, w: gen_qwidget.QWidget): gen_qrect.QRect
proc onsubControlRect*(self: QCommonStyle, slot: proc(super: QCommonStylesubControlRectBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, w: gen_qwidget.QWidget): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylesubControlRectBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, w: gen_qwidget.QWidget): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_subControlRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_subControlRect(self: ptr cQCommonStyle, slot: int, cc: cint, opt: pointer, sc: cint, w: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_subControlRect ".} =
  type Cb = proc(super: QCommonStylesubControlRectBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, w: gen_qwidget.QWidget): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, w: gen_qwidget.QWidget): auto =
    callVirtualBase_subControlRect(QCommonStyle(h: self), cc, opt, sc, w)
  let slotval1 = gen_qstyle.QStyleComplexControl(cc)

  let slotval2 = gen_qstyleoption.QStyleOptionComplex(h: opt)

  let slotval3 = gen_qstyle.QStyleSubControl(sc)

  let slotval4 = gen_qwidget.QWidget(h: w)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc callVirtualBase_sizeFromContents(self: QCommonStyle, ct: gen_qstyle.QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize =


  gen_qsize.QSize(h: fQCommonStyle_virtualbase_sizeFromContents(self.h, cint(ct), opt.h, contentsSize.h, widget.h))

type QCommonStylesizeFromContentsBase* = proc(ct: gen_qstyle.QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize
proc onsizeFromContents*(self: QCommonStyle, slot: proc(super: QCommonStylesizeFromContentsBase, ct: gen_qstyle.QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylesizeFromContentsBase, ct: gen_qstyle.QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_sizeFromContents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_sizeFromContents(self: ptr cQCommonStyle, slot: int, ct: cint, opt: pointer, contentsSize: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_sizeFromContents ".} =
  type Cb = proc(super: QCommonStylesizeFromContentsBase, ct: gen_qstyle.QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(ct: gen_qstyle.QStyleContentsType, opt: gen_qstyleoption.QStyleOption, contentsSize: gen_qsize.QSize, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_sizeFromContents(QCommonStyle(h: self), ct, opt, contentsSize, widget)
  let slotval1 = gen_qstyle.QStyleContentsType(ct)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qsize.QSize(h: contentsSize)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc callVirtualBase_pixelMetric(self: QCommonStyle, m: gen_qstyle.QStylePixelMetric, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =


  fQCommonStyle_virtualbase_pixelMetric(self.h, cint(m), opt.h, widget.h)

type QCommonStylepixelMetricBase* = proc(m: gen_qstyle.QStylePixelMetric, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
proc onpixelMetric*(self: QCommonStyle, slot: proc(super: QCommonStylepixelMetricBase, m: gen_qstyle.QStylePixelMetric, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylepixelMetricBase, m: gen_qstyle.QStylePixelMetric, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_pixelMetric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_pixelMetric(self: ptr cQCommonStyle, slot: int, m: cint, opt: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_pixelMetric ".} =
  type Cb = proc(super: QCommonStylepixelMetricBase, m: gen_qstyle.QStylePixelMetric, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(m: gen_qstyle.QStylePixelMetric, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_pixelMetric(QCommonStyle(h: self), m, opt, widget)
  let slotval1 = gen_qstyle.QStylePixelMetric(m)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_styleHint(self: QCommonStyle, sh: gen_qstyle.QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, w: gen_qwidget.QWidget, shret: gen_qstyleoption.QStyleHintReturn): cint =


  fQCommonStyle_virtualbase_styleHint(self.h, cint(sh), opt.h, w.h, shret.h)

type QCommonStylestyleHintBase* = proc(sh: gen_qstyle.QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, w: gen_qwidget.QWidget, shret: gen_qstyleoption.QStyleHintReturn): cint
proc onstyleHint*(self: QCommonStyle, slot: proc(super: QCommonStylestyleHintBase, sh: gen_qstyle.QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, w: gen_qwidget.QWidget, shret: gen_qstyleoption.QStyleHintReturn): cint) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylestyleHintBase, sh: gen_qstyle.QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, w: gen_qwidget.QWidget, shret: gen_qstyleoption.QStyleHintReturn): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_styleHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_styleHint(self: ptr cQCommonStyle, slot: int, sh: cint, opt: pointer, w: pointer, shret: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_styleHint ".} =
  type Cb = proc(super: QCommonStylestyleHintBase, sh: gen_qstyle.QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, w: gen_qwidget.QWidget, shret: gen_qstyleoption.QStyleHintReturn): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sh: gen_qstyle.QStyleStyleHint, opt: gen_qstyleoption.QStyleOption, w: gen_qwidget.QWidget, shret: gen_qstyleoption.QStyleHintReturn): auto =
    callVirtualBase_styleHint(QCommonStyle(h: self), sh, opt, w, shret)
  let slotval1 = gen_qstyle.QStyleStyleHint(sh)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qwidget.QWidget(h: w)

  let slotval4 = gen_qstyleoption.QStyleHintReturn(h: shret)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_standardIcon(self: QCommonStyle, standardIcon: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon =


  gen_qicon.QIcon(h: fQCommonStyle_virtualbase_standardIcon(self.h, cint(standardIcon), opt.h, widget.h))

type QCommonStylestandardIconBase* = proc(standardIcon: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon
proc onstandardIcon*(self: QCommonStyle, slot: proc(super: QCommonStylestandardIconBase, standardIcon: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylestandardIconBase, standardIcon: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_standardIcon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_standardIcon(self: ptr cQCommonStyle, slot: int, standardIcon: cint, opt: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_standardIcon ".} =
  type Cb = proc(super: QCommonStylestandardIconBase, standardIcon: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(standardIcon: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_standardIcon(QCommonStyle(h: self), standardIcon, opt, widget)
  let slotval1 = gen_qstyle.QStyleStandardPixmap(standardIcon)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_standardPixmap(self: QCommonStyle, sp: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap =


  gen_qpixmap.QPixmap(h: fQCommonStyle_virtualbase_standardPixmap(self.h, cint(sp), opt.h, widget.h))

type QCommonStylestandardPixmapBase* = proc(sp: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap
proc onstandardPixmap*(self: QCommonStyle, slot: proc(super: QCommonStylestandardPixmapBase, sp: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylestandardPixmapBase, sp: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_standardPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_standardPixmap(self: ptr cQCommonStyle, slot: int, sp: cint, opt: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_standardPixmap ".} =
  type Cb = proc(super: QCommonStylestandardPixmapBase, sp: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sp: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_standardPixmap(QCommonStyle(h: self), sp, opt, widget)
  let slotval1 = gen_qstyle.QStyleStandardPixmap(sp)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_generatedIconPixmap(self: QCommonStyle, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap =


  gen_qpixmap.QPixmap(h: fQCommonStyle_virtualbase_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

type QCommonStylegeneratedIconPixmapBase* = proc(iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap
proc ongeneratedIconPixmap*(self: QCommonStyle, slot: proc(super: QCommonStylegeneratedIconPixmapBase, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylegeneratedIconPixmapBase, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_generatedIconPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_generatedIconPixmap(self: ptr cQCommonStyle, slot: int, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_generatedIconPixmap ".} =
  type Cb = proc(super: QCommonStylegeneratedIconPixmapBase, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): auto =
    callVirtualBase_generatedIconPixmap(QCommonStyle(h: self), iconMode, pixmap, opt)
  let slotval1 = gen_qicon.QIconMode(iconMode)

  let slotval2 = gen_qpixmap.QPixmap(h: pixmap)

  let slotval3 = gen_qstyleoption.QStyleOption(h: opt)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_layoutSpacing(self: QCommonStyle, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =


  fQCommonStyle_virtualbase_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

type QCommonStylelayoutSpacingBase* = proc(control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
proc onlayoutSpacing*(self: QCommonStyle, slot: proc(super: QCommonStylelayoutSpacingBase, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylelayoutSpacingBase, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_layoutSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_layoutSpacing(self: ptr cQCommonStyle, slot: int, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QCommonStyle_layoutSpacing ".} =
  type Cb = proc(super: QCommonStylelayoutSpacingBase, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_layoutSpacing(QCommonStyle(h: self), control1, control2, orientation, option, widget)
  let slotval1 = gen_qsizepolicy.QSizePolicyControlType(control1)

  let slotval2 = gen_qsizepolicy.QSizePolicyControlType(control2)

  let slotval3 = gen_qnamespace.Orientation(orientation)

  let slotval4 = gen_qstyleoption.QStyleOption(h: option)

  let slotval5 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_polish(self: QCommonStyle, param1: gen_qpalette.QPalette): void =


  fQCommonStyle_virtualbase_polish(self.h, param1.h)

type QCommonStylepolishBase* = proc(param1: gen_qpalette.QPalette): void
proc onpolish*(self: QCommonStyle, slot: proc(super: QCommonStylepolishBase, param1: gen_qpalette.QPalette): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylepolishBase, param1: gen_qpalette.QPalette): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_polish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_polish(self: ptr cQCommonStyle, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_polish ".} =
  type Cb = proc(super: QCommonStylepolishBase, param1: gen_qpalette.QPalette): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpalette.QPalette): auto =
    callVirtualBase_polish(QCommonStyle(h: self), param1)
  let slotval1 = gen_qpalette.QPalette(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_polishWithApp(self: QCommonStyle, app: gen_qapplication.QApplication): void =


  fQCommonStyle_virtualbase_polishWithApp(self.h, app.h)

type QCommonStylepolishWithAppBase* = proc(app: gen_qapplication.QApplication): void
proc onpolishWithApp*(self: QCommonStyle, slot: proc(super: QCommonStylepolishWithAppBase, app: gen_qapplication.QApplication): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylepolishWithAppBase, app: gen_qapplication.QApplication): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_polishWithApp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_polishWithApp(self: ptr cQCommonStyle, slot: int, app: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_polishWithApp ".} =
  type Cb = proc(super: QCommonStylepolishWithAppBase, app: gen_qapplication.QApplication): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(app: gen_qapplication.QApplication): auto =
    callVirtualBase_polishWithApp(QCommonStyle(h: self), app)
  let slotval1 = gen_qapplication.QApplication(h: app)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_polishWithWidget(self: QCommonStyle, widget: gen_qwidget.QWidget): void =


  fQCommonStyle_virtualbase_polishWithWidget(self.h, widget.h)

type QCommonStylepolishWithWidgetBase* = proc(widget: gen_qwidget.QWidget): void
proc onpolishWithWidget*(self: QCommonStyle, slot: proc(super: QCommonStylepolishWithWidgetBase, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylepolishWithWidgetBase, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_polishWithWidget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_polishWithWidget(self: ptr cQCommonStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_polishWithWidget ".} =
  type Cb = proc(super: QCommonStylepolishWithWidgetBase, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(widget: gen_qwidget.QWidget): auto =
    callVirtualBase_polishWithWidget(QCommonStyle(h: self), widget)
  let slotval1 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_unpolish(self: QCommonStyle, widget: gen_qwidget.QWidget): void =


  fQCommonStyle_virtualbase_unpolish(self.h, widget.h)

type QCommonStyleunpolishBase* = proc(widget: gen_qwidget.QWidget): void
proc onunpolish*(self: QCommonStyle, slot: proc(super: QCommonStyleunpolishBase, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyleunpolishBase, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_unpolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_unpolish(self: ptr cQCommonStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_unpolish ".} =
  type Cb = proc(super: QCommonStyleunpolishBase, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(widget: gen_qwidget.QWidget): auto =
    callVirtualBase_unpolish(QCommonStyle(h: self), widget)
  let slotval1 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_unpolishWithApplication(self: QCommonStyle, application: gen_qapplication.QApplication): void =


  fQCommonStyle_virtualbase_unpolishWithApplication(self.h, application.h)

type QCommonStyleunpolishWithApplicationBase* = proc(application: gen_qapplication.QApplication): void
proc onunpolishWithApplication*(self: QCommonStyle, slot: proc(super: QCommonStyleunpolishWithApplicationBase, application: gen_qapplication.QApplication): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyleunpolishWithApplicationBase, application: gen_qapplication.QApplication): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_unpolishWithApplication(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_unpolishWithApplication(self: ptr cQCommonStyle, slot: int, application: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_unpolishWithApplication ".} =
  type Cb = proc(super: QCommonStyleunpolishWithApplicationBase, application: gen_qapplication.QApplication): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(application: gen_qapplication.QApplication): auto =
    callVirtualBase_unpolishWithApplication(QCommonStyle(h: self), application)
  let slotval1 = gen_qapplication.QApplication(h: application)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_itemTextRect(self: QCommonStyle, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect =


  gen_qrect.QRect(h: fQCommonStyle_virtualbase_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QCommonStyleitemTextRectBase* = proc(fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect
proc onitemTextRect*(self: QCommonStyle, slot: proc(super: QCommonStyleitemTextRectBase, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyleitemTextRectBase, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_itemTextRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_itemTextRect(self: ptr cQCommonStyle, slot: int, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QCommonStyle_itemTextRect ".} =
  type Cb = proc(super: QCommonStyleitemTextRectBase, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): auto =
    callVirtualBase_itemTextRect(QCommonStyle(h: self), fm, r, flags, enabled, text)
  let slotval1 = gen_qfontmetrics.QFontMetrics(h: fm)

  let slotval2 = gen_qrect.QRect(h: r)

  let slotval3 = flags

  let slotval4 = enabled

  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval5 = vtextx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn.h
proc callVirtualBase_itemPixmapRect(self: QCommonStyle, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect =


  gen_qrect.QRect(h: fQCommonStyle_virtualbase_itemPixmapRect(self.h, r.h, flags, pixmap.h))

type QCommonStyleitemPixmapRectBase* = proc(r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect
proc onitemPixmapRect*(self: QCommonStyle, slot: proc(super: QCommonStyleitemPixmapRectBase, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyleitemPixmapRectBase, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_itemPixmapRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_itemPixmapRect(self: ptr cQCommonStyle, slot: int, r: pointer, flags: cint, pixmap: pointer): pointer {.exportc: "miqt_exec_callback_QCommonStyle_itemPixmapRect ".} =
  type Cb = proc(super: QCommonStyleitemPixmapRectBase, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): auto =
    callVirtualBase_itemPixmapRect(QCommonStyle(h: self), r, flags, pixmap)
  let slotval1 = gen_qrect.QRect(h: r)

  let slotval2 = flags

  let slotval3 = gen_qpixmap.QPixmap(h: pixmap)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_drawItemText(self: QCommonStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void =


  fQCommonStyle_virtualbase_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

type QCommonStyledrawItemTextBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void
proc ondrawItemText*(self: QCommonStyle, slot: proc(super: QCommonStyledrawItemTextBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyledrawItemTextBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawItemText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawItemText(self: ptr cQCommonStyle, slot: int, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.exportc: "miqt_exec_callback_QCommonStyle_drawItemText ".} =
  type Cb = proc(super: QCommonStyledrawItemTextBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): auto =
    callVirtualBase_drawItemText(QCommonStyle(h: self), painter, rect, flags, pal, enabled, text, textRole)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = flags

  let slotval4 = gen_qpalette.QPalette(h: pal)

  let slotval5 = enabled

  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval6 = vtextx_ret

  let slotval7 = gen_qpalette.QPaletteColorRole(textRole)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7)
proc callVirtualBase_drawItemPixmap(self: QCommonStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void =


  fQCommonStyle_virtualbase_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

type QCommonStyledrawItemPixmapBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void
proc ondrawItemPixmap*(self: QCommonStyle, slot: proc(super: QCommonStyledrawItemPixmapBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyledrawItemPixmapBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_drawItemPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_drawItemPixmap(self: ptr cQCommonStyle, slot: int, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_drawItemPixmap ".} =
  type Cb = proc(super: QCommonStyledrawItemPixmapBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): auto =
    callVirtualBase_drawItemPixmap(QCommonStyle(h: self), painter, rect, alignment, pixmap)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = alignment

  let slotval4 = gen_qpixmap.QPixmap(h: pixmap)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_standardPalette(self: QCommonStyle, ): gen_qpalette.QPalette =


  gen_qpalette.QPalette(h: fQCommonStyle_virtualbase_standardPalette(self.h))

type QCommonStylestandardPaletteBase* = proc(): gen_qpalette.QPalette
proc onstandardPalette*(self: QCommonStyle, slot: proc(super: QCommonStylestandardPaletteBase): gen_qpalette.QPalette) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylestandardPaletteBase): gen_qpalette.QPalette
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_standardPalette(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_standardPalette(self: ptr cQCommonStyle, slot: int): pointer {.exportc: "miqt_exec_callback_QCommonStyle_standardPalette ".} =
  type Cb = proc(super: QCommonStylestandardPaletteBase): gen_qpalette.QPalette
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_standardPalette(QCommonStyle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QCommonStyle, event: gen_qcoreevent.QEvent): bool =


  fQCommonStyle_virtualbase_event(self.h, event.h)

type QCommonStyleeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QCommonStyle, slot: proc(super: QCommonStyleeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyleeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_event(self: ptr cQCommonStyle, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCommonStyle_event ".} =
  type Cb = proc(super: QCommonStyleeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QCommonStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QCommonStyle, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQCommonStyle_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCommonStyleeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QCommonStyle, slot: proc(super: QCommonStyleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_eventFilter(self: ptr cQCommonStyle, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCommonStyle_eventFilter ".} =
  type Cb = proc(super: QCommonStyleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QCommonStyle(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QCommonStyle, event: gen_qcoreevent.QTimerEvent): void =


  fQCommonStyle_virtualbase_timerEvent(self.h, event.h)

type QCommonStyletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QCommonStyle, slot: proc(super: QCommonStyletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_timerEvent(self: ptr cQCommonStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_timerEvent ".} =
  type Cb = proc(super: QCommonStyletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QCommonStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QCommonStyle, event: gen_qcoreevent.QChildEvent): void =


  fQCommonStyle_virtualbase_childEvent(self.h, event.h)

type QCommonStylechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QCommonStyle, slot: proc(super: QCommonStylechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_childEvent(self: ptr cQCommonStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_childEvent ".} =
  type Cb = proc(super: QCommonStylechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QCommonStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QCommonStyle, event: gen_qcoreevent.QEvent): void =


  fQCommonStyle_virtualbase_customEvent(self.h, event.h)

type QCommonStylecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QCommonStyle, slot: proc(super: QCommonStylecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStylecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_customEvent(self: ptr cQCommonStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_customEvent ".} =
  type Cb = proc(super: QCommonStylecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QCommonStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QCommonStyle, signal: gen_qmetaobject.QMetaMethod): void =


  fQCommonStyle_virtualbase_connectNotify(self.h, signal.h)

type QCommonStyleconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QCommonStyle, slot: proc(super: QCommonStyleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_connectNotify(self: ptr cQCommonStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_connectNotify ".} =
  type Cb = proc(super: QCommonStyleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QCommonStyle(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QCommonStyle, signal: gen_qmetaobject.QMetaMethod): void =


  fQCommonStyle_virtualbase_disconnectNotify(self.h, signal.h)

type QCommonStyledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QCommonStyle, slot: proc(super: QCommonStyledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCommonStyledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCommonStyle_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommonStyle_disconnectNotify(self: ptr cQCommonStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCommonStyle_disconnectNotify ".} =
  type Cb = proc(super: QCommonStyledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QCommonStyle(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QCommonStyle) =
  fcQCommonStyle_delete(self.h)
