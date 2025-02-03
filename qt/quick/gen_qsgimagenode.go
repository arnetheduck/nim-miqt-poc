package quick

/*

#include "gen_qsgimagenode.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"unsafe"
)

type QSGImageNode__TextureCoordinatesTransformFlag int

const (
	QSGImageNode__NoTransform        QSGImageNode__TextureCoordinatesTransformFlag = 0
	QSGImageNode__MirrorHorizontally QSGImageNode__TextureCoordinatesTransformFlag = 1
	QSGImageNode__MirrorVertically   QSGImageNode__TextureCoordinatesTransformFlag = 2
)

type QSGImageNode struct {
	h *C.QSGImageNode
	*QSGGeometryNode
}

func (this *QSGImageNode) cPointer() *C.QSGImageNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGImageNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGImageNode constructs the type using only CGO pointers.
func newQSGImageNode(h *C.QSGImageNode) *QSGImageNode {
	if h == nil {
		return nil
	}
	var outptr_QSGGeometryNode *C.QSGGeometryNode = nil
	C.QSGImageNode_virtbase(h, &outptr_QSGGeometryNode)

	return &QSGImageNode{h: h,
		QSGGeometryNode: newQSGGeometryNode(outptr_QSGGeometryNode)}
}

// UnsafeNewQSGImageNode constructs the type using only unsafe pointers.
func UnsafeNewQSGImageNode(h unsafe.Pointer) *QSGImageNode {
	return newQSGImageNode((*C.QSGImageNode)(h))
}

func (this *QSGImageNode) SetRect(rect *qt.QRectF) {
	C.QSGImageNode_setRect(this.h, (*C.QRectF)(rect.UnsafePointer()))
}

func (this *QSGImageNode) SetRect2(x float64, y float64, w float64, h float64) {
	C.QSGImageNode_setRect2(this.h, (C.double)(x), (C.double)(y), (C.double)(w), (C.double)(h))
}

func (this *QSGImageNode) Rect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGImageNode_rect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGImageNode) SetSourceRect(r *qt.QRectF) {
	C.QSGImageNode_setSourceRect(this.h, (*C.QRectF)(r.UnsafePointer()))
}

func (this *QSGImageNode) SetSourceRect2(x float64, y float64, w float64, h float64) {
	C.QSGImageNode_setSourceRect2(this.h, (C.double)(x), (C.double)(y), (C.double)(w), (C.double)(h))
}

func (this *QSGImageNode) SourceRect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGImageNode_sourceRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGImageNode) SetTexture(texture *QSGTexture) {
	C.QSGImageNode_setTexture(this.h, texture.cPointer())
}

func (this *QSGImageNode) Texture() *QSGTexture {
	return newQSGTexture(C.QSGImageNode_texture(this.h))
}

func (this *QSGImageNode) SetFiltering(filtering QSGTexture__Filtering) {
	C.QSGImageNode_setFiltering(this.h, (C.int)(filtering))
}

func (this *QSGImageNode) Filtering() QSGTexture__Filtering {
	return (QSGTexture__Filtering)(C.QSGImageNode_filtering(this.h))
}

func (this *QSGImageNode) SetMipmapFiltering(filtering QSGTexture__Filtering) {
	C.QSGImageNode_setMipmapFiltering(this.h, (C.int)(filtering))
}

func (this *QSGImageNode) MipmapFiltering() QSGTexture__Filtering {
	return (QSGTexture__Filtering)(C.QSGImageNode_mipmapFiltering(this.h))
}

func (this *QSGImageNode) SetTextureCoordinatesTransform(mode QSGImageNode__TextureCoordinatesTransformFlag) {
	C.QSGImageNode_setTextureCoordinatesTransform(this.h, (C.int)(mode))
}

func (this *QSGImageNode) TextureCoordinatesTransform() QSGImageNode__TextureCoordinatesTransformFlag {
	return (QSGImageNode__TextureCoordinatesTransformFlag)(C.QSGImageNode_textureCoordinatesTransform(this.h))
}

func (this *QSGImageNode) SetOwnsTexture(owns bool) {
	C.QSGImageNode_setOwnsTexture(this.h, (C.bool)(owns))
}

func (this *QSGImageNode) OwnsTexture() bool {
	return (bool)(C.QSGImageNode_ownsTexture(this.h))
}

func QSGImageNode_RebuildGeometry(g *QSGGeometry, texture *QSGTexture, rect *qt.QRectF, sourceRect qt.QRectF, texCoordMode QSGImageNode__TextureCoordinatesTransformFlag) {
	C.QSGImageNode_rebuildGeometry(g.cPointer(), texture.cPointer(), (*C.QRectF)(rect.UnsafePointer()), (*C.QRectF)(sourceRect.UnsafePointer()), (C.int)(texCoordMode))
}

// Delete this object from C++ memory.
func (this *QSGImageNode) Delete() {
	C.QSGImageNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGImageNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGImageNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
