package quick

/*

#include "gen_qsggeometry.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"unsafe"
)

type QSGGeometry__AttributeType int

const (
	QSGGeometry__UnknownAttribute   QSGGeometry__AttributeType = 0
	QSGGeometry__PositionAttribute  QSGGeometry__AttributeType = 1
	QSGGeometry__ColorAttribute     QSGGeometry__AttributeType = 2
	QSGGeometry__TexCoordAttribute  QSGGeometry__AttributeType = 3
	QSGGeometry__TexCoord1Attribute QSGGeometry__AttributeType = 4
	QSGGeometry__TexCoord2Attribute QSGGeometry__AttributeType = 5
)

type QSGGeometry__DataPattern int

const (
	QSGGeometry__AlwaysUploadPattern QSGGeometry__DataPattern = 0
	QSGGeometry__StreamPattern       QSGGeometry__DataPattern = 1
	QSGGeometry__DynamicPattern      QSGGeometry__DataPattern = 2
	QSGGeometry__StaticPattern       QSGGeometry__DataPattern = 3
)

type QSGGeometry__DrawingMode int

const (
	QSGGeometry__DrawPoints        QSGGeometry__DrawingMode = 0
	QSGGeometry__DrawLines         QSGGeometry__DrawingMode = 1
	QSGGeometry__DrawLineLoop      QSGGeometry__DrawingMode = 2
	QSGGeometry__DrawLineStrip     QSGGeometry__DrawingMode = 3
	QSGGeometry__DrawTriangles     QSGGeometry__DrawingMode = 4
	QSGGeometry__DrawTriangleStrip QSGGeometry__DrawingMode = 5
	QSGGeometry__DrawTriangleFan   QSGGeometry__DrawingMode = 6
)

type QSGGeometry__Type int

const (
	QSGGeometry__ByteType          QSGGeometry__Type = 5120
	QSGGeometry__UnsignedByteType  QSGGeometry__Type = 5121
	QSGGeometry__ShortType         QSGGeometry__Type = 5122
	QSGGeometry__UnsignedShortType QSGGeometry__Type = 5123
	QSGGeometry__IntType           QSGGeometry__Type = 5124
	QSGGeometry__UnsignedIntType   QSGGeometry__Type = 5125
	QSGGeometry__FloatType         QSGGeometry__Type = 5126
	QSGGeometry__Bytes2Type        QSGGeometry__Type = 5127
	QSGGeometry__Bytes3Type        QSGGeometry__Type = 5128
	QSGGeometry__Bytes4Type        QSGGeometry__Type = 5129
	QSGGeometry__DoubleType        QSGGeometry__Type = 5130
)

type QSGGeometry struct {
	h *C.QSGGeometry
}

func (this *QSGGeometry) cPointer() *C.QSGGeometry {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGGeometry) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGGeometry constructs the type using only CGO pointers.
func newQSGGeometry(h *C.QSGGeometry) *QSGGeometry {
	if h == nil {
		return nil
	}

	return &QSGGeometry{h: h}
}

// UnsafeNewQSGGeometry constructs the type using only unsafe pointers.
func UnsafeNewQSGGeometry(h unsafe.Pointer) *QSGGeometry {
	return newQSGGeometry((*C.QSGGeometry)(h))
}

// NewQSGGeometry constructs a new QSGGeometry object.
func NewQSGGeometry(attribs *QSGGeometry__AttributeSet, vertexCount int) *QSGGeometry {

	return newQSGGeometry(C.QSGGeometry_new(attribs.cPointer(), (C.int)(vertexCount)))
}

// NewQSGGeometry2 constructs a new QSGGeometry object.
func NewQSGGeometry2(attribs *QSGGeometry__AttributeSet, vertexCount int, indexCount int) *QSGGeometry {

	return newQSGGeometry(C.QSGGeometry_new2(attribs.cPointer(), (C.int)(vertexCount), (C.int)(indexCount)))
}

// NewQSGGeometry3 constructs a new QSGGeometry object.
func NewQSGGeometry3(attribs *QSGGeometry__AttributeSet, vertexCount int, indexCount int, indexType int) *QSGGeometry {

	return newQSGGeometry(C.QSGGeometry_new3(attribs.cPointer(), (C.int)(vertexCount), (C.int)(indexCount), (C.int)(indexType)))
}

func QSGGeometry_DefaultAttributes_Point2D() *QSGGeometry__AttributeSet {
	return newQSGGeometry__AttributeSet(C.QSGGeometry_defaultAttributes_Point2D())
}

func QSGGeometry_DefaultAttributes_TexturedPoint2D() *QSGGeometry__AttributeSet {
	return newQSGGeometry__AttributeSet(C.QSGGeometry_defaultAttributes_TexturedPoint2D())
}

func QSGGeometry_DefaultAttributes_ColoredPoint2D() *QSGGeometry__AttributeSet {
	return newQSGGeometry__AttributeSet(C.QSGGeometry_defaultAttributes_ColoredPoint2D())
}

func (this *QSGGeometry) SetDrawingMode(mode uint) {
	C.QSGGeometry_setDrawingMode(this.h, (C.uint)(mode))
}

func (this *QSGGeometry) DrawingMode() uint {
	return (uint)(C.QSGGeometry_drawingMode(this.h))
}

func (this *QSGGeometry) Allocate(vertexCount int) {
	C.QSGGeometry_allocate(this.h, (C.int)(vertexCount))
}

func (this *QSGGeometry) VertexCount() int {
	return (int)(C.QSGGeometry_vertexCount(this.h))
}

func (this *QSGGeometry) VertexData() unsafe.Pointer {
	return (unsafe.Pointer)(C.QSGGeometry_vertexData(this.h))
}

func (this *QSGGeometry) VertexDataAsPoint2D() *QSGGeometry__Point2D {
	return newQSGGeometry__Point2D(C.QSGGeometry_vertexDataAsPoint2D(this.h))
}

func (this *QSGGeometry) VertexDataAsTexturedPoint2D() *QSGGeometry__TexturedPoint2D {
	return newQSGGeometry__TexturedPoint2D(C.QSGGeometry_vertexDataAsTexturedPoint2D(this.h))
}

func (this *QSGGeometry) VertexDataAsColoredPoint2D() *QSGGeometry__ColoredPoint2D {
	return newQSGGeometry__ColoredPoint2D(C.QSGGeometry_vertexDataAsColoredPoint2D(this.h))
}

func (this *QSGGeometry) VertexData2() unsafe.Pointer {
	return (unsafe.Pointer)(C.QSGGeometry_vertexData2(this.h))
}

func (this *QSGGeometry) VertexDataAsPoint2D2() *QSGGeometry__Point2D {
	return newQSGGeometry__Point2D(C.QSGGeometry_vertexDataAsPoint2D2(this.h))
}

func (this *QSGGeometry) VertexDataAsTexturedPoint2D2() *QSGGeometry__TexturedPoint2D {
	return newQSGGeometry__TexturedPoint2D(C.QSGGeometry_vertexDataAsTexturedPoint2D2(this.h))
}

func (this *QSGGeometry) VertexDataAsColoredPoint2D2() *QSGGeometry__ColoredPoint2D {
	return newQSGGeometry__ColoredPoint2D(C.QSGGeometry_vertexDataAsColoredPoint2D2(this.h))
}

func (this *QSGGeometry) IndexType() int {
	return (int)(C.QSGGeometry_indexType(this.h))
}

func (this *QSGGeometry) IndexCount() int {
	return (int)(C.QSGGeometry_indexCount(this.h))
}

func (this *QSGGeometry) IndexData() unsafe.Pointer {
	return (unsafe.Pointer)(C.QSGGeometry_indexData(this.h))
}

func (this *QSGGeometry) IndexDataAsUInt() *uint {
	return (*uint)(unsafe.Pointer(C.QSGGeometry_indexDataAsUInt(this.h)))
}

func (this *QSGGeometry) IndexDataAsUShort() *uint16 {
	return (*uint16)(unsafe.Pointer(C.QSGGeometry_indexDataAsUShort(this.h)))
}

func (this *QSGGeometry) SizeOfIndex() int {
	return (int)(C.QSGGeometry_sizeOfIndex(this.h))
}

func (this *QSGGeometry) IndexData2() unsafe.Pointer {
	return (unsafe.Pointer)(C.QSGGeometry_indexData2(this.h))
}

func (this *QSGGeometry) IndexDataAsUInt2() *uint {
	return (*uint)(unsafe.Pointer(C.QSGGeometry_indexDataAsUInt2(this.h)))
}

func (this *QSGGeometry) IndexDataAsUShort2() *uint16 {
	return (*uint16)(unsafe.Pointer(C.QSGGeometry_indexDataAsUShort2(this.h)))
}

func (this *QSGGeometry) AttributeCount() int {
	return (int)(C.QSGGeometry_attributeCount(this.h))
}

func (this *QSGGeometry) Attributes() *QSGGeometry__Attribute {
	return newQSGGeometry__Attribute(C.QSGGeometry_attributes(this.h))
}

func (this *QSGGeometry) SizeOfVertex() int {
	return (int)(C.QSGGeometry_sizeOfVertex(this.h))
}

func QSGGeometry_UpdateRectGeometry(g *QSGGeometry, rect *qt.QRectF) {
	C.QSGGeometry_updateRectGeometry(g.cPointer(), (*C.QRectF)(rect.UnsafePointer()))
}

func QSGGeometry_UpdateTexturedRectGeometry(g *QSGGeometry, rect *qt.QRectF, sourceRect *qt.QRectF) {
	C.QSGGeometry_updateTexturedRectGeometry(g.cPointer(), (*C.QRectF)(rect.UnsafePointer()), (*C.QRectF)(sourceRect.UnsafePointer()))
}

func QSGGeometry_UpdateColoredRectGeometry(g *QSGGeometry, rect *qt.QRectF) {
	C.QSGGeometry_updateColoredRectGeometry(g.cPointer(), (*C.QRectF)(rect.UnsafePointer()))
}

func (this *QSGGeometry) SetIndexDataPattern(p QSGGeometry__DataPattern) {
	C.QSGGeometry_setIndexDataPattern(this.h, (C.int)(p))
}

func (this *QSGGeometry) IndexDataPattern() QSGGeometry__DataPattern {
	return (QSGGeometry__DataPattern)(C.QSGGeometry_indexDataPattern(this.h))
}

func (this *QSGGeometry) SetVertexDataPattern(p QSGGeometry__DataPattern) {
	C.QSGGeometry_setVertexDataPattern(this.h, (C.int)(p))
}

func (this *QSGGeometry) VertexDataPattern() QSGGeometry__DataPattern {
	return (QSGGeometry__DataPattern)(C.QSGGeometry_vertexDataPattern(this.h))
}

func (this *QSGGeometry) MarkIndexDataDirty() {
	C.QSGGeometry_markIndexDataDirty(this.h)
}

func (this *QSGGeometry) MarkVertexDataDirty() {
	C.QSGGeometry_markVertexDataDirty(this.h)
}

func (this *QSGGeometry) LineWidth() float32 {
	return (float32)(C.QSGGeometry_lineWidth(this.h))
}

func (this *QSGGeometry) SetLineWidth(w float32) {
	C.QSGGeometry_setLineWidth(this.h, (C.float)(w))
}

func (this *QSGGeometry) Allocate2(vertexCount int, indexCount int) {
	C.QSGGeometry_allocate2(this.h, (C.int)(vertexCount), (C.int)(indexCount))
}

// Delete this object from C++ memory.
func (this *QSGGeometry) Delete() {
	C.QSGGeometry_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGGeometry) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGGeometry) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGGeometry__Attribute struct {
	h *C.QSGGeometry__Attribute
}

func (this *QSGGeometry__Attribute) cPointer() *C.QSGGeometry__Attribute {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGGeometry__Attribute) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGGeometry__Attribute constructs the type using only CGO pointers.
func newQSGGeometry__Attribute(h *C.QSGGeometry__Attribute) *QSGGeometry__Attribute {
	if h == nil {
		return nil
	}

	return &QSGGeometry__Attribute{h: h}
}

// UnsafeNewQSGGeometry__Attribute constructs the type using only unsafe pointers.
func UnsafeNewQSGGeometry__Attribute(h unsafe.Pointer) *QSGGeometry__Attribute {
	return newQSGGeometry__Attribute((*C.QSGGeometry__Attribute)(h))
}

func QSGGeometry__Attribute_Create(pos int, tupleSize int, primitiveType int) *QSGGeometry__Attribute {
	_goptr := newQSGGeometry__Attribute(C.QSGGeometry__Attribute_create((C.int)(pos), (C.int)(tupleSize), (C.int)(primitiveType)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QSGGeometry__Attribute_CreateWithAttributeType(pos int, tupleSize int, primitiveType int, attributeType QSGGeometry__AttributeType) *QSGGeometry__Attribute {
	_goptr := newQSGGeometry__Attribute(C.QSGGeometry__Attribute_createWithAttributeType((C.int)(pos), (C.int)(tupleSize), (C.int)(primitiveType), (C.int)(attributeType)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QSGGeometry__Attribute_Create4(pos int, tupleSize int, primitiveType int, isPosition bool) *QSGGeometry__Attribute {
	_goptr := newQSGGeometry__Attribute(C.QSGGeometry__Attribute_create4((C.int)(pos), (C.int)(tupleSize), (C.int)(primitiveType), (C.bool)(isPosition)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

// Delete this object from C++ memory.
func (this *QSGGeometry__Attribute) Delete() {
	C.QSGGeometry__Attribute_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGGeometry__Attribute) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGGeometry__Attribute) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGGeometry__AttributeSet struct {
	h *C.QSGGeometry__AttributeSet
}

func (this *QSGGeometry__AttributeSet) cPointer() *C.QSGGeometry__AttributeSet {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGGeometry__AttributeSet) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGGeometry__AttributeSet constructs the type using only CGO pointers.
func newQSGGeometry__AttributeSet(h *C.QSGGeometry__AttributeSet) *QSGGeometry__AttributeSet {
	if h == nil {
		return nil
	}

	return &QSGGeometry__AttributeSet{h: h}
}

// UnsafeNewQSGGeometry__AttributeSet constructs the type using only unsafe pointers.
func UnsafeNewQSGGeometry__AttributeSet(h unsafe.Pointer) *QSGGeometry__AttributeSet {
	return newQSGGeometry__AttributeSet((*C.QSGGeometry__AttributeSet)(h))
}

// Delete this object from C++ memory.
func (this *QSGGeometry__AttributeSet) Delete() {
	C.QSGGeometry__AttributeSet_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGGeometry__AttributeSet) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGGeometry__AttributeSet) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGGeometry__Point2D struct {
	h *C.QSGGeometry__Point2D
}

func (this *QSGGeometry__Point2D) cPointer() *C.QSGGeometry__Point2D {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGGeometry__Point2D) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGGeometry__Point2D constructs the type using only CGO pointers.
func newQSGGeometry__Point2D(h *C.QSGGeometry__Point2D) *QSGGeometry__Point2D {
	if h == nil {
		return nil
	}

	return &QSGGeometry__Point2D{h: h}
}

// UnsafeNewQSGGeometry__Point2D constructs the type using only unsafe pointers.
func UnsafeNewQSGGeometry__Point2D(h unsafe.Pointer) *QSGGeometry__Point2D {
	return newQSGGeometry__Point2D((*C.QSGGeometry__Point2D)(h))
}

func (this *QSGGeometry__Point2D) Set(nx float32, ny float32) {
	C.QSGGeometry__Point2D_set(this.h, (C.float)(nx), (C.float)(ny))
}

// Delete this object from C++ memory.
func (this *QSGGeometry__Point2D) Delete() {
	C.QSGGeometry__Point2D_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGGeometry__Point2D) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGGeometry__Point2D) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGGeometry__TexturedPoint2D struct {
	h *C.QSGGeometry__TexturedPoint2D
}

func (this *QSGGeometry__TexturedPoint2D) cPointer() *C.QSGGeometry__TexturedPoint2D {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGGeometry__TexturedPoint2D) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGGeometry__TexturedPoint2D constructs the type using only CGO pointers.
func newQSGGeometry__TexturedPoint2D(h *C.QSGGeometry__TexturedPoint2D) *QSGGeometry__TexturedPoint2D {
	if h == nil {
		return nil
	}

	return &QSGGeometry__TexturedPoint2D{h: h}
}

// UnsafeNewQSGGeometry__TexturedPoint2D constructs the type using only unsafe pointers.
func UnsafeNewQSGGeometry__TexturedPoint2D(h unsafe.Pointer) *QSGGeometry__TexturedPoint2D {
	return newQSGGeometry__TexturedPoint2D((*C.QSGGeometry__TexturedPoint2D)(h))
}

func (this *QSGGeometry__TexturedPoint2D) Set(nx float32, ny float32, ntx float32, nty float32) {
	C.QSGGeometry__TexturedPoint2D_set(this.h, (C.float)(nx), (C.float)(ny), (C.float)(ntx), (C.float)(nty))
}

// Delete this object from C++ memory.
func (this *QSGGeometry__TexturedPoint2D) Delete() {
	C.QSGGeometry__TexturedPoint2D_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGGeometry__TexturedPoint2D) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGGeometry__TexturedPoint2D) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGGeometry__ColoredPoint2D struct {
	h *C.QSGGeometry__ColoredPoint2D
}

func (this *QSGGeometry__ColoredPoint2D) cPointer() *C.QSGGeometry__ColoredPoint2D {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGGeometry__ColoredPoint2D) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGGeometry__ColoredPoint2D constructs the type using only CGO pointers.
func newQSGGeometry__ColoredPoint2D(h *C.QSGGeometry__ColoredPoint2D) *QSGGeometry__ColoredPoint2D {
	if h == nil {
		return nil
	}

	return &QSGGeometry__ColoredPoint2D{h: h}
}

// UnsafeNewQSGGeometry__ColoredPoint2D constructs the type using only unsafe pointers.
func UnsafeNewQSGGeometry__ColoredPoint2D(h unsafe.Pointer) *QSGGeometry__ColoredPoint2D {
	return newQSGGeometry__ColoredPoint2D((*C.QSGGeometry__ColoredPoint2D)(h))
}

func (this *QSGGeometry__ColoredPoint2D) Set(nx float32, ny float32, nr byte, ng byte, nb byte, na byte) {
	C.QSGGeometry__ColoredPoint2D_set(this.h, (C.float)(nx), (C.float)(ny), (C.uchar)(nr), (C.uchar)(ng), (C.uchar)(nb), (C.uchar)(na))
}

// Delete this object from C++ memory.
func (this *QSGGeometry__ColoredPoint2D) Delete() {
	C.QSGGeometry__ColoredPoint2D_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGGeometry__ColoredPoint2D) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGGeometry__ColoredPoint2D) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
