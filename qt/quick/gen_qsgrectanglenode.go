package quick

/*

#include "gen_qsgrectanglenode.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"unsafe"
)

type QSGRectangleNode struct {
	h *C.QSGRectangleNode
	*QSGGeometryNode
}

func (this *QSGRectangleNode) cPointer() *C.QSGRectangleNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGRectangleNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGRectangleNode constructs the type using only CGO pointers.
func newQSGRectangleNode(h *C.QSGRectangleNode) *QSGRectangleNode {
	if h == nil {
		return nil
	}
	var outptr_QSGGeometryNode *C.QSGGeometryNode = nil
	C.QSGRectangleNode_virtbase(h, &outptr_QSGGeometryNode)

	return &QSGRectangleNode{h: h,
		QSGGeometryNode: newQSGGeometryNode(outptr_QSGGeometryNode)}
}

// UnsafeNewQSGRectangleNode constructs the type using only unsafe pointers.
func UnsafeNewQSGRectangleNode(h unsafe.Pointer) *QSGRectangleNode {
	return newQSGRectangleNode((*C.QSGRectangleNode)(h))
}

func (this *QSGRectangleNode) SetRect(rect *qt.QRectF) {
	C.QSGRectangleNode_setRect(this.h, (*C.QRectF)(rect.UnsafePointer()))
}

func (this *QSGRectangleNode) SetRect2(x float64, y float64, w float64, h float64) {
	C.QSGRectangleNode_setRect2(this.h, (C.double)(x), (C.double)(y), (C.double)(w), (C.double)(h))
}

func (this *QSGRectangleNode) Rect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGRectangleNode_rect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGRectangleNode) SetColor(color *qt.QColor) {
	C.QSGRectangleNode_setColor(this.h, (*C.QColor)(color.UnsafePointer()))
}

func (this *QSGRectangleNode) Color() *qt.QColor {
	_goptr := qt.UnsafeNewQColor(unsafe.Pointer(C.QSGRectangleNode_color(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

// Delete this object from C++ memory.
func (this *QSGRectangleNode) Delete() {
	C.QSGRectangleNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGRectangleNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGRectangleNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
