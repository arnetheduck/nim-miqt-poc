package qt

/*

#include "gen_qproxystyle.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QProxyStyle struct {
	h *C.QProxyStyle
	*QCommonStyle
}

func (this *QProxyStyle) cPointer() *C.QProxyStyle {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QProxyStyle) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQProxyStyle constructs the type using only CGO pointers.
func newQProxyStyle(h *C.QProxyStyle) *QProxyStyle {
	if h == nil {
		return nil
	}
	var outptr_QCommonStyle *C.QCommonStyle = nil
	C.QProxyStyle_virtbase(h, &outptr_QCommonStyle)

	return &QProxyStyle{h: h,
		QCommonStyle: newQCommonStyle(outptr_QCommonStyle)}
}

// UnsafeNewQProxyStyle constructs the type using only unsafe pointers.
func UnsafeNewQProxyStyle(h unsafe.Pointer) *QProxyStyle {
	return newQProxyStyle((*C.QProxyStyle)(h))
}

// NewQProxyStyle constructs a new QProxyStyle object.
func NewQProxyStyle() *QProxyStyle {

	return newQProxyStyle(C.QProxyStyle_new())
}

// NewQProxyStyle2 constructs a new QProxyStyle object.
func NewQProxyStyle2(key string) *QProxyStyle {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))

	return newQProxyStyle(C.QProxyStyle_new2(key_ms))
}

// NewQProxyStyle3 constructs a new QProxyStyle object.
func NewQProxyStyle3(style *QStyle) *QProxyStyle {

	return newQProxyStyle(C.QProxyStyle_new3(style.cPointer()))
}

func (this *QProxyStyle) MetaObject() *QMetaObject {
	return newQMetaObject(C.QProxyStyle_metaObject(this.h))
}

func (this *QProxyStyle) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QProxyStyle_metacast(this.h, param1_Cstring))
}

func (this *QProxyStyle) Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QProxyStyle_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QProxyStyle_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QProxyStyle_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QProxyStyle_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QProxyStyle_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QProxyStyle) BaseStyle() *QStyle {
	return newQStyle(C.QProxyStyle_baseStyle(this.h))
}

func (this *QProxyStyle) SetBaseStyle(style *QStyle) {
	C.QProxyStyle_setBaseStyle(this.h, style.cPointer())
}

func (this *QProxyStyle) DrawPrimitive(element QStyle__PrimitiveElement, option *QStyleOption, painter *QPainter, widget *QWidget) {
	C.QProxyStyle_drawPrimitive(this.h, (C.int)(element), option.cPointer(), painter.cPointer(), widget.cPointer())
}

func (this *QProxyStyle) DrawControl(element QStyle__ControlElement, option *QStyleOption, painter *QPainter, widget *QWidget) {
	C.QProxyStyle_drawControl(this.h, (C.int)(element), option.cPointer(), painter.cPointer(), widget.cPointer())
}

func (this *QProxyStyle) DrawComplexControl(control QStyle__ComplexControl, option *QStyleOptionComplex, painter *QPainter, widget *QWidget) {
	C.QProxyStyle_drawComplexControl(this.h, (C.int)(control), option.cPointer(), painter.cPointer(), widget.cPointer())
}

func (this *QProxyStyle) DrawItemText(painter *QPainter, rect *QRect, flags int, pal *QPalette, enabled bool, text string, textRole QPalette__ColorRole) {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))
	C.QProxyStyle_drawItemText(this.h, painter.cPointer(), rect.cPointer(), (C.int)(flags), pal.cPointer(), (C.bool)(enabled), text_ms, (C.int)(textRole))
}

func (this *QProxyStyle) DrawItemPixmap(painter *QPainter, rect *QRect, alignment int, pixmap *QPixmap) {
	C.QProxyStyle_drawItemPixmap(this.h, painter.cPointer(), rect.cPointer(), (C.int)(alignment), pixmap.cPointer())
}

func (this *QProxyStyle) SizeFromContents(typeVal QStyle__ContentsType, option *QStyleOption, size *QSize, widget *QWidget) *QSize {
	_goptr := newQSize(C.QProxyStyle_sizeFromContents(this.h, (C.int)(typeVal), option.cPointer(), size.cPointer(), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QProxyStyle) SubElementRect(element QStyle__SubElement, option *QStyleOption, widget *QWidget) *QRect {
	_goptr := newQRect(C.QProxyStyle_subElementRect(this.h, (C.int)(element), option.cPointer(), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QProxyStyle) SubControlRect(cc QStyle__ComplexControl, opt *QStyleOptionComplex, sc QStyle__SubControl, widget *QWidget) *QRect {
	_goptr := newQRect(C.QProxyStyle_subControlRect(this.h, (C.int)(cc), opt.cPointer(), (C.int)(sc), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QProxyStyle) ItemTextRect(fm *QFontMetrics, r *QRect, flags int, enabled bool, text string) *QRect {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))
	_goptr := newQRect(C.QProxyStyle_itemTextRect(this.h, fm.cPointer(), r.cPointer(), (C.int)(flags), (C.bool)(enabled), text_ms))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QProxyStyle) ItemPixmapRect(r *QRect, flags int, pixmap *QPixmap) *QRect {
	_goptr := newQRect(C.QProxyStyle_itemPixmapRect(this.h, r.cPointer(), (C.int)(flags), pixmap.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QProxyStyle) HitTestComplexControl(control QStyle__ComplexControl, option *QStyleOptionComplex, pos *QPoint, widget *QWidget) QStyle__SubControl {
	return (QStyle__SubControl)(C.QProxyStyle_hitTestComplexControl(this.h, (C.int)(control), option.cPointer(), pos.cPointer(), widget.cPointer()))
}

func (this *QProxyStyle) StyleHint(hint QStyle__StyleHint, option *QStyleOption, widget *QWidget, returnData *QStyleHintReturn) int {
	return (int)(C.QProxyStyle_styleHint(this.h, (C.int)(hint), option.cPointer(), widget.cPointer(), returnData.cPointer()))
}

func (this *QProxyStyle) PixelMetric(metric QStyle__PixelMetric, option *QStyleOption, widget *QWidget) int {
	return (int)(C.QProxyStyle_pixelMetric(this.h, (C.int)(metric), option.cPointer(), widget.cPointer()))
}

func (this *QProxyStyle) LayoutSpacing(control1 QSizePolicy__ControlType, control2 QSizePolicy__ControlType, orientation Orientation, option *QStyleOption, widget *QWidget) int {
	return (int)(C.QProxyStyle_layoutSpacing(this.h, (C.int)(control1), (C.int)(control2), (C.int)(orientation), option.cPointer(), widget.cPointer()))
}

func (this *QProxyStyle) StandardIcon(standardIcon QStyle__StandardPixmap, option *QStyleOption, widget *QWidget) *QIcon {
	_goptr := newQIcon(C.QProxyStyle_standardIcon(this.h, (C.int)(standardIcon), option.cPointer(), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QProxyStyle) StandardPixmap(standardPixmap QStyle__StandardPixmap, opt *QStyleOption, widget *QWidget) *QPixmap {
	_goptr := newQPixmap(C.QProxyStyle_standardPixmap(this.h, (C.int)(standardPixmap), opt.cPointer(), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QProxyStyle) GeneratedIconPixmap(iconMode QIcon__Mode, pixmap *QPixmap, opt *QStyleOption) *QPixmap {
	_goptr := newQPixmap(C.QProxyStyle_generatedIconPixmap(this.h, (C.int)(iconMode), pixmap.cPointer(), opt.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QProxyStyle) StandardPalette() *QPalette {
	_goptr := newQPalette(C.QProxyStyle_standardPalette(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QProxyStyle) Polish(widget *QWidget) {
	C.QProxyStyle_polish(this.h, widget.cPointer())
}

func (this *QProxyStyle) PolishWithPal(pal *QPalette) {
	C.QProxyStyle_polishWithPal(this.h, pal.cPointer())
}

func (this *QProxyStyle) PolishWithApp(app *QApplication) {
	C.QProxyStyle_polishWithApp(this.h, app.cPointer())
}

func (this *QProxyStyle) Unpolish(widget *QWidget) {
	C.QProxyStyle_unpolish(this.h, widget.cPointer())
}

func (this *QProxyStyle) UnpolishWithApp(app *QApplication) {
	C.QProxyStyle_unpolishWithApp(this.h, app.cPointer())
}

func QProxyStyle_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QProxyStyle_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QProxyStyle_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QProxyStyle_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QProxyStyle_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QProxyStyle_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QProxyStyle_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QProxyStyle_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QProxyStyle) callVirtualBase_MetaObject() *QMetaObject {

	return newQMetaObject(C.QProxyStyle_virtualbase_metaObject(unsafe.Pointer(this.h)))

}
func (this *QProxyStyle) OnMetaObject(slot func(super func() *QMetaObject) *QMetaObject) {
	ok := C.QProxyStyle_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_metaObject
func miqt_exec_callback_QProxyStyle_metaObject(self *C.QProxyStyle, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QMetaObject) *QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_MetaObject)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QProxyStyle_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QProxyStyle) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QProxyStyle_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_metacast
func miqt_exec_callback_QProxyStyle_metacast(self *C.QProxyStyle, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QProxyStyle) callVirtualBase_Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QProxyStyle_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QProxyStyle) OnMetacall(slot func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QProxyStyle_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_metacall
func miqt_exec_callback_QProxyStyle_metacall(self *C.QProxyStyle, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QProxyStyle) callVirtualBase_DrawPrimitive(element QStyle__PrimitiveElement, option *QStyleOption, painter *QPainter, widget *QWidget) {

	C.QProxyStyle_virtualbase_drawPrimitive(unsafe.Pointer(this.h), (C.int)(element), option.cPointer(), painter.cPointer(), widget.cPointer())

}
func (this *QProxyStyle) OnDrawPrimitive(slot func(super func(element QStyle__PrimitiveElement, option *QStyleOption, painter *QPainter, widget *QWidget), element QStyle__PrimitiveElement, option *QStyleOption, painter *QPainter, widget *QWidget)) {
	ok := C.QProxyStyle_override_virtual_drawPrimitive(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_drawPrimitive
func miqt_exec_callback_QProxyStyle_drawPrimitive(self *C.QProxyStyle, cb C.intptr_t, element C.int, option *C.QStyleOption, painter *C.QPainter, widget *C.QWidget) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(element QStyle__PrimitiveElement, option *QStyleOption, painter *QPainter, widget *QWidget), element QStyle__PrimitiveElement, option *QStyleOption, painter *QPainter, widget *QWidget))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__PrimitiveElement)(element)

	slotval2 := newQStyleOption(option)

	slotval3 := newQPainter(painter)

	slotval4 := newQWidget(widget)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_DrawPrimitive, slotval1, slotval2, slotval3, slotval4)

}

func (this *QProxyStyle) callVirtualBase_DrawControl(element QStyle__ControlElement, option *QStyleOption, painter *QPainter, widget *QWidget) {

	C.QProxyStyle_virtualbase_drawControl(unsafe.Pointer(this.h), (C.int)(element), option.cPointer(), painter.cPointer(), widget.cPointer())

}
func (this *QProxyStyle) OnDrawControl(slot func(super func(element QStyle__ControlElement, option *QStyleOption, painter *QPainter, widget *QWidget), element QStyle__ControlElement, option *QStyleOption, painter *QPainter, widget *QWidget)) {
	ok := C.QProxyStyle_override_virtual_drawControl(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_drawControl
func miqt_exec_callback_QProxyStyle_drawControl(self *C.QProxyStyle, cb C.intptr_t, element C.int, option *C.QStyleOption, painter *C.QPainter, widget *C.QWidget) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(element QStyle__ControlElement, option *QStyleOption, painter *QPainter, widget *QWidget), element QStyle__ControlElement, option *QStyleOption, painter *QPainter, widget *QWidget))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__ControlElement)(element)

	slotval2 := newQStyleOption(option)

	slotval3 := newQPainter(painter)

	slotval4 := newQWidget(widget)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_DrawControl, slotval1, slotval2, slotval3, slotval4)

}

func (this *QProxyStyle) callVirtualBase_DrawComplexControl(control QStyle__ComplexControl, option *QStyleOptionComplex, painter *QPainter, widget *QWidget) {

	C.QProxyStyle_virtualbase_drawComplexControl(unsafe.Pointer(this.h), (C.int)(control), option.cPointer(), painter.cPointer(), widget.cPointer())

}
func (this *QProxyStyle) OnDrawComplexControl(slot func(super func(control QStyle__ComplexControl, option *QStyleOptionComplex, painter *QPainter, widget *QWidget), control QStyle__ComplexControl, option *QStyleOptionComplex, painter *QPainter, widget *QWidget)) {
	ok := C.QProxyStyle_override_virtual_drawComplexControl(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_drawComplexControl
func miqt_exec_callback_QProxyStyle_drawComplexControl(self *C.QProxyStyle, cb C.intptr_t, control C.int, option *C.QStyleOptionComplex, painter *C.QPainter, widget *C.QWidget) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(control QStyle__ComplexControl, option *QStyleOptionComplex, painter *QPainter, widget *QWidget), control QStyle__ComplexControl, option *QStyleOptionComplex, painter *QPainter, widget *QWidget))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__ComplexControl)(control)

	slotval2 := newQStyleOptionComplex(option)

	slotval3 := newQPainter(painter)

	slotval4 := newQWidget(widget)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_DrawComplexControl, slotval1, slotval2, slotval3, slotval4)

}

func (this *QProxyStyle) callVirtualBase_DrawItemText(painter *QPainter, rect *QRect, flags int, pal *QPalette, enabled bool, text string, textRole QPalette__ColorRole) {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))

	C.QProxyStyle_virtualbase_drawItemText(unsafe.Pointer(this.h), painter.cPointer(), rect.cPointer(), (C.int)(flags), pal.cPointer(), (C.bool)(enabled), text_ms, (C.int)(textRole))

}
func (this *QProxyStyle) OnDrawItemText(slot func(super func(painter *QPainter, rect *QRect, flags int, pal *QPalette, enabled bool, text string, textRole QPalette__ColorRole), painter *QPainter, rect *QRect, flags int, pal *QPalette, enabled bool, text string, textRole QPalette__ColorRole)) {
	ok := C.QProxyStyle_override_virtual_drawItemText(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_drawItemText
func miqt_exec_callback_QProxyStyle_drawItemText(self *C.QProxyStyle, cb C.intptr_t, painter *C.QPainter, rect *C.QRect, flags C.int, pal *C.QPalette, enabled C.bool, text C.struct_miqt_string, textRole C.int) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(painter *QPainter, rect *QRect, flags int, pal *QPalette, enabled bool, text string, textRole QPalette__ColorRole), painter *QPainter, rect *QRect, flags int, pal *QPalette, enabled bool, text string, textRole QPalette__ColorRole))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQPainter(painter)

	slotval2 := newQRect(rect)

	slotval3 := (int)(flags)

	slotval4 := newQPalette(pal)

	slotval5 := (bool)(enabled)

	var text_ms C.struct_miqt_string = text
	text_ret := C.GoStringN(text_ms.data, C.int(int64(text_ms.len)))
	C.free(unsafe.Pointer(text_ms.data))
	slotval6 := text_ret
	slotval7 := (QPalette__ColorRole)(textRole)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_DrawItemText, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7)

}

func (this *QProxyStyle) callVirtualBase_DrawItemPixmap(painter *QPainter, rect *QRect, alignment int, pixmap *QPixmap) {

	C.QProxyStyle_virtualbase_drawItemPixmap(unsafe.Pointer(this.h), painter.cPointer(), rect.cPointer(), (C.int)(alignment), pixmap.cPointer())

}
func (this *QProxyStyle) OnDrawItemPixmap(slot func(super func(painter *QPainter, rect *QRect, alignment int, pixmap *QPixmap), painter *QPainter, rect *QRect, alignment int, pixmap *QPixmap)) {
	ok := C.QProxyStyle_override_virtual_drawItemPixmap(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_drawItemPixmap
func miqt_exec_callback_QProxyStyle_drawItemPixmap(self *C.QProxyStyle, cb C.intptr_t, painter *C.QPainter, rect *C.QRect, alignment C.int, pixmap *C.QPixmap) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(painter *QPainter, rect *QRect, alignment int, pixmap *QPixmap), painter *QPainter, rect *QRect, alignment int, pixmap *QPixmap))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQPainter(painter)

	slotval2 := newQRect(rect)

	slotval3 := (int)(alignment)

	slotval4 := newQPixmap(pixmap)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_DrawItemPixmap, slotval1, slotval2, slotval3, slotval4)

}

func (this *QProxyStyle) callVirtualBase_SizeFromContents(typeVal QStyle__ContentsType, option *QStyleOption, size *QSize, widget *QWidget) *QSize {

	_goptr := newQSize(C.QProxyStyle_virtualbase_sizeFromContents(unsafe.Pointer(this.h), (C.int)(typeVal), option.cPointer(), size.cPointer(), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QProxyStyle) OnSizeFromContents(slot func(super func(typeVal QStyle__ContentsType, option *QStyleOption, size *QSize, widget *QWidget) *QSize, typeVal QStyle__ContentsType, option *QStyleOption, size *QSize, widget *QWidget) *QSize) {
	ok := C.QProxyStyle_override_virtual_sizeFromContents(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_sizeFromContents
func miqt_exec_callback_QProxyStyle_sizeFromContents(self *C.QProxyStyle, cb C.intptr_t, typeVal C.int, option *C.QStyleOption, size *C.QSize, widget *C.QWidget) *C.QSize {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(typeVal QStyle__ContentsType, option *QStyleOption, size *QSize, widget *QWidget) *QSize, typeVal QStyle__ContentsType, option *QStyleOption, size *QSize, widget *QWidget) *QSize)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__ContentsType)(typeVal)

	slotval2 := newQStyleOption(option)

	slotval3 := newQSize(size)

	slotval4 := newQWidget(widget)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_SizeFromContents, slotval1, slotval2, slotval3, slotval4)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_SubElementRect(element QStyle__SubElement, option *QStyleOption, widget *QWidget) *QRect {

	_goptr := newQRect(C.QProxyStyle_virtualbase_subElementRect(unsafe.Pointer(this.h), (C.int)(element), option.cPointer(), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QProxyStyle) OnSubElementRect(slot func(super func(element QStyle__SubElement, option *QStyleOption, widget *QWidget) *QRect, element QStyle__SubElement, option *QStyleOption, widget *QWidget) *QRect) {
	ok := C.QProxyStyle_override_virtual_subElementRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_subElementRect
func miqt_exec_callback_QProxyStyle_subElementRect(self *C.QProxyStyle, cb C.intptr_t, element C.int, option *C.QStyleOption, widget *C.QWidget) *C.QRect {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(element QStyle__SubElement, option *QStyleOption, widget *QWidget) *QRect, element QStyle__SubElement, option *QStyleOption, widget *QWidget) *QRect)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__SubElement)(element)

	slotval2 := newQStyleOption(option)

	slotval3 := newQWidget(widget)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_SubElementRect, slotval1, slotval2, slotval3)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_SubControlRect(cc QStyle__ComplexControl, opt *QStyleOptionComplex, sc QStyle__SubControl, widget *QWidget) *QRect {

	_goptr := newQRect(C.QProxyStyle_virtualbase_subControlRect(unsafe.Pointer(this.h), (C.int)(cc), opt.cPointer(), (C.int)(sc), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QProxyStyle) OnSubControlRect(slot func(super func(cc QStyle__ComplexControl, opt *QStyleOptionComplex, sc QStyle__SubControl, widget *QWidget) *QRect, cc QStyle__ComplexControl, opt *QStyleOptionComplex, sc QStyle__SubControl, widget *QWidget) *QRect) {
	ok := C.QProxyStyle_override_virtual_subControlRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_subControlRect
func miqt_exec_callback_QProxyStyle_subControlRect(self *C.QProxyStyle, cb C.intptr_t, cc C.int, opt *C.QStyleOptionComplex, sc C.int, widget *C.QWidget) *C.QRect {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(cc QStyle__ComplexControl, opt *QStyleOptionComplex, sc QStyle__SubControl, widget *QWidget) *QRect, cc QStyle__ComplexControl, opt *QStyleOptionComplex, sc QStyle__SubControl, widget *QWidget) *QRect)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__ComplexControl)(cc)

	slotval2 := newQStyleOptionComplex(opt)

	slotval3 := (QStyle__SubControl)(sc)

	slotval4 := newQWidget(widget)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_SubControlRect, slotval1, slotval2, slotval3, slotval4)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_ItemTextRect(fm *QFontMetrics, r *QRect, flags int, enabled bool, text string) *QRect {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))

	_goptr := newQRect(C.QProxyStyle_virtualbase_itemTextRect(unsafe.Pointer(this.h), fm.cPointer(), r.cPointer(), (C.int)(flags), (C.bool)(enabled), text_ms))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QProxyStyle) OnItemTextRect(slot func(super func(fm *QFontMetrics, r *QRect, flags int, enabled bool, text string) *QRect, fm *QFontMetrics, r *QRect, flags int, enabled bool, text string) *QRect) {
	ok := C.QProxyStyle_override_virtual_itemTextRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_itemTextRect
func miqt_exec_callback_QProxyStyle_itemTextRect(self *C.QProxyStyle, cb C.intptr_t, fm *C.QFontMetrics, r *C.QRect, flags C.int, enabled C.bool, text C.struct_miqt_string) *C.QRect {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(fm *QFontMetrics, r *QRect, flags int, enabled bool, text string) *QRect, fm *QFontMetrics, r *QRect, flags int, enabled bool, text string) *QRect)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQFontMetrics(fm)

	slotval2 := newQRect(r)

	slotval3 := (int)(flags)

	slotval4 := (bool)(enabled)

	var text_ms C.struct_miqt_string = text
	text_ret := C.GoStringN(text_ms.data, C.int(int64(text_ms.len)))
	C.free(unsafe.Pointer(text_ms.data))
	slotval5 := text_ret

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_ItemTextRect, slotval1, slotval2, slotval3, slotval4, slotval5)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_ItemPixmapRect(r *QRect, flags int, pixmap *QPixmap) *QRect {

	_goptr := newQRect(C.QProxyStyle_virtualbase_itemPixmapRect(unsafe.Pointer(this.h), r.cPointer(), (C.int)(flags), pixmap.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QProxyStyle) OnItemPixmapRect(slot func(super func(r *QRect, flags int, pixmap *QPixmap) *QRect, r *QRect, flags int, pixmap *QPixmap) *QRect) {
	ok := C.QProxyStyle_override_virtual_itemPixmapRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_itemPixmapRect
func miqt_exec_callback_QProxyStyle_itemPixmapRect(self *C.QProxyStyle, cb C.intptr_t, r *C.QRect, flags C.int, pixmap *C.QPixmap) *C.QRect {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(r *QRect, flags int, pixmap *QPixmap) *QRect, r *QRect, flags int, pixmap *QPixmap) *QRect)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQRect(r)

	slotval2 := (int)(flags)

	slotval3 := newQPixmap(pixmap)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_ItemPixmapRect, slotval1, slotval2, slotval3)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_HitTestComplexControl(control QStyle__ComplexControl, option *QStyleOptionComplex, pos *QPoint, widget *QWidget) QStyle__SubControl {

	return (QStyle__SubControl)(C.QProxyStyle_virtualbase_hitTestComplexControl(unsafe.Pointer(this.h), (C.int)(control), option.cPointer(), pos.cPointer(), widget.cPointer()))

}
func (this *QProxyStyle) OnHitTestComplexControl(slot func(super func(control QStyle__ComplexControl, option *QStyleOptionComplex, pos *QPoint, widget *QWidget) QStyle__SubControl, control QStyle__ComplexControl, option *QStyleOptionComplex, pos *QPoint, widget *QWidget) QStyle__SubControl) {
	ok := C.QProxyStyle_override_virtual_hitTestComplexControl(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_hitTestComplexControl
func miqt_exec_callback_QProxyStyle_hitTestComplexControl(self *C.QProxyStyle, cb C.intptr_t, control C.int, option *C.QStyleOptionComplex, pos *C.QPoint, widget *C.QWidget) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(control QStyle__ComplexControl, option *QStyleOptionComplex, pos *QPoint, widget *QWidget) QStyle__SubControl, control QStyle__ComplexControl, option *QStyleOptionComplex, pos *QPoint, widget *QWidget) QStyle__SubControl)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__ComplexControl)(control)

	slotval2 := newQStyleOptionComplex(option)

	slotval3 := newQPoint(pos)

	slotval4 := newQWidget(widget)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_HitTestComplexControl, slotval1, slotval2, slotval3, slotval4)

	return (C.int)(virtualReturn)

}

func (this *QProxyStyle) callVirtualBase_StyleHint(hint QStyle__StyleHint, option *QStyleOption, widget *QWidget, returnData *QStyleHintReturn) int {

	return (int)(C.QProxyStyle_virtualbase_styleHint(unsafe.Pointer(this.h), (C.int)(hint), option.cPointer(), widget.cPointer(), returnData.cPointer()))

}
func (this *QProxyStyle) OnStyleHint(slot func(super func(hint QStyle__StyleHint, option *QStyleOption, widget *QWidget, returnData *QStyleHintReturn) int, hint QStyle__StyleHint, option *QStyleOption, widget *QWidget, returnData *QStyleHintReturn) int) {
	ok := C.QProxyStyle_override_virtual_styleHint(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_styleHint
func miqt_exec_callback_QProxyStyle_styleHint(self *C.QProxyStyle, cb C.intptr_t, hint C.int, option *C.QStyleOption, widget *C.QWidget, returnData *C.QStyleHintReturn) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(hint QStyle__StyleHint, option *QStyleOption, widget *QWidget, returnData *QStyleHintReturn) int, hint QStyle__StyleHint, option *QStyleOption, widget *QWidget, returnData *QStyleHintReturn) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__StyleHint)(hint)

	slotval2 := newQStyleOption(option)

	slotval3 := newQWidget(widget)

	slotval4 := newQStyleHintReturn(returnData)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_StyleHint, slotval1, slotval2, slotval3, slotval4)

	return (C.int)(virtualReturn)

}

func (this *QProxyStyle) callVirtualBase_PixelMetric(metric QStyle__PixelMetric, option *QStyleOption, widget *QWidget) int {

	return (int)(C.QProxyStyle_virtualbase_pixelMetric(unsafe.Pointer(this.h), (C.int)(metric), option.cPointer(), widget.cPointer()))

}
func (this *QProxyStyle) OnPixelMetric(slot func(super func(metric QStyle__PixelMetric, option *QStyleOption, widget *QWidget) int, metric QStyle__PixelMetric, option *QStyleOption, widget *QWidget) int) {
	ok := C.QProxyStyle_override_virtual_pixelMetric(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_pixelMetric
func miqt_exec_callback_QProxyStyle_pixelMetric(self *C.QProxyStyle, cb C.intptr_t, metric C.int, option *C.QStyleOption, widget *C.QWidget) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(metric QStyle__PixelMetric, option *QStyleOption, widget *QWidget) int, metric QStyle__PixelMetric, option *QStyleOption, widget *QWidget) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__PixelMetric)(metric)

	slotval2 := newQStyleOption(option)

	slotval3 := newQWidget(widget)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_PixelMetric, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QProxyStyle) callVirtualBase_LayoutSpacing(control1 QSizePolicy__ControlType, control2 QSizePolicy__ControlType, orientation Orientation, option *QStyleOption, widget *QWidget) int {

	return (int)(C.QProxyStyle_virtualbase_layoutSpacing(unsafe.Pointer(this.h), (C.int)(control1), (C.int)(control2), (C.int)(orientation), option.cPointer(), widget.cPointer()))

}
func (this *QProxyStyle) OnLayoutSpacing(slot func(super func(control1 QSizePolicy__ControlType, control2 QSizePolicy__ControlType, orientation Orientation, option *QStyleOption, widget *QWidget) int, control1 QSizePolicy__ControlType, control2 QSizePolicy__ControlType, orientation Orientation, option *QStyleOption, widget *QWidget) int) {
	ok := C.QProxyStyle_override_virtual_layoutSpacing(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_layoutSpacing
func miqt_exec_callback_QProxyStyle_layoutSpacing(self *C.QProxyStyle, cb C.intptr_t, control1 C.int, control2 C.int, orientation C.int, option *C.QStyleOption, widget *C.QWidget) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(control1 QSizePolicy__ControlType, control2 QSizePolicy__ControlType, orientation Orientation, option *QStyleOption, widget *QWidget) int, control1 QSizePolicy__ControlType, control2 QSizePolicy__ControlType, orientation Orientation, option *QStyleOption, widget *QWidget) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QSizePolicy__ControlType)(control1)

	slotval2 := (QSizePolicy__ControlType)(control2)

	slotval3 := (Orientation)(orientation)

	slotval4 := newQStyleOption(option)

	slotval5 := newQWidget(widget)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_LayoutSpacing, slotval1, slotval2, slotval3, slotval4, slotval5)

	return (C.int)(virtualReturn)

}

func (this *QProxyStyle) callVirtualBase_StandardIcon(standardIcon QStyle__StandardPixmap, option *QStyleOption, widget *QWidget) *QIcon {

	_goptr := newQIcon(C.QProxyStyle_virtualbase_standardIcon(unsafe.Pointer(this.h), (C.int)(standardIcon), option.cPointer(), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QProxyStyle) OnStandardIcon(slot func(super func(standardIcon QStyle__StandardPixmap, option *QStyleOption, widget *QWidget) *QIcon, standardIcon QStyle__StandardPixmap, option *QStyleOption, widget *QWidget) *QIcon) {
	ok := C.QProxyStyle_override_virtual_standardIcon(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_standardIcon
func miqt_exec_callback_QProxyStyle_standardIcon(self *C.QProxyStyle, cb C.intptr_t, standardIcon C.int, option *C.QStyleOption, widget *C.QWidget) *C.QIcon {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(standardIcon QStyle__StandardPixmap, option *QStyleOption, widget *QWidget) *QIcon, standardIcon QStyle__StandardPixmap, option *QStyleOption, widget *QWidget) *QIcon)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__StandardPixmap)(standardIcon)

	slotval2 := newQStyleOption(option)

	slotval3 := newQWidget(widget)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_StandardIcon, slotval1, slotval2, slotval3)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_StandardPixmap(standardPixmap QStyle__StandardPixmap, opt *QStyleOption, widget *QWidget) *QPixmap {

	_goptr := newQPixmap(C.QProxyStyle_virtualbase_standardPixmap(unsafe.Pointer(this.h), (C.int)(standardPixmap), opt.cPointer(), widget.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QProxyStyle) OnStandardPixmap(slot func(super func(standardPixmap QStyle__StandardPixmap, opt *QStyleOption, widget *QWidget) *QPixmap, standardPixmap QStyle__StandardPixmap, opt *QStyleOption, widget *QWidget) *QPixmap) {
	ok := C.QProxyStyle_override_virtual_standardPixmap(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_standardPixmap
func miqt_exec_callback_QProxyStyle_standardPixmap(self *C.QProxyStyle, cb C.intptr_t, standardPixmap C.int, opt *C.QStyleOption, widget *C.QWidget) *C.QPixmap {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(standardPixmap QStyle__StandardPixmap, opt *QStyleOption, widget *QWidget) *QPixmap, standardPixmap QStyle__StandardPixmap, opt *QStyleOption, widget *QWidget) *QPixmap)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QStyle__StandardPixmap)(standardPixmap)

	slotval2 := newQStyleOption(opt)

	slotval3 := newQWidget(widget)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_StandardPixmap, slotval1, slotval2, slotval3)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_GeneratedIconPixmap(iconMode QIcon__Mode, pixmap *QPixmap, opt *QStyleOption) *QPixmap {

	_goptr := newQPixmap(C.QProxyStyle_virtualbase_generatedIconPixmap(unsafe.Pointer(this.h), (C.int)(iconMode), pixmap.cPointer(), opt.cPointer()))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QProxyStyle) OnGeneratedIconPixmap(slot func(super func(iconMode QIcon__Mode, pixmap *QPixmap, opt *QStyleOption) *QPixmap, iconMode QIcon__Mode, pixmap *QPixmap, opt *QStyleOption) *QPixmap) {
	ok := C.QProxyStyle_override_virtual_generatedIconPixmap(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_generatedIconPixmap
func miqt_exec_callback_QProxyStyle_generatedIconPixmap(self *C.QProxyStyle, cb C.intptr_t, iconMode C.int, pixmap *C.QPixmap, opt *C.QStyleOption) *C.QPixmap {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(iconMode QIcon__Mode, pixmap *QPixmap, opt *QStyleOption) *QPixmap, iconMode QIcon__Mode, pixmap *QPixmap, opt *QStyleOption) *QPixmap)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QIcon__Mode)(iconMode)

	slotval2 := newQPixmap(pixmap)

	slotval3 := newQStyleOption(opt)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_GeneratedIconPixmap, slotval1, slotval2, slotval3)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_StandardPalette() *QPalette {

	_goptr := newQPalette(C.QProxyStyle_virtualbase_standardPalette(unsafe.Pointer(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QProxyStyle) OnStandardPalette(slot func(super func() *QPalette) *QPalette) {
	ok := C.QProxyStyle_override_virtual_standardPalette(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_standardPalette
func miqt_exec_callback_QProxyStyle_standardPalette(self *C.QProxyStyle, cb C.intptr_t) *C.QPalette {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QPalette) *QPalette)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_StandardPalette)

	return virtualReturn.cPointer()

}

func (this *QProxyStyle) callVirtualBase_Polish(widget *QWidget) {

	C.QProxyStyle_virtualbase_polish(unsafe.Pointer(this.h), widget.cPointer())

}
func (this *QProxyStyle) OnPolish(slot func(super func(widget *QWidget), widget *QWidget)) {
	ok := C.QProxyStyle_override_virtual_polish(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_polish
func miqt_exec_callback_QProxyStyle_polish(self *C.QProxyStyle, cb C.intptr_t, widget *C.QWidget) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(widget *QWidget), widget *QWidget))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQWidget(widget)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_Polish, slotval1)

}

func (this *QProxyStyle) callVirtualBase_PolishWithPal(pal *QPalette) {

	C.QProxyStyle_virtualbase_polishWithPal(unsafe.Pointer(this.h), pal.cPointer())

}
func (this *QProxyStyle) OnPolishWithPal(slot func(super func(pal *QPalette), pal *QPalette)) {
	ok := C.QProxyStyle_override_virtual_polishWithPal(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_polishWithPal
func miqt_exec_callback_QProxyStyle_polishWithPal(self *C.QProxyStyle, cb C.intptr_t, pal *C.QPalette) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(pal *QPalette), pal *QPalette))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQPalette(pal)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_PolishWithPal, slotval1)

}

func (this *QProxyStyle) callVirtualBase_PolishWithApp(app *QApplication) {

	C.QProxyStyle_virtualbase_polishWithApp(unsafe.Pointer(this.h), app.cPointer())

}
func (this *QProxyStyle) OnPolishWithApp(slot func(super func(app *QApplication), app *QApplication)) {
	ok := C.QProxyStyle_override_virtual_polishWithApp(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_polishWithApp
func miqt_exec_callback_QProxyStyle_polishWithApp(self *C.QProxyStyle, cb C.intptr_t, app *C.QApplication) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(app *QApplication), app *QApplication))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQApplication(app)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_PolishWithApp, slotval1)

}

func (this *QProxyStyle) callVirtualBase_Unpolish(widget *QWidget) {

	C.QProxyStyle_virtualbase_unpolish(unsafe.Pointer(this.h), widget.cPointer())

}
func (this *QProxyStyle) OnUnpolish(slot func(super func(widget *QWidget), widget *QWidget)) {
	ok := C.QProxyStyle_override_virtual_unpolish(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_unpolish
func miqt_exec_callback_QProxyStyle_unpolish(self *C.QProxyStyle, cb C.intptr_t, widget *C.QWidget) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(widget *QWidget), widget *QWidget))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQWidget(widget)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_Unpolish, slotval1)

}

func (this *QProxyStyle) callVirtualBase_UnpolishWithApp(app *QApplication) {

	C.QProxyStyle_virtualbase_unpolishWithApp(unsafe.Pointer(this.h), app.cPointer())

}
func (this *QProxyStyle) OnUnpolishWithApp(slot func(super func(app *QApplication), app *QApplication)) {
	ok := C.QProxyStyle_override_virtual_unpolishWithApp(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_unpolishWithApp
func miqt_exec_callback_QProxyStyle_unpolishWithApp(self *C.QProxyStyle, cb C.intptr_t, app *C.QApplication) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(app *QApplication), app *QApplication))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQApplication(app)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_UnpolishWithApp, slotval1)

}

func (this *QProxyStyle) callVirtualBase_Event(e *QEvent) bool {

	return (bool)(C.QProxyStyle_virtualbase_event(unsafe.Pointer(this.h), e.cPointer()))

}
func (this *QProxyStyle) OnEvent(slot func(super func(e *QEvent) bool, e *QEvent) bool) {
	ok := C.QProxyStyle_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_event
func miqt_exec_callback_QProxyStyle_event(self *C.QProxyStyle, cb C.intptr_t, e *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(e *QEvent) bool, e *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(e)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QProxyStyle) callVirtualBase_EventFilter(watched *QObject, event *QEvent) bool {

	return (bool)(C.QProxyStyle_virtualbase_eventFilter(unsafe.Pointer(this.h), watched.cPointer(), event.cPointer()))

}
func (this *QProxyStyle) OnEventFilter(slot func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool) {
	ok := C.QProxyStyle_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_eventFilter
func miqt_exec_callback_QProxyStyle_eventFilter(self *C.QProxyStyle, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQObject(watched)

	slotval2 := newQEvent(event)

	virtualReturn := gofunc((&QProxyStyle{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QProxyStyle) callVirtualBase_TimerEvent(event *QTimerEvent) {

	C.QProxyStyle_virtualbase_timerEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QProxyStyle) OnTimerEvent(slot func(super func(event *QTimerEvent), event *QTimerEvent)) {
	ok := C.QProxyStyle_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_timerEvent
func miqt_exec_callback_QProxyStyle_timerEvent(self *C.QProxyStyle, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QTimerEvent), event *QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQTimerEvent(event)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QProxyStyle) callVirtualBase_ChildEvent(event *QChildEvent) {

	C.QProxyStyle_virtualbase_childEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QProxyStyle) OnChildEvent(slot func(super func(event *QChildEvent), event *QChildEvent)) {
	ok := C.QProxyStyle_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_childEvent
func miqt_exec_callback_QProxyStyle_childEvent(self *C.QProxyStyle, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QChildEvent), event *QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQChildEvent(event)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QProxyStyle) callVirtualBase_CustomEvent(event *QEvent) {

	C.QProxyStyle_virtualbase_customEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QProxyStyle) OnCustomEvent(slot func(super func(event *QEvent), event *QEvent)) {
	ok := C.QProxyStyle_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_customEvent
func miqt_exec_callback_QProxyStyle_customEvent(self *C.QProxyStyle, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QEvent), event *QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(event)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QProxyStyle) callVirtualBase_ConnectNotify(signal *QMetaMethod) {

	C.QProxyStyle_virtualbase_connectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QProxyStyle) OnConnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QProxyStyle_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_connectNotify
func miqt_exec_callback_QProxyStyle_connectNotify(self *C.QProxyStyle, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QProxyStyle) callVirtualBase_DisconnectNotify(signal *QMetaMethod) {

	C.QProxyStyle_virtualbase_disconnectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QProxyStyle) OnDisconnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QProxyStyle_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QProxyStyle_disconnectNotify
func miqt_exec_callback_QProxyStyle_disconnectNotify(self *C.QProxyStyle, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QProxyStyle{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QProxyStyle) Delete() {
	C.QProxyStyle_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QProxyStyle) GoGC() {
	runtime.SetFinalizer(this, func(this *QProxyStyle) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
