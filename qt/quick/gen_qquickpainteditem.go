package quick

/*

#include "gen_qquickpainteditem.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQuickPaintedItem__RenderTarget int

const (
	QQuickPaintedItem__Image                      QQuickPaintedItem__RenderTarget = 0
	QQuickPaintedItem__FramebufferObject          QQuickPaintedItem__RenderTarget = 1
	QQuickPaintedItem__InvertedYFramebufferObject QQuickPaintedItem__RenderTarget = 2
)

type QQuickPaintedItem__PerformanceHint int

const (
	QQuickPaintedItem__FastFBOResizing QQuickPaintedItem__PerformanceHint = 1
)

type QQuickPaintedItem struct {
	h *C.QQuickPaintedItem
	*QQuickItem
}

func (this *QQuickPaintedItem) cPointer() *C.QQuickPaintedItem {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickPaintedItem) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickPaintedItem constructs the type using only CGO pointers.
func newQQuickPaintedItem(h *C.QQuickPaintedItem) *QQuickPaintedItem {
	if h == nil {
		return nil
	}
	var outptr_QQuickItem *C.QQuickItem = nil
	C.QQuickPaintedItem_virtbase(h, &outptr_QQuickItem)

	return &QQuickPaintedItem{h: h,
		QQuickItem: newQQuickItem(outptr_QQuickItem)}
}

// UnsafeNewQQuickPaintedItem constructs the type using only unsafe pointers.
func UnsafeNewQQuickPaintedItem(h unsafe.Pointer) *QQuickPaintedItem {
	return newQQuickPaintedItem((*C.QQuickPaintedItem)(h))
}

// NewQQuickPaintedItem constructs a new QQuickPaintedItem object.
func NewQQuickPaintedItem() *QQuickPaintedItem {

	return newQQuickPaintedItem(C.QQuickPaintedItem_new())
}

// NewQQuickPaintedItem2 constructs a new QQuickPaintedItem object.
func NewQQuickPaintedItem2(parent *QQuickItem) *QQuickPaintedItem {

	return newQQuickPaintedItem(C.QQuickPaintedItem_new2(parent.cPointer()))
}

func (this *QQuickPaintedItem) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickPaintedItem_metaObject(this.h)))
}

func (this *QQuickPaintedItem) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickPaintedItem_metacast(this.h, param1_Cstring))
}

func (this *QQuickPaintedItem) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickPaintedItem_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickPaintedItem_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickPaintedItem_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickPaintedItem_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickPaintedItem_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickPaintedItem) Update() {
	C.QQuickPaintedItem_update(this.h)
}

func (this *QQuickPaintedItem) OpaquePainting() bool {
	return (bool)(C.QQuickPaintedItem_opaquePainting(this.h))
}

func (this *QQuickPaintedItem) SetOpaquePainting(opaque bool) {
	C.QQuickPaintedItem_setOpaquePainting(this.h, (C.bool)(opaque))
}

func (this *QQuickPaintedItem) Antialiasing() bool {
	return (bool)(C.QQuickPaintedItem_antialiasing(this.h))
}

func (this *QQuickPaintedItem) SetAntialiasing(enable bool) {
	C.QQuickPaintedItem_setAntialiasing(this.h, (C.bool)(enable))
}

func (this *QQuickPaintedItem) Mipmap() bool {
	return (bool)(C.QQuickPaintedItem_mipmap(this.h))
}

func (this *QQuickPaintedItem) SetMipmap(enable bool) {
	C.QQuickPaintedItem_setMipmap(this.h, (C.bool)(enable))
}

func (this *QQuickPaintedItem) PerformanceHints() QQuickPaintedItem__PerformanceHint {
	return (QQuickPaintedItem__PerformanceHint)(C.QQuickPaintedItem_performanceHints(this.h))
}

func (this *QQuickPaintedItem) SetPerformanceHint(hint QQuickPaintedItem__PerformanceHint) {
	C.QQuickPaintedItem_setPerformanceHint(this.h, (C.int)(hint))
}

func (this *QQuickPaintedItem) SetPerformanceHints(hints QQuickPaintedItem__PerformanceHint) {
	C.QQuickPaintedItem_setPerformanceHints(this.h, (C.int)(hints))
}

func (this *QQuickPaintedItem) ContentsBoundingRect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickPaintedItem_contentsBoundingRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickPaintedItem) ContentsSize() *qt.QSize {
	_goptr := qt.UnsafeNewQSize(unsafe.Pointer(C.QQuickPaintedItem_contentsSize(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickPaintedItem) SetContentsSize(contentsSize *qt.QSize) {
	C.QQuickPaintedItem_setContentsSize(this.h, (*C.QSize)(contentsSize.UnsafePointer()))
}

func (this *QQuickPaintedItem) ResetContentsSize() {
	C.QQuickPaintedItem_resetContentsSize(this.h)
}

func (this *QQuickPaintedItem) ContentsScale() float64 {
	return (float64)(C.QQuickPaintedItem_contentsScale(this.h))
}

func (this *QQuickPaintedItem) SetContentsScale(contentsScale float64) {
	C.QQuickPaintedItem_setContentsScale(this.h, (C.double)(contentsScale))
}

func (this *QQuickPaintedItem) TextureSize() *qt.QSize {
	_goptr := qt.UnsafeNewQSize(unsafe.Pointer(C.QQuickPaintedItem_textureSize(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickPaintedItem) SetTextureSize(size *qt.QSize) {
	C.QQuickPaintedItem_setTextureSize(this.h, (*C.QSize)(size.UnsafePointer()))
}

func (this *QQuickPaintedItem) FillColor() *qt.QColor {
	_goptr := qt.UnsafeNewQColor(unsafe.Pointer(C.QQuickPaintedItem_fillColor(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickPaintedItem) SetFillColor(fillColor *qt.QColor) {
	C.QQuickPaintedItem_setFillColor(this.h, (*C.QColor)(fillColor.UnsafePointer()))
}

func (this *QQuickPaintedItem) RenderTarget() QQuickPaintedItem__RenderTarget {
	return (QQuickPaintedItem__RenderTarget)(C.QQuickPaintedItem_renderTarget(this.h))
}

func (this *QQuickPaintedItem) SetRenderTarget(target QQuickPaintedItem__RenderTarget) {
	C.QQuickPaintedItem_setRenderTarget(this.h, (C.int)(target))
}

func (this *QQuickPaintedItem) Paint(painter *qt.QPainter) {
	C.QQuickPaintedItem_paint(this.h, (*C.QPainter)(painter.UnsafePointer()))
}

func (this *QQuickPaintedItem) IsTextureProvider() bool {
	return (bool)(C.QQuickPaintedItem_isTextureProvider(this.h))
}

func (this *QQuickPaintedItem) TextureProvider() *QSGTextureProvider {
	return newQSGTextureProvider(C.QQuickPaintedItem_textureProvider(this.h))
}

func (this *QQuickPaintedItem) FillColorChanged() {
	C.QQuickPaintedItem_fillColorChanged(this.h)
}
func (this *QQuickPaintedItem) OnFillColorChanged(slot func()) {
	C.QQuickPaintedItem_connect_fillColorChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickPaintedItem_fillColorChanged
func miqt_exec_callback_QQuickPaintedItem_fillColorChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickPaintedItem) ContentsSizeChanged() {
	C.QQuickPaintedItem_contentsSizeChanged(this.h)
}
func (this *QQuickPaintedItem) OnContentsSizeChanged(slot func()) {
	C.QQuickPaintedItem_connect_contentsSizeChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickPaintedItem_contentsSizeChanged
func miqt_exec_callback_QQuickPaintedItem_contentsSizeChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickPaintedItem) ContentsScaleChanged() {
	C.QQuickPaintedItem_contentsScaleChanged(this.h)
}
func (this *QQuickPaintedItem) OnContentsScaleChanged(slot func()) {
	C.QQuickPaintedItem_connect_contentsScaleChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickPaintedItem_contentsScaleChanged
func miqt_exec_callback_QQuickPaintedItem_contentsScaleChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickPaintedItem) RenderTargetChanged() {
	C.QQuickPaintedItem_renderTargetChanged(this.h)
}
func (this *QQuickPaintedItem) OnRenderTargetChanged(slot func()) {
	C.QQuickPaintedItem_connect_renderTargetChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickPaintedItem_renderTargetChanged
func miqt_exec_callback_QQuickPaintedItem_renderTargetChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickPaintedItem) TextureSizeChanged() {
	C.QQuickPaintedItem_textureSizeChanged(this.h)
}
func (this *QQuickPaintedItem) OnTextureSizeChanged(slot func()) {
	C.QQuickPaintedItem_connect_textureSizeChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickPaintedItem_textureSizeChanged
func miqt_exec_callback_QQuickPaintedItem_textureSizeChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QQuickPaintedItem_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickPaintedItem_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickPaintedItem_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickPaintedItem_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickPaintedItem_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickPaintedItem_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickPaintedItem_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickPaintedItem_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickPaintedItem) Update1(rect *qt.QRect) {
	C.QQuickPaintedItem_update1(this.h, (*C.QRect)(rect.UnsafePointer()))
}

func (this *QQuickPaintedItem) SetPerformanceHint2(hint QQuickPaintedItem__PerformanceHint, enabled bool) {
	C.QQuickPaintedItem_setPerformanceHint2(this.h, (C.int)(hint), (C.bool)(enabled))
}

func (this *QQuickPaintedItem) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQuickPaintedItem_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQuickPaintedItem) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQuickPaintedItem_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_metacall
func miqt_exec_callback_QQuickPaintedItem_metacall(self *C.QQuickPaintedItem, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QQuickPaintedItem) OnPaint(slot func(painter *qt.QPainter)) {
	ok := C.QQuickPaintedItem_override_virtual_paint(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_paint
func miqt_exec_callback_QQuickPaintedItem_paint(self *C.QQuickPaintedItem, cb C.intptr_t, painter *C.QPainter) {
	gofunc, ok := cgo.Handle(cb).Value().(func(painter *qt.QPainter))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQPainter(unsafe.Pointer(painter))

	gofunc(slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_IsTextureProvider() bool {

	return (bool)(C.QQuickPaintedItem_virtualbase_isTextureProvider(unsafe.Pointer(this.h)))

}
func (this *QQuickPaintedItem) OnIsTextureProvider(slot func(super func() bool) bool) {
	ok := C.QQuickPaintedItem_override_virtual_isTextureProvider(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_isTextureProvider
func miqt_exec_callback_QQuickPaintedItem_isTextureProvider(self *C.QQuickPaintedItem, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_IsTextureProvider)

	return (C.bool)(virtualReturn)

}

func (this *QQuickPaintedItem) callVirtualBase_TextureProvider() *QSGTextureProvider {

	return newQSGTextureProvider(C.QQuickPaintedItem_virtualbase_textureProvider(unsafe.Pointer(this.h)))

}
func (this *QQuickPaintedItem) OnTextureProvider(slot func(super func() *QSGTextureProvider) *QSGTextureProvider) {
	ok := C.QQuickPaintedItem_override_virtual_textureProvider(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_textureProvider
func miqt_exec_callback_QQuickPaintedItem_textureProvider(self *C.QQuickPaintedItem, cb C.intptr_t) *C.QSGTextureProvider {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGTextureProvider) *QSGTextureProvider)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_TextureProvider)

	return virtualReturn.cPointer()

}

func (this *QQuickPaintedItem) callVirtualBase_UpdatePaintNode(param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode {

	return newQSGNode(C.QQuickPaintedItem_virtualbase_updatePaintNode(unsafe.Pointer(this.h), param1.cPointer(), param2.cPointer()))

}
func (this *QQuickPaintedItem) OnUpdatePaintNode(slot func(super func(param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode, param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode) {
	ok := C.QQuickPaintedItem_override_virtual_updatePaintNode(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_updatePaintNode
func miqt_exec_callback_QQuickPaintedItem_updatePaintNode(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QSGNode, param2 *C.QQuickItem__UpdatePaintNodeData) *C.QSGNode {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode, param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGNode(param1)

	slotval2 := newQQuickItem__UpdatePaintNodeData(param2)

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_UpdatePaintNode, slotval1, slotval2)

	return virtualReturn.cPointer()

}

func (this *QQuickPaintedItem) callVirtualBase_ReleaseResources() {

	C.QQuickPaintedItem_virtualbase_releaseResources(unsafe.Pointer(this.h))

}
func (this *QQuickPaintedItem) OnReleaseResources(slot func(super func())) {
	ok := C.QQuickPaintedItem_override_virtual_releaseResources(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_releaseResources
func miqt_exec_callback_QQuickPaintedItem_releaseResources(self *C.QQuickPaintedItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_ReleaseResources)

}

func (this *QQuickPaintedItem) callVirtualBase_ItemChange(param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData) {

	C.QQuickPaintedItem_virtualbase_itemChange(unsafe.Pointer(this.h), (C.int)(param1), param2.cPointer())

}
func (this *QQuickPaintedItem) OnItemChange(slot func(super func(param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData), param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData)) {
	ok := C.QQuickPaintedItem_override_virtual_itemChange(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_itemChange
func miqt_exec_callback_QQuickPaintedItem_itemChange(self *C.QQuickPaintedItem, cb C.intptr_t, param1 C.int, param2 *C.QQuickItem__ItemChangeData) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData), param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QQuickItem__ItemChange)(param1)

	slotval2 := newQQuickItem__ItemChangeData(param2)

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_ItemChange, slotval1, slotval2)

}

func (this *QQuickPaintedItem) callVirtualBase_BoundingRect() *qt.QRectF {

	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickPaintedItem_virtualbase_boundingRect(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickPaintedItem) OnBoundingRect(slot func(super func() *qt.QRectF) *qt.QRectF) {
	ok := C.QQuickPaintedItem_override_virtual_boundingRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_boundingRect
func miqt_exec_callback_QQuickPaintedItem_boundingRect(self *C.QQuickPaintedItem, cb C.intptr_t) *C.QRectF {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QRectF) *qt.QRectF)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_BoundingRect)

	return (*C.QRectF)(virtualReturn.UnsafePointer())

}

func (this *QQuickPaintedItem) callVirtualBase_ClipRect() *qt.QRectF {

	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickPaintedItem_virtualbase_clipRect(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickPaintedItem) OnClipRect(slot func(super func() *qt.QRectF) *qt.QRectF) {
	ok := C.QQuickPaintedItem_override_virtual_clipRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_clipRect
func miqt_exec_callback_QQuickPaintedItem_clipRect(self *C.QQuickPaintedItem, cb C.intptr_t) *C.QRectF {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QRectF) *qt.QRectF)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_ClipRect)

	return (*C.QRectF)(virtualReturn.UnsafePointer())

}

func (this *QQuickPaintedItem) callVirtualBase_Contains(point *qt.QPointF) bool {

	return (bool)(C.QQuickPaintedItem_virtualbase_contains(unsafe.Pointer(this.h), (*C.QPointF)(point.UnsafePointer())))

}
func (this *QQuickPaintedItem) OnContains(slot func(super func(point *qt.QPointF) bool, point *qt.QPointF) bool) {
	ok := C.QQuickPaintedItem_override_virtual_contains(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_contains
func miqt_exec_callback_QQuickPaintedItem_contains(self *C.QQuickPaintedItem, cb C.intptr_t, point *C.QPointF) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(point *qt.QPointF) bool, point *qt.QPointF) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQPointF(unsafe.Pointer(point))

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_Contains, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickPaintedItem) callVirtualBase_InputMethodQuery(query qt.InputMethodQuery) *qt.QVariant {

	_goptr := qt.UnsafeNewQVariant(unsafe.Pointer(C.QQuickPaintedItem_virtualbase_inputMethodQuery(unsafe.Pointer(this.h), (C.int)(query))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickPaintedItem) OnInputMethodQuery(slot func(super func(query qt.InputMethodQuery) *qt.QVariant, query qt.InputMethodQuery) *qt.QVariant) {
	ok := C.QQuickPaintedItem_override_virtual_inputMethodQuery(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_inputMethodQuery
func miqt_exec_callback_QQuickPaintedItem_inputMethodQuery(self *C.QQuickPaintedItem, cb C.intptr_t, query C.int) *C.QVariant {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(query qt.InputMethodQuery) *qt.QVariant, query qt.InputMethodQuery) *qt.QVariant)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.InputMethodQuery)(query)

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_InputMethodQuery, slotval1)

	return (*C.QVariant)(virtualReturn.UnsafePointer())

}

func (this *QQuickPaintedItem) callVirtualBase_Event(param1 *qt.QEvent) bool {

	return (bool)(C.QQuickPaintedItem_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(param1.UnsafePointer())))

}
func (this *QQuickPaintedItem) OnEvent(slot func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool) {
	ok := C.QQuickPaintedItem_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_event
func miqt_exec_callback_QQuickPaintedItem_event(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(param1))

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickPaintedItem) callVirtualBase_ClassBegin() {

	C.QQuickPaintedItem_virtualbase_classBegin(unsafe.Pointer(this.h))

}
func (this *QQuickPaintedItem) OnClassBegin(slot func(super func())) {
	ok := C.QQuickPaintedItem_override_virtual_classBegin(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_classBegin
func miqt_exec_callback_QQuickPaintedItem_classBegin(self *C.QQuickPaintedItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_ClassBegin)

}

func (this *QQuickPaintedItem) callVirtualBase_ComponentComplete() {

	C.QQuickPaintedItem_virtualbase_componentComplete(unsafe.Pointer(this.h))

}
func (this *QQuickPaintedItem) OnComponentComplete(slot func(super func())) {
	ok := C.QQuickPaintedItem_override_virtual_componentComplete(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_componentComplete
func miqt_exec_callback_QQuickPaintedItem_componentComplete(self *C.QQuickPaintedItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_ComponentComplete)

}

func (this *QQuickPaintedItem) callVirtualBase_KeyPressEvent(event *qt.QKeyEvent) {

	C.QQuickPaintedItem_virtualbase_keyPressEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnKeyPressEvent(slot func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_keyPressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_keyPressEvent
func miqt_exec_callback_QQuickPaintedItem_keyPressEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_KeyPressEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_KeyReleaseEvent(event *qt.QKeyEvent) {

	C.QQuickPaintedItem_virtualbase_keyReleaseEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnKeyReleaseEvent(slot func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_keyReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_keyReleaseEvent
func miqt_exec_callback_QQuickPaintedItem_keyReleaseEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_KeyReleaseEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_InputMethodEvent(param1 *qt.QInputMethodEvent) {

	C.QQuickPaintedItem_virtualbase_inputMethodEvent(unsafe.Pointer(this.h), (*C.QInputMethodEvent)(param1.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnInputMethodEvent(slot func(super func(param1 *qt.QInputMethodEvent), param1 *qt.QInputMethodEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_inputMethodEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_inputMethodEvent
func miqt_exec_callback_QQuickPaintedItem_inputMethodEvent(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QInputMethodEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QInputMethodEvent), param1 *qt.QInputMethodEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQInputMethodEvent(unsafe.Pointer(param1))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_InputMethodEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_FocusInEvent(param1 *qt.QFocusEvent) {

	C.QQuickPaintedItem_virtualbase_focusInEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnFocusInEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_focusInEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_focusInEvent
func miqt_exec_callback_QQuickPaintedItem_focusInEvent(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_FocusInEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_FocusOutEvent(param1 *qt.QFocusEvent) {

	C.QQuickPaintedItem_virtualbase_focusOutEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnFocusOutEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_focusOutEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_focusOutEvent
func miqt_exec_callback_QQuickPaintedItem_focusOutEvent(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_FocusOutEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_MousePressEvent(event *qt.QMouseEvent) {

	C.QQuickPaintedItem_virtualbase_mousePressEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnMousePressEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_mousePressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_mousePressEvent
func miqt_exec_callback_QQuickPaintedItem_mousePressEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_MousePressEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_MouseMoveEvent(event *qt.QMouseEvent) {

	C.QQuickPaintedItem_virtualbase_mouseMoveEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnMouseMoveEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_mouseMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_mouseMoveEvent
func miqt_exec_callback_QQuickPaintedItem_mouseMoveEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_MouseMoveEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_MouseReleaseEvent(event *qt.QMouseEvent) {

	C.QQuickPaintedItem_virtualbase_mouseReleaseEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnMouseReleaseEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_mouseReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_mouseReleaseEvent
func miqt_exec_callback_QQuickPaintedItem_mouseReleaseEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_MouseReleaseEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_MouseDoubleClickEvent(event *qt.QMouseEvent) {

	C.QQuickPaintedItem_virtualbase_mouseDoubleClickEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnMouseDoubleClickEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_mouseDoubleClickEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_mouseDoubleClickEvent
func miqt_exec_callback_QQuickPaintedItem_mouseDoubleClickEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_MouseDoubleClickEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_MouseUngrabEvent() {

	C.QQuickPaintedItem_virtualbase_mouseUngrabEvent(unsafe.Pointer(this.h))

}
func (this *QQuickPaintedItem) OnMouseUngrabEvent(slot func(super func())) {
	ok := C.QQuickPaintedItem_override_virtual_mouseUngrabEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_mouseUngrabEvent
func miqt_exec_callback_QQuickPaintedItem_mouseUngrabEvent(self *C.QQuickPaintedItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_MouseUngrabEvent)

}

func (this *QQuickPaintedItem) callVirtualBase_TouchUngrabEvent() {

	C.QQuickPaintedItem_virtualbase_touchUngrabEvent(unsafe.Pointer(this.h))

}
func (this *QQuickPaintedItem) OnTouchUngrabEvent(slot func(super func())) {
	ok := C.QQuickPaintedItem_override_virtual_touchUngrabEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_touchUngrabEvent
func miqt_exec_callback_QQuickPaintedItem_touchUngrabEvent(self *C.QQuickPaintedItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_TouchUngrabEvent)

}

func (this *QQuickPaintedItem) callVirtualBase_WheelEvent(event *qt.QWheelEvent) {

	C.QQuickPaintedItem_virtualbase_wheelEvent(unsafe.Pointer(this.h), (*C.QWheelEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnWheelEvent(slot func(super func(event *qt.QWheelEvent), event *qt.QWheelEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_wheelEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_wheelEvent
func miqt_exec_callback_QQuickPaintedItem_wheelEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QWheelEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QWheelEvent), event *qt.QWheelEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQWheelEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_WheelEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_TouchEvent(event *qt.QTouchEvent) {

	C.QQuickPaintedItem_virtualbase_touchEvent(unsafe.Pointer(this.h), (*C.QTouchEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnTouchEvent(slot func(super func(event *qt.QTouchEvent), event *qt.QTouchEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_touchEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_touchEvent
func miqt_exec_callback_QQuickPaintedItem_touchEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QTouchEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTouchEvent), event *qt.QTouchEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTouchEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_TouchEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_HoverEnterEvent(event *qt.QHoverEvent) {

	C.QQuickPaintedItem_virtualbase_hoverEnterEvent(unsafe.Pointer(this.h), (*C.QHoverEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnHoverEnterEvent(slot func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_hoverEnterEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_hoverEnterEvent
func miqt_exec_callback_QQuickPaintedItem_hoverEnterEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QHoverEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHoverEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_HoverEnterEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_HoverMoveEvent(event *qt.QHoverEvent) {

	C.QQuickPaintedItem_virtualbase_hoverMoveEvent(unsafe.Pointer(this.h), (*C.QHoverEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnHoverMoveEvent(slot func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_hoverMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_hoverMoveEvent
func miqt_exec_callback_QQuickPaintedItem_hoverMoveEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QHoverEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHoverEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_HoverMoveEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_HoverLeaveEvent(event *qt.QHoverEvent) {

	C.QQuickPaintedItem_virtualbase_hoverLeaveEvent(unsafe.Pointer(this.h), (*C.QHoverEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnHoverLeaveEvent(slot func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_hoverLeaveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_hoverLeaveEvent
func miqt_exec_callback_QQuickPaintedItem_hoverLeaveEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QHoverEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHoverEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_HoverLeaveEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_DragEnterEvent(param1 *qt.QDragEnterEvent) {

	C.QQuickPaintedItem_virtualbase_dragEnterEvent(unsafe.Pointer(this.h), (*C.QDragEnterEvent)(param1.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnDragEnterEvent(slot func(super func(param1 *qt.QDragEnterEvent), param1 *qt.QDragEnterEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_dragEnterEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_dragEnterEvent
func miqt_exec_callback_QQuickPaintedItem_dragEnterEvent(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QDragEnterEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDragEnterEvent), param1 *qt.QDragEnterEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDragEnterEvent(unsafe.Pointer(param1))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_DragEnterEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_DragMoveEvent(param1 *qt.QDragMoveEvent) {

	C.QQuickPaintedItem_virtualbase_dragMoveEvent(unsafe.Pointer(this.h), (*C.QDragMoveEvent)(param1.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnDragMoveEvent(slot func(super func(param1 *qt.QDragMoveEvent), param1 *qt.QDragMoveEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_dragMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_dragMoveEvent
func miqt_exec_callback_QQuickPaintedItem_dragMoveEvent(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QDragMoveEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDragMoveEvent), param1 *qt.QDragMoveEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDragMoveEvent(unsafe.Pointer(param1))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_DragMoveEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_DragLeaveEvent(param1 *qt.QDragLeaveEvent) {

	C.QQuickPaintedItem_virtualbase_dragLeaveEvent(unsafe.Pointer(this.h), (*C.QDragLeaveEvent)(param1.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnDragLeaveEvent(slot func(super func(param1 *qt.QDragLeaveEvent), param1 *qt.QDragLeaveEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_dragLeaveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_dragLeaveEvent
func miqt_exec_callback_QQuickPaintedItem_dragLeaveEvent(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QDragLeaveEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDragLeaveEvent), param1 *qt.QDragLeaveEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDragLeaveEvent(unsafe.Pointer(param1))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_DragLeaveEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_DropEvent(param1 *qt.QDropEvent) {

	C.QQuickPaintedItem_virtualbase_dropEvent(unsafe.Pointer(this.h), (*C.QDropEvent)(param1.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnDropEvent(slot func(super func(param1 *qt.QDropEvent), param1 *qt.QDropEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_dropEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_dropEvent
func miqt_exec_callback_QQuickPaintedItem_dropEvent(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QDropEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDropEvent), param1 *qt.QDropEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDropEvent(unsafe.Pointer(param1))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_DropEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_ChildMouseEventFilter(param1 *QQuickItem, param2 *qt.QEvent) bool {

	return (bool)(C.QQuickPaintedItem_virtualbase_childMouseEventFilter(unsafe.Pointer(this.h), param1.cPointer(), (*C.QEvent)(param2.UnsafePointer())))

}
func (this *QQuickPaintedItem) OnChildMouseEventFilter(slot func(super func(param1 *QQuickItem, param2 *qt.QEvent) bool, param1 *QQuickItem, param2 *qt.QEvent) bool) {
	ok := C.QQuickPaintedItem_override_virtual_childMouseEventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_childMouseEventFilter
func miqt_exec_callback_QQuickPaintedItem_childMouseEventFilter(self *C.QQuickPaintedItem, cb C.intptr_t, param1 *C.QQuickItem, param2 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *QQuickItem, param2 *qt.QEvent) bool, param1 *QQuickItem, param2 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQuickItem(param1)

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(param2))

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_ChildMouseEventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickPaintedItem) callVirtualBase_WindowDeactivateEvent() {

	C.QQuickPaintedItem_virtualbase_windowDeactivateEvent(unsafe.Pointer(this.h))

}
func (this *QQuickPaintedItem) OnWindowDeactivateEvent(slot func(super func())) {
	ok := C.QQuickPaintedItem_override_virtual_windowDeactivateEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_windowDeactivateEvent
func miqt_exec_callback_QQuickPaintedItem_windowDeactivateEvent(self *C.QQuickPaintedItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_WindowDeactivateEvent)

}

func (this *QQuickPaintedItem) callVirtualBase_GeometryChanged(newGeometry *qt.QRectF, oldGeometry *qt.QRectF) {

	C.QQuickPaintedItem_virtualbase_geometryChanged(unsafe.Pointer(this.h), (*C.QRectF)(newGeometry.UnsafePointer()), (*C.QRectF)(oldGeometry.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnGeometryChanged(slot func(super func(newGeometry *qt.QRectF, oldGeometry *qt.QRectF), newGeometry *qt.QRectF, oldGeometry *qt.QRectF)) {
	ok := C.QQuickPaintedItem_override_virtual_geometryChanged(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_geometryChanged
func miqt_exec_callback_QQuickPaintedItem_geometryChanged(self *C.QQuickPaintedItem, cb C.intptr_t, newGeometry *C.QRectF, oldGeometry *C.QRectF) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(newGeometry *qt.QRectF, oldGeometry *qt.QRectF), newGeometry *qt.QRectF, oldGeometry *qt.QRectF))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQRectF(unsafe.Pointer(newGeometry))

	slotval2 := qt.UnsafeNewQRectF(unsafe.Pointer(oldGeometry))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_GeometryChanged, slotval1, slotval2)

}

func (this *QQuickPaintedItem) callVirtualBase_UpdatePolish() {

	C.QQuickPaintedItem_virtualbase_updatePolish(unsafe.Pointer(this.h))

}
func (this *QQuickPaintedItem) OnUpdatePolish(slot func(super func())) {
	ok := C.QQuickPaintedItem_override_virtual_updatePolish(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_updatePolish
func miqt_exec_callback_QQuickPaintedItem_updatePolish(self *C.QQuickPaintedItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_UpdatePolish)

}

func (this *QQuickPaintedItem) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQuickPaintedItem_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickPaintedItem) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQuickPaintedItem_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_eventFilter
func miqt_exec_callback_QQuickPaintedItem_eventFilter(self *C.QQuickPaintedItem, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickPaintedItem) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQuickPaintedItem_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_timerEvent
func miqt_exec_callback_QQuickPaintedItem_timerEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQuickPaintedItem_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_childEvent
func miqt_exec_callback_QQuickPaintedItem_childEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQuickPaintedItem_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQuickPaintedItem_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_customEvent
func miqt_exec_callback_QQuickPaintedItem_customEvent(self *C.QQuickPaintedItem, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQuickPaintedItem_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickPaintedItem_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_connectNotify
func miqt_exec_callback_QQuickPaintedItem_connectNotify(self *C.QQuickPaintedItem, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQuickPaintedItem) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQuickPaintedItem_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickPaintedItem) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickPaintedItem_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickPaintedItem_disconnectNotify
func miqt_exec_callback_QQuickPaintedItem_disconnectNotify(self *C.QQuickPaintedItem, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickPaintedItem{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQuickPaintedItem) Delete() {
	C.QQuickPaintedItem_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickPaintedItem) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickPaintedItem) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
