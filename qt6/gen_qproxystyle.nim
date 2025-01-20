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
{.compile("gen_qproxystyle.cpp", cflags).}


import gen_qproxystyle_types
export gen_qproxystyle_types

import
  gen_qapplication,
  gen_qcommonstyle,
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
  gen_qcommonstyle,
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

type cQProxyStyle*{.exportc: "QProxyStyle", incompleteStruct.} = object

proc fcQProxyStyle_new(): ptr cQProxyStyle {.importc: "QProxyStyle_new".}
proc fcQProxyStyle_new2(key: struct_miqt_string): ptr cQProxyStyle {.importc: "QProxyStyle_new2".}
proc fcQProxyStyle_new3(style: pointer): ptr cQProxyStyle {.importc: "QProxyStyle_new3".}
proc fcQProxyStyle_metaObject(self: pointer, ): pointer {.importc: "QProxyStyle_metaObject".}
proc fcQProxyStyle_metacast(self: pointer, param1: cstring): pointer {.importc: "QProxyStyle_metacast".}
proc fcQProxyStyle_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProxyStyle_metacall".}
proc fcQProxyStyle_tr(s: cstring): struct_miqt_string {.importc: "QProxyStyle_tr".}
proc fcQProxyStyle_baseStyle(self: pointer, ): pointer {.importc: "QProxyStyle_baseStyle".}
proc fcQProxyStyle_setBaseStyle(self: pointer, style: pointer): void {.importc: "QProxyStyle_setBaseStyle".}
proc fcQProxyStyle_drawPrimitive(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.importc: "QProxyStyle_drawPrimitive".}
proc fcQProxyStyle_drawControl(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void {.importc: "QProxyStyle_drawControl".}
proc fcQProxyStyle_drawComplexControl(self: pointer, control: cint, option: pointer, painter: pointer, widget: pointer): void {.importc: "QProxyStyle_drawComplexControl".}
proc fcQProxyStyle_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.importc: "QProxyStyle_drawItemText".}
proc fcQProxyStyle_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.importc: "QProxyStyle_drawItemPixmap".}
proc fcQProxyStyle_sizeFromContents(self: pointer, typeVal: cint, option: pointer, size: pointer, widget: pointer): pointer {.importc: "QProxyStyle_sizeFromContents".}
proc fcQProxyStyle_subElementRect(self: pointer, element: cint, option: pointer, widget: pointer): pointer {.importc: "QProxyStyle_subElementRect".}
proc fcQProxyStyle_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.importc: "QProxyStyle_subControlRect".}
proc fcQProxyStyle_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.importc: "QProxyStyle_itemTextRect".}
proc fcQProxyStyle_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.importc: "QProxyStyle_itemPixmapRect".}
proc fcQProxyStyle_hitTestComplexControl(self: pointer, control: cint, option: pointer, pos: pointer, widget: pointer): cint {.importc: "QProxyStyle_hitTestComplexControl".}
proc fcQProxyStyle_styleHint(self: pointer, hint: cint, option: pointer, widget: pointer, returnData: pointer): cint {.importc: "QProxyStyle_styleHint".}
proc fcQProxyStyle_pixelMetric(self: pointer, metric: cint, option: pointer, widget: pointer): cint {.importc: "QProxyStyle_pixelMetric".}
proc fcQProxyStyle_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QProxyStyle_layoutSpacing".}
proc fcQProxyStyle_standardIcon(self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer {.importc: "QProxyStyle_standardIcon".}
proc fcQProxyStyle_standardPixmap(self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.importc: "QProxyStyle_standardPixmap".}
proc fcQProxyStyle_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.importc: "QProxyStyle_generatedIconPixmap".}
proc fcQProxyStyle_standardPalette(self: pointer, ): pointer {.importc: "QProxyStyle_standardPalette".}
proc fcQProxyStyle_polish(self: pointer, widget: pointer): void {.importc: "QProxyStyle_polish".}
proc fcQProxyStyle_polishWithPal(self: pointer, pal: pointer): void {.importc: "QProxyStyle_polishWithPal".}
proc fcQProxyStyle_polishWithApp(self: pointer, app: pointer): void {.importc: "QProxyStyle_polishWithApp".}
proc fcQProxyStyle_unpolish(self: pointer, widget: pointer): void {.importc: "QProxyStyle_unpolish".}
proc fcQProxyStyle_unpolishWithApp(self: pointer, app: pointer): void {.importc: "QProxyStyle_unpolishWithApp".}
proc fcQProxyStyle_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProxyStyle_tr2".}
proc fcQProxyStyle_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProxyStyle_tr3".}
proc fQProxyStyle_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QProxyStyle_virtualbase_metaObject".}
proc fcQProxyStyle_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_metaObject".}
proc fQProxyStyle_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QProxyStyle_virtualbase_metacast".}
proc fcQProxyStyle_override_virtual_metacast(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_metacast".}
proc fQProxyStyle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QProxyStyle_virtualbase_metacall".}
proc fcQProxyStyle_override_virtual_metacall(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_metacall".}
proc fQProxyStyle_virtualbase_drawPrimitive(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_drawPrimitive".}
proc fcQProxyStyle_override_virtual_drawPrimitive(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawPrimitive".}
proc fQProxyStyle_virtualbase_drawControl(self: pointer, element: cint, option: pointer, painter: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_drawControl".}
proc fcQProxyStyle_override_virtual_drawControl(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawControl".}
proc fQProxyStyle_virtualbase_drawComplexControl(self: pointer, control: cint, option: pointer, painter: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_drawComplexControl".}
proc fcQProxyStyle_override_virtual_drawComplexControl(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawComplexControl".}
proc fQProxyStyle_virtualbase_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void{.importc: "QProxyStyle_virtualbase_drawItemText".}
proc fcQProxyStyle_override_virtual_drawItemText(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawItemText".}
proc fQProxyStyle_virtualbase_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void{.importc: "QProxyStyle_virtualbase_drawItemPixmap".}
proc fcQProxyStyle_override_virtual_drawItemPixmap(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_drawItemPixmap".}
proc fQProxyStyle_virtualbase_sizeFromContents(self: pointer, typeVal: cint, option: pointer, size: pointer, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_sizeFromContents".}
proc fcQProxyStyle_override_virtual_sizeFromContents(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_sizeFromContents".}
proc fQProxyStyle_virtualbase_subElementRect(self: pointer, element: cint, option: pointer, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_subElementRect".}
proc fcQProxyStyle_override_virtual_subElementRect(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_subElementRect".}
proc fQProxyStyle_virtualbase_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_subControlRect".}
proc fcQProxyStyle_override_virtual_subControlRect(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_subControlRect".}
proc fQProxyStyle_virtualbase_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer{.importc: "QProxyStyle_virtualbase_itemTextRect".}
proc fcQProxyStyle_override_virtual_itemTextRect(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_itemTextRect".}
proc fQProxyStyle_virtualbase_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer{.importc: "QProxyStyle_virtualbase_itemPixmapRect".}
proc fcQProxyStyle_override_virtual_itemPixmapRect(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_itemPixmapRect".}
proc fQProxyStyle_virtualbase_hitTestComplexControl(self: pointer, control: cint, option: pointer, pos: pointer, widget: pointer): cint{.importc: "QProxyStyle_virtualbase_hitTestComplexControl".}
proc fcQProxyStyle_override_virtual_hitTestComplexControl(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_hitTestComplexControl".}
proc fQProxyStyle_virtualbase_styleHint(self: pointer, hint: cint, option: pointer, widget: pointer, returnData: pointer): cint{.importc: "QProxyStyle_virtualbase_styleHint".}
proc fcQProxyStyle_override_virtual_styleHint(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_styleHint".}
proc fQProxyStyle_virtualbase_pixelMetric(self: pointer, metric: cint, option: pointer, widget: pointer): cint{.importc: "QProxyStyle_virtualbase_pixelMetric".}
proc fcQProxyStyle_override_virtual_pixelMetric(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_pixelMetric".}
proc fQProxyStyle_virtualbase_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint{.importc: "QProxyStyle_virtualbase_layoutSpacing".}
proc fcQProxyStyle_override_virtual_layoutSpacing(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_layoutSpacing".}
proc fQProxyStyle_virtualbase_standardIcon(self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_standardIcon".}
proc fcQProxyStyle_override_virtual_standardIcon(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_standardIcon".}
proc fQProxyStyle_virtualbase_standardPixmap(self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer{.importc: "QProxyStyle_virtualbase_standardPixmap".}
proc fcQProxyStyle_override_virtual_standardPixmap(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_standardPixmap".}
proc fQProxyStyle_virtualbase_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer{.importc: "QProxyStyle_virtualbase_generatedIconPixmap".}
proc fcQProxyStyle_override_virtual_generatedIconPixmap(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_generatedIconPixmap".}
proc fQProxyStyle_virtualbase_standardPalette(self: pointer, ): pointer{.importc: "QProxyStyle_virtualbase_standardPalette".}
proc fcQProxyStyle_override_virtual_standardPalette(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_standardPalette".}
proc fQProxyStyle_virtualbase_polish(self: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_polish".}
proc fcQProxyStyle_override_virtual_polish(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_polish".}
proc fQProxyStyle_virtualbase_polishWithPal(self: pointer, pal: pointer): void{.importc: "QProxyStyle_virtualbase_polishWithPal".}
proc fcQProxyStyle_override_virtual_polishWithPal(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_polishWithPal".}
proc fQProxyStyle_virtualbase_polishWithApp(self: pointer, app: pointer): void{.importc: "QProxyStyle_virtualbase_polishWithApp".}
proc fcQProxyStyle_override_virtual_polishWithApp(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_polishWithApp".}
proc fQProxyStyle_virtualbase_unpolish(self: pointer, widget: pointer): void{.importc: "QProxyStyle_virtualbase_unpolish".}
proc fcQProxyStyle_override_virtual_unpolish(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_unpolish".}
proc fQProxyStyle_virtualbase_unpolishWithApp(self: pointer, app: pointer): void{.importc: "QProxyStyle_virtualbase_unpolishWithApp".}
proc fcQProxyStyle_override_virtual_unpolishWithApp(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_unpolishWithApp".}
proc fQProxyStyle_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QProxyStyle_virtualbase_event".}
proc fcQProxyStyle_override_virtual_event(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_event".}
proc fQProxyStyle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QProxyStyle_virtualbase_eventFilter".}
proc fcQProxyStyle_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_eventFilter".}
proc fQProxyStyle_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QProxyStyle_virtualbase_timerEvent".}
proc fcQProxyStyle_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_timerEvent".}
proc fQProxyStyle_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QProxyStyle_virtualbase_childEvent".}
proc fcQProxyStyle_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_childEvent".}
proc fQProxyStyle_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QProxyStyle_virtualbase_customEvent".}
proc fcQProxyStyle_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_customEvent".}
proc fQProxyStyle_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QProxyStyle_virtualbase_connectNotify".}
proc fcQProxyStyle_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_connectNotify".}
proc fQProxyStyle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QProxyStyle_virtualbase_disconnectNotify".}
proc fcQProxyStyle_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QProxyStyle_override_virtual_disconnectNotify".}
proc fcQProxyStyle_staticMetaObject(): pointer {.importc: "QProxyStyle_staticMetaObject".}
proc fcQProxyStyle_delete(self: pointer) {.importc: "QProxyStyle_delete".}


func init*(T: type QProxyStyle, h: ptr cQProxyStyle): QProxyStyle =
  T(h: h)
proc create*(T: type QProxyStyle, ): QProxyStyle =

  QProxyStyle.init(fcQProxyStyle_new())
proc create*(T: type QProxyStyle, key: string): QProxyStyle =

  QProxyStyle.init(fcQProxyStyle_new2(struct_miqt_string(data: key, len: csize_t(len(key)))))
proc create*(T: type QProxyStyle, style: gen_qstyle.QStyle): QProxyStyle =

  QProxyStyle.init(fcQProxyStyle_new3(style.h))
proc metaObject*(self: QProxyStyle, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQProxyStyle_metaObject(self.h))

proc metacast*(self: QProxyStyle, param1: cstring): pointer =

  fcQProxyStyle_metacast(self.h, param1)

proc metacall*(self: QProxyStyle, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQProxyStyle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QProxyStyle, s: cstring): string =

  let v_ms = fcQProxyStyle_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc baseStyle*(self: QProxyStyle, ): gen_qstyle.QStyle =

  gen_qstyle.QStyle(h: fcQProxyStyle_baseStyle(self.h))

proc setBaseStyle*(self: QProxyStyle, style: gen_qstyle.QStyle): void =

  fcQProxyStyle_setBaseStyle(self.h, style.h)

proc drawPrimitive*(self: QProxyStyle, element: gen_qstyle.QStylePrimitiveElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void =

  fcQProxyStyle_drawPrimitive(self.h, cint(element), option.h, painter.h, widget.h)

proc drawControl*(self: QProxyStyle, element: gen_qstyle.QStyleControlElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void =

  fcQProxyStyle_drawControl(self.h, cint(element), option.h, painter.h, widget.h)

proc drawComplexControl*(self: QProxyStyle, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void =

  fcQProxyStyle_drawComplexControl(self.h, cint(control), option.h, painter.h, widget.h)

proc drawItemText*(self: QProxyStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void =

  fcQProxyStyle_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

proc drawItemPixmap*(self: QProxyStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void =

  fcQProxyStyle_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

proc sizeFromContents*(self: QProxyStyle, typeVal: gen_qstyle.QStyleContentsType, option: gen_qstyleoption.QStyleOption, size: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQProxyStyle_sizeFromContents(self.h, cint(typeVal), option.h, size.h, widget.h))

proc subElementRect*(self: QProxyStyle, element: gen_qstyle.QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQProxyStyle_subElementRect(self.h, cint(element), option.h, widget.h))

proc subControlRect*(self: QProxyStyle, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQProxyStyle_subControlRect(self.h, cint(cc), opt.h, cint(sc), widget.h))

proc itemTextRect*(self: QProxyStyle, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQProxyStyle_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc itemPixmapRect*(self: QProxyStyle, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQProxyStyle_itemPixmapRect(self.h, r.h, flags, pixmap.h))

proc hitTestComplexControl*(self: QProxyStyle, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, pos: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl =

  gen_qstyle.QStyleSubControl(fcQProxyStyle_hitTestComplexControl(self.h, cint(control), option.h, pos.h, widget.h))

proc styleHint*(self: QProxyStyle, hint: gen_qstyle.QStyleStyleHint, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint =

  fcQProxyStyle_styleHint(self.h, cint(hint), option.h, widget.h, returnData.h)

proc pixelMetric*(self: QProxyStyle, metric: gen_qstyle.QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =

  fcQProxyStyle_pixelMetric(self.h, cint(metric), option.h, widget.h)

proc layoutSpacing*(self: QProxyStyle, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =

  fcQProxyStyle_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

proc standardIcon*(self: QProxyStyle, standardIcon: gen_qstyle.QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQProxyStyle_standardIcon(self.h, cint(standardIcon), option.h, widget.h))

proc standardPixmap*(self: QProxyStyle, standardPixmap: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQProxyStyle_standardPixmap(self.h, cint(standardPixmap), opt.h, widget.h))

proc generatedIconPixmap*(self: QProxyStyle, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQProxyStyle_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

proc standardPalette*(self: QProxyStyle, ): gen_qpalette.QPalette =

  gen_qpalette.QPalette(h: fcQProxyStyle_standardPalette(self.h))

proc polish*(self: QProxyStyle, widget: gen_qwidget.QWidget): void =

  fcQProxyStyle_polish(self.h, widget.h)

proc polishWithPal*(self: QProxyStyle, pal: gen_qpalette.QPalette): void =

  fcQProxyStyle_polishWithPal(self.h, pal.h)

proc polishWithApp*(self: QProxyStyle, app: gen_qapplication.QApplication): void =

  fcQProxyStyle_polishWithApp(self.h, app.h)

proc unpolish*(self: QProxyStyle, widget: gen_qwidget.QWidget): void =

  fcQProxyStyle_unpolish(self.h, widget.h)

proc unpolishWithApp*(self: QProxyStyle, app: gen_qapplication.QApplication): void =

  fcQProxyStyle_unpolishWithApp(self.h, app.h)

proc tr2*(_: type QProxyStyle, s: cstring, c: cstring): string =

  let v_ms = fcQProxyStyle_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QProxyStyle, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQProxyStyle_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QProxyStyle, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQProxyStyle_virtualbase_metaObject(self.h))

type QProxyStylemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QProxyStyle, slot: proc(super: QProxyStylemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_metaObject(self: ptr cQProxyStyle, slot: int): pointer {.exportc: "miqt_exec_callback_QProxyStyle_metaObject ".} =
  type Cb = proc(super: QProxyStylemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QProxyStyle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QProxyStyle, param1: cstring): pointer =


  fQProxyStyle_virtualbase_metacast(self.h, param1)

type QProxyStylemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QProxyStyle, slot: proc(super: QProxyStylemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_metacast(self: ptr cQProxyStyle, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QProxyStyle_metacast ".} =
  type Cb = proc(super: QProxyStylemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QProxyStyle(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QProxyStyle, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQProxyStyle_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QProxyStylemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QProxyStyle, slot: proc(super: QProxyStylemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_metacall(self: ptr cQProxyStyle, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_metacall ".} =
  type Cb = proc(super: QProxyStylemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QProxyStyle(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_drawPrimitive(self: QProxyStyle, element: gen_qstyle.QStylePrimitiveElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void =


  fQProxyStyle_virtualbase_drawPrimitive(self.h, cint(element), option.h, painter.h, widget.h)

type QProxyStyledrawPrimitiveBase* = proc(element: gen_qstyle.QStylePrimitiveElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
proc ondrawPrimitive*(self: QProxyStyle, slot: proc(super: QProxyStyledrawPrimitiveBase, element: gen_qstyle.QStylePrimitiveElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyledrawPrimitiveBase, element: gen_qstyle.QStylePrimitiveElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawPrimitive(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawPrimitive(self: ptr cQProxyStyle, slot: int, element: cint, option: pointer, painter: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_drawPrimitive ".} =
  type Cb = proc(super: QProxyStyledrawPrimitiveBase, element: gen_qstyle.QStylePrimitiveElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(element: gen_qstyle.QStylePrimitiveElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_drawPrimitive(QProxyStyle(h: self), element, option, painter, widget)
  let slotval1 = gen_qstyle.QStylePrimitiveElement(element)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qpainter.QPainter(h: painter)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_drawControl(self: QProxyStyle, element: gen_qstyle.QStyleControlElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void =


  fQProxyStyle_virtualbase_drawControl(self.h, cint(element), option.h, painter.h, widget.h)

type QProxyStyledrawControlBase* = proc(element: gen_qstyle.QStyleControlElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
proc ondrawControl*(self: QProxyStyle, slot: proc(super: QProxyStyledrawControlBase, element: gen_qstyle.QStyleControlElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyledrawControlBase, element: gen_qstyle.QStyleControlElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawControl(self: ptr cQProxyStyle, slot: int, element: cint, option: pointer, painter: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_drawControl ".} =
  type Cb = proc(super: QProxyStyledrawControlBase, element: gen_qstyle.QStyleControlElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(element: gen_qstyle.QStyleControlElement, option: gen_qstyleoption.QStyleOption, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_drawControl(QProxyStyle(h: self), element, option, painter, widget)
  let slotval1 = gen_qstyle.QStyleControlElement(element)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qpainter.QPainter(h: painter)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_drawComplexControl(self: QProxyStyle, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void =


  fQProxyStyle_virtualbase_drawComplexControl(self.h, cint(control), option.h, painter.h, widget.h)

type QProxyStyledrawComplexControlBase* = proc(control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
proc ondrawComplexControl*(self: QProxyStyle, slot: proc(super: QProxyStyledrawComplexControlBase, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyledrawComplexControlBase, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawComplexControl(self: ptr cQProxyStyle, slot: int, control: cint, option: pointer, painter: pointer, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_drawComplexControl ".} =
  type Cb = proc(super: QProxyStyledrawComplexControlBase, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, painter: gen_qpainter.QPainter, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_drawComplexControl(QProxyStyle(h: self), control, option, painter, widget)
  let slotval1 = gen_qstyle.QStyleComplexControl(control)

  let slotval2 = gen_qstyleoption.QStyleOptionComplex(h: option)

  let slotval3 = gen_qpainter.QPainter(h: painter)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_drawItemText(self: QProxyStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void =


  fQProxyStyle_virtualbase_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

type QProxyStyledrawItemTextBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void
proc ondrawItemText*(self: QProxyStyle, slot: proc(super: QProxyStyledrawItemTextBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyledrawItemTextBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawItemText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawItemText(self: ptr cQProxyStyle, slot: int, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.exportc: "miqt_exec_callback_QProxyStyle_drawItemText ".} =
  type Cb = proc(super: QProxyStyledrawItemTextBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, flags: cint, pal: gen_qpalette.QPalette, enabled: bool, text: string, textRole: gen_qpalette.QPaletteColorRole): auto =
    callVirtualBase_drawItemText(QProxyStyle(h: self), painter, rect, flags, pal, enabled, text, textRole)
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
proc callVirtualBase_drawItemPixmap(self: QProxyStyle, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void =


  fQProxyStyle_virtualbase_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

type QProxyStyledrawItemPixmapBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void
proc ondrawItemPixmap*(self: QProxyStyle, slot: proc(super: QProxyStyledrawItemPixmapBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyledrawItemPixmapBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_drawItemPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_drawItemPixmap(self: ptr cQProxyStyle, slot: int, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_drawItemPixmap ".} =
  type Cb = proc(super: QProxyStyledrawItemPixmapBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, alignment: cint, pixmap: gen_qpixmap.QPixmap): auto =
    callVirtualBase_drawItemPixmap(QProxyStyle(h: self), painter, rect, alignment, pixmap)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = alignment

  let slotval4 = gen_qpixmap.QPixmap(h: pixmap)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_sizeFromContents(self: QProxyStyle, typeVal: gen_qstyle.QStyleContentsType, option: gen_qstyleoption.QStyleOption, size: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize =


  gen_qsize.QSize(h: fQProxyStyle_virtualbase_sizeFromContents(self.h, cint(typeVal), option.h, size.h, widget.h))

type QProxyStylesizeFromContentsBase* = proc(typeVal: gen_qstyle.QStyleContentsType, option: gen_qstyleoption.QStyleOption, size: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize
proc onsizeFromContents*(self: QProxyStyle, slot: proc(super: QProxyStylesizeFromContentsBase, typeVal: gen_qstyle.QStyleContentsType, option: gen_qstyleoption.QStyleOption, size: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylesizeFromContentsBase, typeVal: gen_qstyle.QStyleContentsType, option: gen_qstyleoption.QStyleOption, size: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_sizeFromContents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_sizeFromContents(self: ptr cQProxyStyle, slot: int, typeVal: cint, option: pointer, size: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_sizeFromContents ".} =
  type Cb = proc(super: QProxyStylesizeFromContentsBase, typeVal: gen_qstyle.QStyleContentsType, option: gen_qstyleoption.QStyleOption, size: gen_qsize.QSize, widget: gen_qwidget.QWidget): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(typeVal: gen_qstyle.QStyleContentsType, option: gen_qstyleoption.QStyleOption, size: gen_qsize.QSize, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_sizeFromContents(QProxyStyle(h: self), typeVal, option, size, widget)
  let slotval1 = gen_qstyle.QStyleContentsType(typeVal)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qsize.QSize(h: size)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc callVirtualBase_subElementRect(self: QProxyStyle, element: gen_qstyle.QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect =


  gen_qrect.QRect(h: fQProxyStyle_virtualbase_subElementRect(self.h, cint(element), option.h, widget.h))

type QProxyStylesubElementRectBase* = proc(element: gen_qstyle.QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect
proc onsubElementRect*(self: QProxyStyle, slot: proc(super: QProxyStylesubElementRectBase, element: gen_qstyle.QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylesubElementRectBase, element: gen_qstyle.QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_subElementRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_subElementRect(self: ptr cQProxyStyle, slot: int, element: cint, option: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_subElementRect ".} =
  type Cb = proc(super: QProxyStylesubElementRectBase, element: gen_qstyle.QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(element: gen_qstyle.QStyleSubElement, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_subElementRect(QProxyStyle(h: self), element, option, widget)
  let slotval1 = gen_qstyle.QStyleSubElement(element)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_subControlRect(self: QProxyStyle, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect =


  gen_qrect.QRect(h: fQProxyStyle_virtualbase_subControlRect(self.h, cint(cc), opt.h, cint(sc), widget.h))

type QProxyStylesubControlRectBase* = proc(cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect
proc onsubControlRect*(self: QProxyStyle, slot: proc(super: QProxyStylesubControlRectBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylesubControlRectBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_subControlRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_subControlRect(self: ptr cQProxyStyle, slot: int, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_subControlRect ".} =
  type Cb = proc(super: QProxyStylesubControlRectBase, cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, widget: gen_qwidget.QWidget): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cc: gen_qstyle.QStyleComplexControl, opt: gen_qstyleoption.QStyleOptionComplex, sc: gen_qstyle.QStyleSubControl, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_subControlRect(QProxyStyle(h: self), cc, opt, sc, widget)
  let slotval1 = gen_qstyle.QStyleComplexControl(cc)

  let slotval2 = gen_qstyleoption.QStyleOptionComplex(h: opt)

  let slotval3 = gen_qstyle.QStyleSubControl(sc)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc callVirtualBase_itemTextRect(self: QProxyStyle, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect =


  gen_qrect.QRect(h: fQProxyStyle_virtualbase_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

type QProxyStyleitemTextRectBase* = proc(fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect
proc onitemTextRect*(self: QProxyStyle, slot: proc(super: QProxyStyleitemTextRectBase, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyleitemTextRectBase, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_itemTextRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_itemTextRect(self: ptr cQProxyStyle, slot: int, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QProxyStyle_itemTextRect ".} =
  type Cb = proc(super: QProxyStyleitemTextRectBase, fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fm: gen_qfontmetrics.QFontMetrics, r: gen_qrect.QRect, flags: cint, enabled: bool, text: string): auto =
    callVirtualBase_itemTextRect(QProxyStyle(h: self), fm, r, flags, enabled, text)
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
proc callVirtualBase_itemPixmapRect(self: QProxyStyle, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect =


  gen_qrect.QRect(h: fQProxyStyle_virtualbase_itemPixmapRect(self.h, r.h, flags, pixmap.h))

type QProxyStyleitemPixmapRectBase* = proc(r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect
proc onitemPixmapRect*(self: QProxyStyle, slot: proc(super: QProxyStyleitemPixmapRectBase, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyleitemPixmapRectBase, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_itemPixmapRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_itemPixmapRect(self: ptr cQProxyStyle, slot: int, r: pointer, flags: cint, pixmap: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_itemPixmapRect ".} =
  type Cb = proc(super: QProxyStyleitemPixmapRectBase, r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(r: gen_qrect.QRect, flags: cint, pixmap: gen_qpixmap.QPixmap): auto =
    callVirtualBase_itemPixmapRect(QProxyStyle(h: self), r, flags, pixmap)
  let slotval1 = gen_qrect.QRect(h: r)

  let slotval2 = flags

  let slotval3 = gen_qpixmap.QPixmap(h: pixmap)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_hitTestComplexControl(self: QProxyStyle, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, pos: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl =


  gen_qstyle.QStyleSubControl(fQProxyStyle_virtualbase_hitTestComplexControl(self.h, cint(control), option.h, pos.h, widget.h))

type QProxyStylehitTestComplexControlBase* = proc(control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, pos: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl
proc onhitTestComplexControl*(self: QProxyStyle, slot: proc(super: QProxyStylehitTestComplexControlBase, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, pos: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylehitTestComplexControlBase, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, pos: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_hitTestComplexControl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_hitTestComplexControl(self: ptr cQProxyStyle, slot: int, control: cint, option: pointer, pos: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_hitTestComplexControl ".} =
  type Cb = proc(super: QProxyStylehitTestComplexControlBase, control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, pos: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): gen_qstyle.QStyleSubControl
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(control: gen_qstyle.QStyleComplexControl, option: gen_qstyleoption.QStyleOptionComplex, pos: gen_qpoint.QPoint, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_hitTestComplexControl(QProxyStyle(h: self), control, option, pos, widget)
  let slotval1 = gen_qstyle.QStyleComplexControl(control)

  let slotval2 = gen_qstyleoption.QStyleOptionComplex(h: option)

  let slotval3 = gen_qpoint.QPoint(h: pos)

  let slotval4 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  cint(virtualReturn)
proc callVirtualBase_styleHint(self: QProxyStyle, hint: gen_qstyle.QStyleStyleHint, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint =


  fQProxyStyle_virtualbase_styleHint(self.h, cint(hint), option.h, widget.h, returnData.h)

type QProxyStylestyleHintBase* = proc(hint: gen_qstyle.QStyleStyleHint, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint
proc onstyleHint*(self: QProxyStyle, slot: proc(super: QProxyStylestyleHintBase, hint: gen_qstyle.QStyleStyleHint, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylestyleHintBase, hint: gen_qstyle.QStyleStyleHint, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_styleHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_styleHint(self: ptr cQProxyStyle, slot: int, hint: cint, option: pointer, widget: pointer, returnData: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_styleHint ".} =
  type Cb = proc(super: QProxyStylestyleHintBase, hint: gen_qstyle.QStyleStyleHint, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(hint: gen_qstyle.QStyleStyleHint, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget, returnData: gen_qstyleoption.QStyleHintReturn): auto =
    callVirtualBase_styleHint(QProxyStyle(h: self), hint, option, widget, returnData)
  let slotval1 = gen_qstyle.QStyleStyleHint(hint)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)

  let slotval4 = gen_qstyleoption.QStyleHintReturn(h: returnData)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_pixelMetric(self: QProxyStyle, metric: gen_qstyle.QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =


  fQProxyStyle_virtualbase_pixelMetric(self.h, cint(metric), option.h, widget.h)

type QProxyStylepixelMetricBase* = proc(metric: gen_qstyle.QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
proc onpixelMetric*(self: QProxyStyle, slot: proc(super: QProxyStylepixelMetricBase, metric: gen_qstyle.QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylepixelMetricBase, metric: gen_qstyle.QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_pixelMetric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_pixelMetric(self: ptr cQProxyStyle, slot: int, metric: cint, option: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_pixelMetric ".} =
  type Cb = proc(super: QProxyStylepixelMetricBase, metric: gen_qstyle.QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(metric: gen_qstyle.QStylePixelMetric, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_pixelMetric(QProxyStyle(h: self), metric, option, widget)
  let slotval1 = gen_qstyle.QStylePixelMetric(metric)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_layoutSpacing(self: QProxyStyle, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint =


  fQProxyStyle_virtualbase_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

type QProxyStylelayoutSpacingBase* = proc(control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
proc onlayoutSpacing*(self: QProxyStyle, slot: proc(super: QProxyStylelayoutSpacingBase, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylelayoutSpacingBase, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_layoutSpacing(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_layoutSpacing(self: ptr cQProxyStyle, slot: int, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.exportc: "miqt_exec_callback_QProxyStyle_layoutSpacing ".} =
  type Cb = proc(super: QProxyStylelayoutSpacingBase, control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(control1: gen_qsizepolicy.QSizePolicyControlType, control2: gen_qsizepolicy.QSizePolicyControlType, orientation: gen_qnamespace.Orientation, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_layoutSpacing(QProxyStyle(h: self), control1, control2, orientation, option, widget)
  let slotval1 = gen_qsizepolicy.QSizePolicyControlType(control1)

  let slotval2 = gen_qsizepolicy.QSizePolicyControlType(control2)

  let slotval3 = gen_qnamespace.Orientation(orientation)

  let slotval4 = gen_qstyleoption.QStyleOption(h: option)

  let slotval5 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_standardIcon(self: QProxyStyle, standardIcon: gen_qstyle.QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon =


  gen_qicon.QIcon(h: fQProxyStyle_virtualbase_standardIcon(self.h, cint(standardIcon), option.h, widget.h))

type QProxyStylestandardIconBase* = proc(standardIcon: gen_qstyle.QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon
proc onstandardIcon*(self: QProxyStyle, slot: proc(super: QProxyStylestandardIconBase, standardIcon: gen_qstyle.QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylestandardIconBase, standardIcon: gen_qstyle.QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_standardIcon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_standardIcon(self: ptr cQProxyStyle, slot: int, standardIcon: cint, option: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_standardIcon ".} =
  type Cb = proc(super: QProxyStylestandardIconBase, standardIcon: gen_qstyle.QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qicon.QIcon
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(standardIcon: gen_qstyle.QStyleStandardPixmap, option: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_standardIcon(QProxyStyle(h: self), standardIcon, option, widget)
  let slotval1 = gen_qstyle.QStyleStandardPixmap(standardIcon)

  let slotval2 = gen_qstyleoption.QStyleOption(h: option)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_standardPixmap(self: QProxyStyle, standardPixmap: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap =


  gen_qpixmap.QPixmap(h: fQProxyStyle_virtualbase_standardPixmap(self.h, cint(standardPixmap), opt.h, widget.h))

type QProxyStylestandardPixmapBase* = proc(standardPixmap: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap
proc onstandardPixmap*(self: QProxyStyle, slot: proc(super: QProxyStylestandardPixmapBase, standardPixmap: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylestandardPixmapBase, standardPixmap: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_standardPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_standardPixmap(self: ptr cQProxyStyle, slot: int, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_standardPixmap ".} =
  type Cb = proc(super: QProxyStylestandardPixmapBase, standardPixmap: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): gen_qpixmap.QPixmap
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(standardPixmap: gen_qstyle.QStyleStandardPixmap, opt: gen_qstyleoption.QStyleOption, widget: gen_qwidget.QWidget): auto =
    callVirtualBase_standardPixmap(QProxyStyle(h: self), standardPixmap, opt, widget)
  let slotval1 = gen_qstyle.QStyleStandardPixmap(standardPixmap)

  let slotval2 = gen_qstyleoption.QStyleOption(h: opt)

  let slotval3 = gen_qwidget.QWidget(h: widget)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_generatedIconPixmap(self: QProxyStyle, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap =


  gen_qpixmap.QPixmap(h: fQProxyStyle_virtualbase_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

type QProxyStylegeneratedIconPixmapBase* = proc(iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap
proc ongeneratedIconPixmap*(self: QProxyStyle, slot: proc(super: QProxyStylegeneratedIconPixmapBase, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylegeneratedIconPixmapBase, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_generatedIconPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_generatedIconPixmap(self: ptr cQProxyStyle, slot: int, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.exportc: "miqt_exec_callback_QProxyStyle_generatedIconPixmap ".} =
  type Cb = proc(super: QProxyStylegeneratedIconPixmapBase, iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): gen_qpixmap.QPixmap
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(iconMode: gen_qicon.QIconMode, pixmap: gen_qpixmap.QPixmap, opt: gen_qstyleoption.QStyleOption): auto =
    callVirtualBase_generatedIconPixmap(QProxyStyle(h: self), iconMode, pixmap, opt)
  let slotval1 = gen_qicon.QIconMode(iconMode)

  let slotval2 = gen_qpixmap.QPixmap(h: pixmap)

  let slotval3 = gen_qstyleoption.QStyleOption(h: opt)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_standardPalette(self: QProxyStyle, ): gen_qpalette.QPalette =


  gen_qpalette.QPalette(h: fQProxyStyle_virtualbase_standardPalette(self.h))

type QProxyStylestandardPaletteBase* = proc(): gen_qpalette.QPalette
proc onstandardPalette*(self: QProxyStyle, slot: proc(super: QProxyStylestandardPaletteBase): gen_qpalette.QPalette) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylestandardPaletteBase): gen_qpalette.QPalette
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_standardPalette(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_standardPalette(self: ptr cQProxyStyle, slot: int): pointer {.exportc: "miqt_exec_callback_QProxyStyle_standardPalette ".} =
  type Cb = proc(super: QProxyStylestandardPaletteBase): gen_qpalette.QPalette
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_standardPalette(QProxyStyle(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_polish(self: QProxyStyle, widget: gen_qwidget.QWidget): void =


  fQProxyStyle_virtualbase_polish(self.h, widget.h)

type QProxyStylepolishBase* = proc(widget: gen_qwidget.QWidget): void
proc onpolish*(self: QProxyStyle, slot: proc(super: QProxyStylepolishBase, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylepolishBase, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_polish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_polish(self: ptr cQProxyStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_polish ".} =
  type Cb = proc(super: QProxyStylepolishBase, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(widget: gen_qwidget.QWidget): auto =
    callVirtualBase_polish(QProxyStyle(h: self), widget)
  let slotval1 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_polishWithPal(self: QProxyStyle, pal: gen_qpalette.QPalette): void =


  fQProxyStyle_virtualbase_polishWithPal(self.h, pal.h)

type QProxyStylepolishWithPalBase* = proc(pal: gen_qpalette.QPalette): void
proc onpolishWithPal*(self: QProxyStyle, slot: proc(super: QProxyStylepolishWithPalBase, pal: gen_qpalette.QPalette): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylepolishWithPalBase, pal: gen_qpalette.QPalette): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_polishWithPal(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_polishWithPal(self: ptr cQProxyStyle, slot: int, pal: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_polishWithPal ".} =
  type Cb = proc(super: QProxyStylepolishWithPalBase, pal: gen_qpalette.QPalette): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pal: gen_qpalette.QPalette): auto =
    callVirtualBase_polishWithPal(QProxyStyle(h: self), pal)
  let slotval1 = gen_qpalette.QPalette(h: pal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_polishWithApp(self: QProxyStyle, app: gen_qapplication.QApplication): void =


  fQProxyStyle_virtualbase_polishWithApp(self.h, app.h)

type QProxyStylepolishWithAppBase* = proc(app: gen_qapplication.QApplication): void
proc onpolishWithApp*(self: QProxyStyle, slot: proc(super: QProxyStylepolishWithAppBase, app: gen_qapplication.QApplication): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylepolishWithAppBase, app: gen_qapplication.QApplication): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_polishWithApp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_polishWithApp(self: ptr cQProxyStyle, slot: int, app: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_polishWithApp ".} =
  type Cb = proc(super: QProxyStylepolishWithAppBase, app: gen_qapplication.QApplication): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(app: gen_qapplication.QApplication): auto =
    callVirtualBase_polishWithApp(QProxyStyle(h: self), app)
  let slotval1 = gen_qapplication.QApplication(h: app)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_unpolish(self: QProxyStyle, widget: gen_qwidget.QWidget): void =


  fQProxyStyle_virtualbase_unpolish(self.h, widget.h)

type QProxyStyleunpolishBase* = proc(widget: gen_qwidget.QWidget): void
proc onunpolish*(self: QProxyStyle, slot: proc(super: QProxyStyleunpolishBase, widget: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyleunpolishBase, widget: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_unpolish(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_unpolish(self: ptr cQProxyStyle, slot: int, widget: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_unpolish ".} =
  type Cb = proc(super: QProxyStyleunpolishBase, widget: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(widget: gen_qwidget.QWidget): auto =
    callVirtualBase_unpolish(QProxyStyle(h: self), widget)
  let slotval1 = gen_qwidget.QWidget(h: widget)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_unpolishWithApp(self: QProxyStyle, app: gen_qapplication.QApplication): void =


  fQProxyStyle_virtualbase_unpolishWithApp(self.h, app.h)

type QProxyStyleunpolishWithAppBase* = proc(app: gen_qapplication.QApplication): void
proc onunpolishWithApp*(self: QProxyStyle, slot: proc(super: QProxyStyleunpolishWithAppBase, app: gen_qapplication.QApplication): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyleunpolishWithAppBase, app: gen_qapplication.QApplication): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_unpolishWithApp(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_unpolishWithApp(self: ptr cQProxyStyle, slot: int, app: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_unpolishWithApp ".} =
  type Cb = proc(super: QProxyStyleunpolishWithAppBase, app: gen_qapplication.QApplication): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(app: gen_qapplication.QApplication): auto =
    callVirtualBase_unpolishWithApp(QProxyStyle(h: self), app)
  let slotval1 = gen_qapplication.QApplication(h: app)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QProxyStyle, e: gen_qcoreevent.QEvent): bool =


  fQProxyStyle_virtualbase_event(self.h, e.h)

type QProxyStyleeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QProxyStyle, slot: proc(super: QProxyStyleeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyleeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_event(self: ptr cQProxyStyle, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QProxyStyle_event ".} =
  type Cb = proc(super: QProxyStyleeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QProxyStyle(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QProxyStyle, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQProxyStyle_virtualbase_eventFilter(self.h, watched.h, event.h)

type QProxyStyleeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QProxyStyle, slot: proc(super: QProxyStyleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_eventFilter(self: ptr cQProxyStyle, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QProxyStyle_eventFilter ".} =
  type Cb = proc(super: QProxyStyleeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QProxyStyle(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QProxyStyle, event: gen_qcoreevent.QTimerEvent): void =


  fQProxyStyle_virtualbase_timerEvent(self.h, event.h)

type QProxyStyletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QProxyStyle, slot: proc(super: QProxyStyletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_timerEvent(self: ptr cQProxyStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_timerEvent ".} =
  type Cb = proc(super: QProxyStyletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QProxyStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QProxyStyle, event: gen_qcoreevent.QChildEvent): void =


  fQProxyStyle_virtualbase_childEvent(self.h, event.h)

type QProxyStylechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QProxyStyle, slot: proc(super: QProxyStylechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_childEvent(self: ptr cQProxyStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_childEvent ".} =
  type Cb = proc(super: QProxyStylechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QProxyStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QProxyStyle, event: gen_qcoreevent.QEvent): void =


  fQProxyStyle_virtualbase_customEvent(self.h, event.h)

type QProxyStylecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QProxyStyle, slot: proc(super: QProxyStylecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStylecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_customEvent(self: ptr cQProxyStyle, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_customEvent ".} =
  type Cb = proc(super: QProxyStylecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QProxyStyle(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QProxyStyle, signal: gen_qmetaobject.QMetaMethod): void =


  fQProxyStyle_virtualbase_connectNotify(self.h, signal.h)

type QProxyStyleconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QProxyStyle, slot: proc(super: QProxyStyleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_connectNotify(self: ptr cQProxyStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_connectNotify ".} =
  type Cb = proc(super: QProxyStyleconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QProxyStyle(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QProxyStyle, signal: gen_qmetaobject.QMetaMethod): void =


  fQProxyStyle_virtualbase_disconnectNotify(self.h, signal.h)

type QProxyStyledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QProxyStyle, slot: proc(super: QProxyStyledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QProxyStyledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProxyStyle_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProxyStyle_disconnectNotify(self: ptr cQProxyStyle, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProxyStyle_disconnectNotify ".} =
  type Cb = proc(super: QProxyStyledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QProxyStyle(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QProxyStyle): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQProxyStyle_staticMetaObject())
proc delete*(self: QProxyStyle) =
  fcQProxyStyle_delete(self.h)
