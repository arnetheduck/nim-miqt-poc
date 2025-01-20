package quick

/*

#include "gen_qquickframebufferobject.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQuickFramebufferObject struct {
	h *C.QQuickFramebufferObject
	*QQuickItem
}

func (this *QQuickFramebufferObject) cPointer() *C.QQuickFramebufferObject {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickFramebufferObject) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickFramebufferObject constructs the type using only CGO pointers.
func newQQuickFramebufferObject(h *C.QQuickFramebufferObject) *QQuickFramebufferObject {
	if h == nil {
		return nil
	}
	var outptr_QQuickItem *C.QQuickItem = nil
	C.QQuickFramebufferObject_virtbase(h, &outptr_QQuickItem)

	return &QQuickFramebufferObject{h: h,
		QQuickItem: newQQuickItem(outptr_QQuickItem)}
}

// UnsafeNewQQuickFramebufferObject constructs the type using only unsafe pointers.
func UnsafeNewQQuickFramebufferObject(h unsafe.Pointer) *QQuickFramebufferObject {
	return newQQuickFramebufferObject((*C.QQuickFramebufferObject)(h))
}

// NewQQuickFramebufferObject constructs a new QQuickFramebufferObject object.
func NewQQuickFramebufferObject() *QQuickFramebufferObject {

	return newQQuickFramebufferObject(C.QQuickFramebufferObject_new())
}

// NewQQuickFramebufferObject2 constructs a new QQuickFramebufferObject object.
func NewQQuickFramebufferObject2(parent *QQuickItem) *QQuickFramebufferObject {

	return newQQuickFramebufferObject(C.QQuickFramebufferObject_new2(parent.cPointer()))
}

func (this *QQuickFramebufferObject) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickFramebufferObject_metaObject(this.h)))
}

func (this *QQuickFramebufferObject) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickFramebufferObject_metacast(this.h, param1_Cstring))
}

func (this *QQuickFramebufferObject) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickFramebufferObject_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickFramebufferObject_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickFramebufferObject_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickFramebufferObject_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickFramebufferObject_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickFramebufferObject) TextureFollowsItemSize() bool {
	return (bool)(C.QQuickFramebufferObject_textureFollowsItemSize(this.h))
}

func (this *QQuickFramebufferObject) SetTextureFollowsItemSize(follows bool) {
	C.QQuickFramebufferObject_setTextureFollowsItemSize(this.h, (C.bool)(follows))
}

func (this *QQuickFramebufferObject) MirrorVertically() bool {
	return (bool)(C.QQuickFramebufferObject_mirrorVertically(this.h))
}

func (this *QQuickFramebufferObject) SetMirrorVertically(enable bool) {
	C.QQuickFramebufferObject_setMirrorVertically(this.h, (C.bool)(enable))
}

func (this *QQuickFramebufferObject) CreateRenderer() *QQuickFramebufferObject__Renderer {
	return newQQuickFramebufferObject__Renderer(C.QQuickFramebufferObject_createRenderer(this.h))
}

func (this *QQuickFramebufferObject) IsTextureProvider() bool {
	return (bool)(C.QQuickFramebufferObject_isTextureProvider(this.h))
}

func (this *QQuickFramebufferObject) TextureProvider() *QSGTextureProvider {
	return newQSGTextureProvider(C.QQuickFramebufferObject_textureProvider(this.h))
}

func (this *QQuickFramebufferObject) ReleaseResources() {
	C.QQuickFramebufferObject_releaseResources(this.h)
}

func (this *QQuickFramebufferObject) TextureFollowsItemSizeChanged(param1 bool) {
	C.QQuickFramebufferObject_textureFollowsItemSizeChanged(this.h, (C.bool)(param1))
}
func (this *QQuickFramebufferObject) OnTextureFollowsItemSizeChanged(slot func(param1 bool)) {
	C.QQuickFramebufferObject_connect_textureFollowsItemSizeChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickFramebufferObject_textureFollowsItemSizeChanged
func miqt_exec_callback_QQuickFramebufferObject_textureFollowsItemSizeChanged(cb C.intptr_t, param1 C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(param1)

	gofunc(slotval1)
}

func (this *QQuickFramebufferObject) MirrorVerticallyChanged(param1 bool) {
	C.QQuickFramebufferObject_mirrorVerticallyChanged(this.h, (C.bool)(param1))
}
func (this *QQuickFramebufferObject) OnMirrorVerticallyChanged(slot func(param1 bool)) {
	C.QQuickFramebufferObject_connect_mirrorVerticallyChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickFramebufferObject_mirrorVerticallyChanged
func miqt_exec_callback_QQuickFramebufferObject_mirrorVerticallyChanged(cb C.intptr_t, param1 C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(param1)

	gofunc(slotval1)
}

func QQuickFramebufferObject_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickFramebufferObject_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickFramebufferObject_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickFramebufferObject_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickFramebufferObject_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickFramebufferObject_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickFramebufferObject_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickFramebufferObject_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickFramebufferObject) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickFramebufferObject_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQuickFramebufferObject) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQuickFramebufferObject_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_metaObject
func miqt_exec_callback_QQuickFramebufferObject_metaObject(self *C.QQuickFramebufferObject, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQuickFramebufferObject) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQuickFramebufferObject_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQuickFramebufferObject) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQuickFramebufferObject_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_metacast
func miqt_exec_callback_QQuickFramebufferObject_metacast(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQuickFramebufferObject) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQuickFramebufferObject_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQuickFramebufferObject) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQuickFramebufferObject_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_metacall
func miqt_exec_callback_QQuickFramebufferObject_metacall(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QQuickFramebufferObject) OnCreateRenderer(slot func() *QQuickFramebufferObject__Renderer) {
	ok := C.QQuickFramebufferObject_override_virtual_createRenderer(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_createRenderer
func miqt_exec_callback_QQuickFramebufferObject_createRenderer(self *C.QQuickFramebufferObject, cb C.intptr_t) *C.QQuickFramebufferObject__Renderer {
	gofunc, ok := cgo.Handle(cb).Value().(func() *QQuickFramebufferObject__Renderer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return virtualReturn.cPointer()

}

func (this *QQuickFramebufferObject) callVirtualBase_IsTextureProvider() bool {

	return (bool)(C.QQuickFramebufferObject_virtualbase_isTextureProvider(unsafe.Pointer(this.h)))

}
func (this *QQuickFramebufferObject) OnIsTextureProvider(slot func(super func() bool) bool) {
	ok := C.QQuickFramebufferObject_override_virtual_isTextureProvider(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_isTextureProvider
func miqt_exec_callback_QQuickFramebufferObject_isTextureProvider(self *C.QQuickFramebufferObject, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_IsTextureProvider)

	return (C.bool)(virtualReturn)

}

func (this *QQuickFramebufferObject) callVirtualBase_TextureProvider() *QSGTextureProvider {

	return newQSGTextureProvider(C.QQuickFramebufferObject_virtualbase_textureProvider(unsafe.Pointer(this.h)))

}
func (this *QQuickFramebufferObject) OnTextureProvider(slot func(super func() *QSGTextureProvider) *QSGTextureProvider) {
	ok := C.QQuickFramebufferObject_override_virtual_textureProvider(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_textureProvider
func miqt_exec_callback_QQuickFramebufferObject_textureProvider(self *C.QQuickFramebufferObject, cb C.intptr_t) *C.QSGTextureProvider {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGTextureProvider) *QSGTextureProvider)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_TextureProvider)

	return virtualReturn.cPointer()

}

func (this *QQuickFramebufferObject) callVirtualBase_ReleaseResources() {

	C.QQuickFramebufferObject_virtualbase_releaseResources(unsafe.Pointer(this.h))

}
func (this *QQuickFramebufferObject) OnReleaseResources(slot func(super func())) {
	ok := C.QQuickFramebufferObject_override_virtual_releaseResources(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_releaseResources
func miqt_exec_callback_QQuickFramebufferObject_releaseResources(self *C.QQuickFramebufferObject, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_ReleaseResources)

}

func (this *QQuickFramebufferObject) callVirtualBase_GeometryChanged(newGeometry *qt.QRectF, oldGeometry *qt.QRectF) {

	C.QQuickFramebufferObject_virtualbase_geometryChanged(unsafe.Pointer(this.h), (*C.QRectF)(newGeometry.UnsafePointer()), (*C.QRectF)(oldGeometry.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnGeometryChanged(slot func(super func(newGeometry *qt.QRectF, oldGeometry *qt.QRectF), newGeometry *qt.QRectF, oldGeometry *qt.QRectF)) {
	ok := C.QQuickFramebufferObject_override_virtual_geometryChanged(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_geometryChanged
func miqt_exec_callback_QQuickFramebufferObject_geometryChanged(self *C.QQuickFramebufferObject, cb C.intptr_t, newGeometry *C.QRectF, oldGeometry *C.QRectF) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(newGeometry *qt.QRectF, oldGeometry *qt.QRectF), newGeometry *qt.QRectF, oldGeometry *qt.QRectF))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQRectF(unsafe.Pointer(newGeometry))

	slotval2 := qt.UnsafeNewQRectF(unsafe.Pointer(oldGeometry))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_GeometryChanged, slotval1, slotval2)

}

func (this *QQuickFramebufferObject) callVirtualBase_UpdatePaintNode(param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode {

	return newQSGNode(C.QQuickFramebufferObject_virtualbase_updatePaintNode(unsafe.Pointer(this.h), param1.cPointer(), param2.cPointer()))

}
func (this *QQuickFramebufferObject) OnUpdatePaintNode(slot func(super func(param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode, param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode) {
	ok := C.QQuickFramebufferObject_override_virtual_updatePaintNode(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_updatePaintNode
func miqt_exec_callback_QQuickFramebufferObject_updatePaintNode(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QSGNode, param2 *C.QQuickItem__UpdatePaintNodeData) *C.QSGNode {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode, param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGNode(param1)

	slotval2 := newQQuickItem__UpdatePaintNodeData(param2)

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_UpdatePaintNode, slotval1, slotval2)

	return virtualReturn.cPointer()

}

func (this *QQuickFramebufferObject) callVirtualBase_BoundingRect() *qt.QRectF {

	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickFramebufferObject_virtualbase_boundingRect(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickFramebufferObject) OnBoundingRect(slot func(super func() *qt.QRectF) *qt.QRectF) {
	ok := C.QQuickFramebufferObject_override_virtual_boundingRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_boundingRect
func miqt_exec_callback_QQuickFramebufferObject_boundingRect(self *C.QQuickFramebufferObject, cb C.intptr_t) *C.QRectF {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QRectF) *qt.QRectF)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_BoundingRect)

	return (*C.QRectF)(virtualReturn.UnsafePointer())

}

func (this *QQuickFramebufferObject) callVirtualBase_ClipRect() *qt.QRectF {

	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickFramebufferObject_virtualbase_clipRect(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickFramebufferObject) OnClipRect(slot func(super func() *qt.QRectF) *qt.QRectF) {
	ok := C.QQuickFramebufferObject_override_virtual_clipRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_clipRect
func miqt_exec_callback_QQuickFramebufferObject_clipRect(self *C.QQuickFramebufferObject, cb C.intptr_t) *C.QRectF {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QRectF) *qt.QRectF)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_ClipRect)

	return (*C.QRectF)(virtualReturn.UnsafePointer())

}

func (this *QQuickFramebufferObject) callVirtualBase_Contains(point *qt.QPointF) bool {

	return (bool)(C.QQuickFramebufferObject_virtualbase_contains(unsafe.Pointer(this.h), (*C.QPointF)(point.UnsafePointer())))

}
func (this *QQuickFramebufferObject) OnContains(slot func(super func(point *qt.QPointF) bool, point *qt.QPointF) bool) {
	ok := C.QQuickFramebufferObject_override_virtual_contains(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_contains
func miqt_exec_callback_QQuickFramebufferObject_contains(self *C.QQuickFramebufferObject, cb C.intptr_t, point *C.QPointF) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(point *qt.QPointF) bool, point *qt.QPointF) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQPointF(unsafe.Pointer(point))

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_Contains, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickFramebufferObject) callVirtualBase_InputMethodQuery(query qt.InputMethodQuery) *qt.QVariant {

	_goptr := qt.UnsafeNewQVariant(unsafe.Pointer(C.QQuickFramebufferObject_virtualbase_inputMethodQuery(unsafe.Pointer(this.h), (C.int)(query))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickFramebufferObject) OnInputMethodQuery(slot func(super func(query qt.InputMethodQuery) *qt.QVariant, query qt.InputMethodQuery) *qt.QVariant) {
	ok := C.QQuickFramebufferObject_override_virtual_inputMethodQuery(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_inputMethodQuery
func miqt_exec_callback_QQuickFramebufferObject_inputMethodQuery(self *C.QQuickFramebufferObject, cb C.intptr_t, query C.int) *C.QVariant {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(query qt.InputMethodQuery) *qt.QVariant, query qt.InputMethodQuery) *qt.QVariant)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.InputMethodQuery)(query)

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_InputMethodQuery, slotval1)

	return (*C.QVariant)(virtualReturn.UnsafePointer())

}

func (this *QQuickFramebufferObject) callVirtualBase_Event(param1 *qt.QEvent) bool {

	return (bool)(C.QQuickFramebufferObject_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(param1.UnsafePointer())))

}
func (this *QQuickFramebufferObject) OnEvent(slot func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool) {
	ok := C.QQuickFramebufferObject_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_event
func miqt_exec_callback_QQuickFramebufferObject_event(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(param1))

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickFramebufferObject) callVirtualBase_ItemChange(param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData) {

	C.QQuickFramebufferObject_virtualbase_itemChange(unsafe.Pointer(this.h), (C.int)(param1), param2.cPointer())

}
func (this *QQuickFramebufferObject) OnItemChange(slot func(super func(param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData), param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData)) {
	ok := C.QQuickFramebufferObject_override_virtual_itemChange(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_itemChange
func miqt_exec_callback_QQuickFramebufferObject_itemChange(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 C.int, param2 *C.QQuickItem__ItemChangeData) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData), param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QQuickItem__ItemChange)(param1)

	slotval2 := newQQuickItem__ItemChangeData(param2)

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_ItemChange, slotval1, slotval2)

}

func (this *QQuickFramebufferObject) callVirtualBase_ClassBegin() {

	C.QQuickFramebufferObject_virtualbase_classBegin(unsafe.Pointer(this.h))

}
func (this *QQuickFramebufferObject) OnClassBegin(slot func(super func())) {
	ok := C.QQuickFramebufferObject_override_virtual_classBegin(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_classBegin
func miqt_exec_callback_QQuickFramebufferObject_classBegin(self *C.QQuickFramebufferObject, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_ClassBegin)

}

func (this *QQuickFramebufferObject) callVirtualBase_ComponentComplete() {

	C.QQuickFramebufferObject_virtualbase_componentComplete(unsafe.Pointer(this.h))

}
func (this *QQuickFramebufferObject) OnComponentComplete(slot func(super func())) {
	ok := C.QQuickFramebufferObject_override_virtual_componentComplete(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_componentComplete
func miqt_exec_callback_QQuickFramebufferObject_componentComplete(self *C.QQuickFramebufferObject, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_ComponentComplete)

}

func (this *QQuickFramebufferObject) callVirtualBase_KeyPressEvent(event *qt.QKeyEvent) {

	C.QQuickFramebufferObject_virtualbase_keyPressEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnKeyPressEvent(slot func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_keyPressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_keyPressEvent
func miqt_exec_callback_QQuickFramebufferObject_keyPressEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_KeyPressEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_KeyReleaseEvent(event *qt.QKeyEvent) {

	C.QQuickFramebufferObject_virtualbase_keyReleaseEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnKeyReleaseEvent(slot func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_keyReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_keyReleaseEvent
func miqt_exec_callback_QQuickFramebufferObject_keyReleaseEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_KeyReleaseEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_InputMethodEvent(param1 *qt.QInputMethodEvent) {

	C.QQuickFramebufferObject_virtualbase_inputMethodEvent(unsafe.Pointer(this.h), (*C.QInputMethodEvent)(param1.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnInputMethodEvent(slot func(super func(param1 *qt.QInputMethodEvent), param1 *qt.QInputMethodEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_inputMethodEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_inputMethodEvent
func miqt_exec_callback_QQuickFramebufferObject_inputMethodEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QInputMethodEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QInputMethodEvent), param1 *qt.QInputMethodEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQInputMethodEvent(unsafe.Pointer(param1))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_InputMethodEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_FocusInEvent(param1 *qt.QFocusEvent) {

	C.QQuickFramebufferObject_virtualbase_focusInEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnFocusInEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_focusInEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_focusInEvent
func miqt_exec_callback_QQuickFramebufferObject_focusInEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_FocusInEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_FocusOutEvent(param1 *qt.QFocusEvent) {

	C.QQuickFramebufferObject_virtualbase_focusOutEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnFocusOutEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_focusOutEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_focusOutEvent
func miqt_exec_callback_QQuickFramebufferObject_focusOutEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_FocusOutEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_MousePressEvent(event *qt.QMouseEvent) {

	C.QQuickFramebufferObject_virtualbase_mousePressEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnMousePressEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_mousePressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_mousePressEvent
func miqt_exec_callback_QQuickFramebufferObject_mousePressEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_MousePressEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_MouseMoveEvent(event *qt.QMouseEvent) {

	C.QQuickFramebufferObject_virtualbase_mouseMoveEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnMouseMoveEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_mouseMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_mouseMoveEvent
func miqt_exec_callback_QQuickFramebufferObject_mouseMoveEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_MouseMoveEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_MouseReleaseEvent(event *qt.QMouseEvent) {

	C.QQuickFramebufferObject_virtualbase_mouseReleaseEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnMouseReleaseEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_mouseReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_mouseReleaseEvent
func miqt_exec_callback_QQuickFramebufferObject_mouseReleaseEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_MouseReleaseEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_MouseDoubleClickEvent(event *qt.QMouseEvent) {

	C.QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnMouseDoubleClickEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_mouseDoubleClickEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_mouseDoubleClickEvent
func miqt_exec_callback_QQuickFramebufferObject_mouseDoubleClickEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_MouseDoubleClickEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_MouseUngrabEvent() {

	C.QQuickFramebufferObject_virtualbase_mouseUngrabEvent(unsafe.Pointer(this.h))

}
func (this *QQuickFramebufferObject) OnMouseUngrabEvent(slot func(super func())) {
	ok := C.QQuickFramebufferObject_override_virtual_mouseUngrabEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_mouseUngrabEvent
func miqt_exec_callback_QQuickFramebufferObject_mouseUngrabEvent(self *C.QQuickFramebufferObject, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_MouseUngrabEvent)

}

func (this *QQuickFramebufferObject) callVirtualBase_TouchUngrabEvent() {

	C.QQuickFramebufferObject_virtualbase_touchUngrabEvent(unsafe.Pointer(this.h))

}
func (this *QQuickFramebufferObject) OnTouchUngrabEvent(slot func(super func())) {
	ok := C.QQuickFramebufferObject_override_virtual_touchUngrabEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_touchUngrabEvent
func miqt_exec_callback_QQuickFramebufferObject_touchUngrabEvent(self *C.QQuickFramebufferObject, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_TouchUngrabEvent)

}

func (this *QQuickFramebufferObject) callVirtualBase_WheelEvent(event *qt.QWheelEvent) {

	C.QQuickFramebufferObject_virtualbase_wheelEvent(unsafe.Pointer(this.h), (*C.QWheelEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnWheelEvent(slot func(super func(event *qt.QWheelEvent), event *qt.QWheelEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_wheelEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_wheelEvent
func miqt_exec_callback_QQuickFramebufferObject_wheelEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QWheelEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QWheelEvent), event *qt.QWheelEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQWheelEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_WheelEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_TouchEvent(event *qt.QTouchEvent) {

	C.QQuickFramebufferObject_virtualbase_touchEvent(unsafe.Pointer(this.h), (*C.QTouchEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnTouchEvent(slot func(super func(event *qt.QTouchEvent), event *qt.QTouchEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_touchEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_touchEvent
func miqt_exec_callback_QQuickFramebufferObject_touchEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QTouchEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTouchEvent), event *qt.QTouchEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTouchEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_TouchEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_HoverEnterEvent(event *qt.QHoverEvent) {

	C.QQuickFramebufferObject_virtualbase_hoverEnterEvent(unsafe.Pointer(this.h), (*C.QHoverEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnHoverEnterEvent(slot func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_hoverEnterEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_hoverEnterEvent
func miqt_exec_callback_QQuickFramebufferObject_hoverEnterEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QHoverEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHoverEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_HoverEnterEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_HoverMoveEvent(event *qt.QHoverEvent) {

	C.QQuickFramebufferObject_virtualbase_hoverMoveEvent(unsafe.Pointer(this.h), (*C.QHoverEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnHoverMoveEvent(slot func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_hoverMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_hoverMoveEvent
func miqt_exec_callback_QQuickFramebufferObject_hoverMoveEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QHoverEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHoverEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_HoverMoveEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_HoverLeaveEvent(event *qt.QHoverEvent) {

	C.QQuickFramebufferObject_virtualbase_hoverLeaveEvent(unsafe.Pointer(this.h), (*C.QHoverEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnHoverLeaveEvent(slot func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_hoverLeaveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_hoverLeaveEvent
func miqt_exec_callback_QQuickFramebufferObject_hoverLeaveEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QHoverEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHoverEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_HoverLeaveEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_DragEnterEvent(param1 *qt.QDragEnterEvent) {

	C.QQuickFramebufferObject_virtualbase_dragEnterEvent(unsafe.Pointer(this.h), (*C.QDragEnterEvent)(param1.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnDragEnterEvent(slot func(super func(param1 *qt.QDragEnterEvent), param1 *qt.QDragEnterEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_dragEnterEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_dragEnterEvent
func miqt_exec_callback_QQuickFramebufferObject_dragEnterEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QDragEnterEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDragEnterEvent), param1 *qt.QDragEnterEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDragEnterEvent(unsafe.Pointer(param1))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_DragEnterEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_DragMoveEvent(param1 *qt.QDragMoveEvent) {

	C.QQuickFramebufferObject_virtualbase_dragMoveEvent(unsafe.Pointer(this.h), (*C.QDragMoveEvent)(param1.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnDragMoveEvent(slot func(super func(param1 *qt.QDragMoveEvent), param1 *qt.QDragMoveEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_dragMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_dragMoveEvent
func miqt_exec_callback_QQuickFramebufferObject_dragMoveEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QDragMoveEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDragMoveEvent), param1 *qt.QDragMoveEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDragMoveEvent(unsafe.Pointer(param1))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_DragMoveEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_DragLeaveEvent(param1 *qt.QDragLeaveEvent) {

	C.QQuickFramebufferObject_virtualbase_dragLeaveEvent(unsafe.Pointer(this.h), (*C.QDragLeaveEvent)(param1.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnDragLeaveEvent(slot func(super func(param1 *qt.QDragLeaveEvent), param1 *qt.QDragLeaveEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_dragLeaveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_dragLeaveEvent
func miqt_exec_callback_QQuickFramebufferObject_dragLeaveEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QDragLeaveEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDragLeaveEvent), param1 *qt.QDragLeaveEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDragLeaveEvent(unsafe.Pointer(param1))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_DragLeaveEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_DropEvent(param1 *qt.QDropEvent) {

	C.QQuickFramebufferObject_virtualbase_dropEvent(unsafe.Pointer(this.h), (*C.QDropEvent)(param1.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnDropEvent(slot func(super func(param1 *qt.QDropEvent), param1 *qt.QDropEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_dropEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_dropEvent
func miqt_exec_callback_QQuickFramebufferObject_dropEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QDropEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDropEvent), param1 *qt.QDropEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDropEvent(unsafe.Pointer(param1))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_DropEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_ChildMouseEventFilter(param1 *QQuickItem, param2 *qt.QEvent) bool {

	return (bool)(C.QQuickFramebufferObject_virtualbase_childMouseEventFilter(unsafe.Pointer(this.h), param1.cPointer(), (*C.QEvent)(param2.UnsafePointer())))

}
func (this *QQuickFramebufferObject) OnChildMouseEventFilter(slot func(super func(param1 *QQuickItem, param2 *qt.QEvent) bool, param1 *QQuickItem, param2 *qt.QEvent) bool) {
	ok := C.QQuickFramebufferObject_override_virtual_childMouseEventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_childMouseEventFilter
func miqt_exec_callback_QQuickFramebufferObject_childMouseEventFilter(self *C.QQuickFramebufferObject, cb C.intptr_t, param1 *C.QQuickItem, param2 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *QQuickItem, param2 *qt.QEvent) bool, param1 *QQuickItem, param2 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQuickItem(param1)

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(param2))

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_ChildMouseEventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickFramebufferObject) callVirtualBase_WindowDeactivateEvent() {

	C.QQuickFramebufferObject_virtualbase_windowDeactivateEvent(unsafe.Pointer(this.h))

}
func (this *QQuickFramebufferObject) OnWindowDeactivateEvent(slot func(super func())) {
	ok := C.QQuickFramebufferObject_override_virtual_windowDeactivateEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_windowDeactivateEvent
func miqt_exec_callback_QQuickFramebufferObject_windowDeactivateEvent(self *C.QQuickFramebufferObject, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_WindowDeactivateEvent)

}

func (this *QQuickFramebufferObject) callVirtualBase_UpdatePolish() {

	C.QQuickFramebufferObject_virtualbase_updatePolish(unsafe.Pointer(this.h))

}
func (this *QQuickFramebufferObject) OnUpdatePolish(slot func(super func())) {
	ok := C.QQuickFramebufferObject_override_virtual_updatePolish(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_updatePolish
func miqt_exec_callback_QQuickFramebufferObject_updatePolish(self *C.QQuickFramebufferObject, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_UpdatePolish)

}

func (this *QQuickFramebufferObject) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQuickFramebufferObject_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickFramebufferObject) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQuickFramebufferObject_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_eventFilter
func miqt_exec_callback_QQuickFramebufferObject_eventFilter(self *C.QQuickFramebufferObject, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickFramebufferObject) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQuickFramebufferObject_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_timerEvent
func miqt_exec_callback_QQuickFramebufferObject_timerEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQuickFramebufferObject_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_childEvent
func miqt_exec_callback_QQuickFramebufferObject_childEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQuickFramebufferObject_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQuickFramebufferObject_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_customEvent
func miqt_exec_callback_QQuickFramebufferObject_customEvent(self *C.QQuickFramebufferObject, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQuickFramebufferObject_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickFramebufferObject_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_connectNotify
func miqt_exec_callback_QQuickFramebufferObject_connectNotify(self *C.QQuickFramebufferObject, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQuickFramebufferObject) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQuickFramebufferObject_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickFramebufferObject) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickFramebufferObject_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickFramebufferObject_disconnectNotify
func miqt_exec_callback_QQuickFramebufferObject_disconnectNotify(self *C.QQuickFramebufferObject, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickFramebufferObject{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQuickFramebufferObject) Delete() {
	C.QQuickFramebufferObject_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickFramebufferObject) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickFramebufferObject) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQuickFramebufferObject__Renderer struct {
	h *C.QQuickFramebufferObject__Renderer
}

func (this *QQuickFramebufferObject__Renderer) cPointer() *C.QQuickFramebufferObject__Renderer {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickFramebufferObject__Renderer) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickFramebufferObject__Renderer constructs the type using only CGO pointers.
func newQQuickFramebufferObject__Renderer(h *C.QQuickFramebufferObject__Renderer) *QQuickFramebufferObject__Renderer {
	if h == nil {
		return nil
	}

	return &QQuickFramebufferObject__Renderer{h: h}
}

// UnsafeNewQQuickFramebufferObject__Renderer constructs the type using only unsafe pointers.
func UnsafeNewQQuickFramebufferObject__Renderer(h unsafe.Pointer) *QQuickFramebufferObject__Renderer {
	return newQQuickFramebufferObject__Renderer((*C.QQuickFramebufferObject__Renderer)(h))
}
