package quick

/*

#include "gen_qsgsimplerectnode.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGSimpleRectNode struct {
	h *C.QSGSimpleRectNode
	*QSGGeometryNode
}

func (this *QSGSimpleRectNode) cPointer() *C.QSGSimpleRectNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGSimpleRectNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGSimpleRectNode constructs the type using only CGO pointers.
func newQSGSimpleRectNode(h *C.QSGSimpleRectNode) *QSGSimpleRectNode {
	if h == nil {
		return nil
	}
	var outptr_QSGGeometryNode *C.QSGGeometryNode = nil
	C.QSGSimpleRectNode_virtbase(h, &outptr_QSGGeometryNode)

	return &QSGSimpleRectNode{h: h,
		QSGGeometryNode: newQSGGeometryNode(outptr_QSGGeometryNode)}
}

// UnsafeNewQSGSimpleRectNode constructs the type using only unsafe pointers.
func UnsafeNewQSGSimpleRectNode(h unsafe.Pointer) *QSGSimpleRectNode {
	return newQSGSimpleRectNode((*C.QSGSimpleRectNode)(h))
}

// NewQSGSimpleRectNode constructs a new QSGSimpleRectNode object.
func NewQSGSimpleRectNode(rect *qt.QRectF, color *qt.QColor) *QSGSimpleRectNode {

	return newQSGSimpleRectNode(C.QSGSimpleRectNode_new((*C.QRectF)(rect.UnsafePointer()), (*C.QColor)(color.UnsafePointer())))
}

// NewQSGSimpleRectNode2 constructs a new QSGSimpleRectNode object.
func NewQSGSimpleRectNode2() *QSGSimpleRectNode {

	return newQSGSimpleRectNode(C.QSGSimpleRectNode_new2())
}

func (this *QSGSimpleRectNode) SetRect(rect *qt.QRectF) {
	C.QSGSimpleRectNode_setRect(this.h, (*C.QRectF)(rect.UnsafePointer()))
}

func (this *QSGSimpleRectNode) SetRect2(x float64, y float64, w float64, h float64) {
	C.QSGSimpleRectNode_setRect2(this.h, (C.double)(x), (C.double)(y), (C.double)(w), (C.double)(h))
}

func (this *QSGSimpleRectNode) Rect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGSimpleRectNode_rect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGSimpleRectNode) SetColor(color *qt.QColor) {
	C.QSGSimpleRectNode_setColor(this.h, (*C.QColor)(color.UnsafePointer()))
}

func (this *QSGSimpleRectNode) Color() *qt.QColor {
	_goptr := qt.UnsafeNewQColor(unsafe.Pointer(C.QSGSimpleRectNode_color(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGSimpleRectNode) callVirtualBase_IsSubtreeBlocked() bool {

	return (bool)(C.QSGSimpleRectNode_virtualbase_isSubtreeBlocked(unsafe.Pointer(this.h)))

}
func (this *QSGSimpleRectNode) OnIsSubtreeBlocked(slot func(super func() bool) bool) {
	ok := C.QSGSimpleRectNode_override_virtual_isSubtreeBlocked(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGSimpleRectNode_isSubtreeBlocked
func miqt_exec_callback_QSGSimpleRectNode_isSubtreeBlocked(self *C.QSGSimpleRectNode, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGSimpleRectNode{h: self}).callVirtualBase_IsSubtreeBlocked)

	return (C.bool)(virtualReturn)

}

func (this *QSGSimpleRectNode) callVirtualBase_Preprocess() {

	C.QSGSimpleRectNode_virtualbase_preprocess(unsafe.Pointer(this.h))

}
func (this *QSGSimpleRectNode) OnPreprocess(slot func(super func())) {
	ok := C.QSGSimpleRectNode_override_virtual_preprocess(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGSimpleRectNode_preprocess
func miqt_exec_callback_QSGSimpleRectNode_preprocess(self *C.QSGSimpleRectNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGSimpleRectNode{h: self}).callVirtualBase_Preprocess)

}

// Delete this object from C++ memory.
func (this *QSGSimpleRectNode) Delete() {
	C.QSGSimpleRectNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGSimpleRectNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGSimpleRectNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
