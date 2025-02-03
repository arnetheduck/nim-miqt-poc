package quick

/*

#include "gen_qsgsimpletexturenode.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGSimpleTextureNode__TextureCoordinatesTransformFlag int

const (
	QSGSimpleTextureNode__NoTransform        QSGSimpleTextureNode__TextureCoordinatesTransformFlag = 0
	QSGSimpleTextureNode__MirrorHorizontally QSGSimpleTextureNode__TextureCoordinatesTransformFlag = 1
	QSGSimpleTextureNode__MirrorVertically   QSGSimpleTextureNode__TextureCoordinatesTransformFlag = 2
)

type QSGSimpleTextureNode struct {
	h *C.QSGSimpleTextureNode
	*QSGGeometryNode
}

func (this *QSGSimpleTextureNode) cPointer() *C.QSGSimpleTextureNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGSimpleTextureNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGSimpleTextureNode constructs the type using only CGO pointers.
func newQSGSimpleTextureNode(h *C.QSGSimpleTextureNode) *QSGSimpleTextureNode {
	if h == nil {
		return nil
	}
	var outptr_QSGGeometryNode *C.QSGGeometryNode = nil
	C.QSGSimpleTextureNode_virtbase(h, &outptr_QSGGeometryNode)

	return &QSGSimpleTextureNode{h: h,
		QSGGeometryNode: newQSGGeometryNode(outptr_QSGGeometryNode)}
}

// UnsafeNewQSGSimpleTextureNode constructs the type using only unsafe pointers.
func UnsafeNewQSGSimpleTextureNode(h unsafe.Pointer) *QSGSimpleTextureNode {
	return newQSGSimpleTextureNode((*C.QSGSimpleTextureNode)(h))
}

// NewQSGSimpleTextureNode constructs a new QSGSimpleTextureNode object.
func NewQSGSimpleTextureNode() *QSGSimpleTextureNode {

	return newQSGSimpleTextureNode(C.QSGSimpleTextureNode_new())
}

func (this *QSGSimpleTextureNode) SetRect(rect *qt.QRectF) {
	C.QSGSimpleTextureNode_setRect(this.h, (*C.QRectF)(rect.UnsafePointer()))
}

func (this *QSGSimpleTextureNode) SetRect2(x float64, y float64, w float64, h float64) {
	C.QSGSimpleTextureNode_setRect2(this.h, (C.double)(x), (C.double)(y), (C.double)(w), (C.double)(h))
}

func (this *QSGSimpleTextureNode) Rect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGSimpleTextureNode_rect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGSimpleTextureNode) SetSourceRect(r *qt.QRectF) {
	C.QSGSimpleTextureNode_setSourceRect(this.h, (*C.QRectF)(r.UnsafePointer()))
}

func (this *QSGSimpleTextureNode) SetSourceRect2(x float64, y float64, w float64, h float64) {
	C.QSGSimpleTextureNode_setSourceRect2(this.h, (C.double)(x), (C.double)(y), (C.double)(w), (C.double)(h))
}

func (this *QSGSimpleTextureNode) SourceRect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGSimpleTextureNode_sourceRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGSimpleTextureNode) SetTexture(texture *QSGTexture) {
	C.QSGSimpleTextureNode_setTexture(this.h, texture.cPointer())
}

func (this *QSGSimpleTextureNode) Texture() *QSGTexture {
	return newQSGTexture(C.QSGSimpleTextureNode_texture(this.h))
}

func (this *QSGSimpleTextureNode) SetFiltering(filtering QSGTexture__Filtering) {
	C.QSGSimpleTextureNode_setFiltering(this.h, (C.int)(filtering))
}

func (this *QSGSimpleTextureNode) Filtering() QSGTexture__Filtering {
	return (QSGTexture__Filtering)(C.QSGSimpleTextureNode_filtering(this.h))
}

func (this *QSGSimpleTextureNode) SetTextureCoordinatesTransform(mode QSGSimpleTextureNode__TextureCoordinatesTransformFlag) {
	C.QSGSimpleTextureNode_setTextureCoordinatesTransform(this.h, (C.int)(mode))
}

func (this *QSGSimpleTextureNode) TextureCoordinatesTransform() QSGSimpleTextureNode__TextureCoordinatesTransformFlag {
	return (QSGSimpleTextureNode__TextureCoordinatesTransformFlag)(C.QSGSimpleTextureNode_textureCoordinatesTransform(this.h))
}

func (this *QSGSimpleTextureNode) SetOwnsTexture(owns bool) {
	C.QSGSimpleTextureNode_setOwnsTexture(this.h, (C.bool)(owns))
}

func (this *QSGSimpleTextureNode) OwnsTexture() bool {
	return (bool)(C.QSGSimpleTextureNode_ownsTexture(this.h))
}

func (this *QSGSimpleTextureNode) callVirtualBase_IsSubtreeBlocked() bool {

	return (bool)(C.QSGSimpleTextureNode_virtualbase_isSubtreeBlocked(unsafe.Pointer(this.h)))

}
func (this *QSGSimpleTextureNode) OnIsSubtreeBlocked(slot func(super func() bool) bool) {
	ok := C.QSGSimpleTextureNode_override_virtual_isSubtreeBlocked(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGSimpleTextureNode_isSubtreeBlocked
func miqt_exec_callback_QSGSimpleTextureNode_isSubtreeBlocked(self *C.QSGSimpleTextureNode, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGSimpleTextureNode{h: self}).callVirtualBase_IsSubtreeBlocked)

	return (C.bool)(virtualReturn)

}

func (this *QSGSimpleTextureNode) callVirtualBase_Preprocess() {

	C.QSGSimpleTextureNode_virtualbase_preprocess(unsafe.Pointer(this.h))

}
func (this *QSGSimpleTextureNode) OnPreprocess(slot func(super func())) {
	ok := C.QSGSimpleTextureNode_override_virtual_preprocess(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGSimpleTextureNode_preprocess
func miqt_exec_callback_QSGSimpleTextureNode_preprocess(self *C.QSGSimpleTextureNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGSimpleTextureNode{h: self}).callVirtualBase_Preprocess)

}

// Delete this object from C++ memory.
func (this *QSGSimpleTextureNode) Delete() {
	C.QSGSimpleTextureNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGSimpleTextureNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGSimpleTextureNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
