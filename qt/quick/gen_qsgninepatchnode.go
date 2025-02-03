package quick

/*

#include "gen_qsgninepatchnode.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"unsafe"
)

type QSGNinePatchNode struct {
	h *C.QSGNinePatchNode
	*QSGGeometryNode
}

func (this *QSGNinePatchNode) cPointer() *C.QSGNinePatchNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGNinePatchNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGNinePatchNode constructs the type using only CGO pointers.
func newQSGNinePatchNode(h *C.QSGNinePatchNode) *QSGNinePatchNode {
	if h == nil {
		return nil
	}
	var outptr_QSGGeometryNode *C.QSGGeometryNode = nil
	C.QSGNinePatchNode_virtbase(h, &outptr_QSGGeometryNode)

	return &QSGNinePatchNode{h: h,
		QSGGeometryNode: newQSGGeometryNode(outptr_QSGGeometryNode)}
}

// UnsafeNewQSGNinePatchNode constructs the type using only unsafe pointers.
func UnsafeNewQSGNinePatchNode(h unsafe.Pointer) *QSGNinePatchNode {
	return newQSGNinePatchNode((*C.QSGNinePatchNode)(h))
}

func (this *QSGNinePatchNode) SetTexture(texture *QSGTexture) {
	C.QSGNinePatchNode_setTexture(this.h, texture.cPointer())
}

func (this *QSGNinePatchNode) SetBounds(bounds *qt.QRectF) {
	C.QSGNinePatchNode_setBounds(this.h, (*C.QRectF)(bounds.UnsafePointer()))
}

func (this *QSGNinePatchNode) SetDevicePixelRatio(ratio float64) {
	C.QSGNinePatchNode_setDevicePixelRatio(this.h, (C.double)(ratio))
}

func (this *QSGNinePatchNode) SetPadding(left float64, top float64, right float64, bottom float64) {
	C.QSGNinePatchNode_setPadding(this.h, (C.double)(left), (C.double)(top), (C.double)(right), (C.double)(bottom))
}

func (this *QSGNinePatchNode) Update() {
	C.QSGNinePatchNode_update(this.h)
}

func QSGNinePatchNode_RebuildGeometry(texture *QSGTexture, geometry *QSGGeometry, padding *qt.QVector4D, bounds *qt.QRectF, dpr float64) {
	C.QSGNinePatchNode_rebuildGeometry(texture.cPointer(), geometry.cPointer(), (*C.QVector4D)(padding.UnsafePointer()), (*C.QRectF)(bounds.UnsafePointer()), (C.double)(dpr))
}

// Delete this object from C++ memory.
func (this *QSGNinePatchNode) Delete() {
	C.QSGNinePatchNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGNinePatchNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGNinePatchNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
