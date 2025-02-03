package quick

/*

#include "gen_qsgnode.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGNode__NodeType int

const (
	QSGNode__BasicNodeType     QSGNode__NodeType = 0
	QSGNode__GeometryNodeType  QSGNode__NodeType = 1
	QSGNode__TransformNodeType QSGNode__NodeType = 2
	QSGNode__ClipNodeType      QSGNode__NodeType = 3
	QSGNode__OpacityNodeType   QSGNode__NodeType = 4
	QSGNode__RootNodeType      QSGNode__NodeType = 5
	QSGNode__RenderNodeType    QSGNode__NodeType = 6
)

type QSGNode__Flag int

const (
	QSGNode__OwnedByParent      QSGNode__Flag = 1
	QSGNode__UsePreprocess      QSGNode__Flag = 2
	QSGNode__OwnsGeometry       QSGNode__Flag = 65536
	QSGNode__OwnsMaterial       QSGNode__Flag = 131072
	QSGNode__OwnsOpaqueMaterial QSGNode__Flag = 262144
	QSGNode__IsVisitableNode    QSGNode__Flag = 16777216
)

type QSGNode__DirtyStateBit int

const (
	QSGNode__DirtySubtreeBlocked  QSGNode__DirtyStateBit = 128
	QSGNode__DirtyMatrix          QSGNode__DirtyStateBit = 256
	QSGNode__DirtyNodeAdded       QSGNode__DirtyStateBit = 1024
	QSGNode__DirtyNodeRemoved     QSGNode__DirtyStateBit = 2048
	QSGNode__DirtyGeometry        QSGNode__DirtyStateBit = 4096
	QSGNode__DirtyMaterial        QSGNode__DirtyStateBit = 8192
	QSGNode__DirtyOpacity         QSGNode__DirtyStateBit = 16384
	QSGNode__DirtyForceUpdate     QSGNode__DirtyStateBit = 32768
	QSGNode__DirtyUsePreprocess   QSGNode__DirtyStateBit = 2
	QSGNode__DirtyPropagationMask QSGNode__DirtyStateBit = 50432
)

type QSGNode struct {
	h *C.QSGNode
}

func (this *QSGNode) cPointer() *C.QSGNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGNode constructs the type using only CGO pointers.
func newQSGNode(h *C.QSGNode) *QSGNode {
	if h == nil {
		return nil
	}

	return &QSGNode{h: h}
}

// UnsafeNewQSGNode constructs the type using only unsafe pointers.
func UnsafeNewQSGNode(h unsafe.Pointer) *QSGNode {
	return newQSGNode((*C.QSGNode)(h))
}

// NewQSGNode constructs a new QSGNode object.
func NewQSGNode() *QSGNode {

	return newQSGNode(C.QSGNode_new())
}

func (this *QSGNode) Parent() *QSGNode {
	return newQSGNode(C.QSGNode_parent(this.h))
}

func (this *QSGNode) RemoveChildNode(node *QSGNode) {
	C.QSGNode_removeChildNode(this.h, node.cPointer())
}

func (this *QSGNode) RemoveAllChildNodes() {
	C.QSGNode_removeAllChildNodes(this.h)
}

func (this *QSGNode) PrependChildNode(node *QSGNode) {
	C.QSGNode_prependChildNode(this.h, node.cPointer())
}

func (this *QSGNode) AppendChildNode(node *QSGNode) {
	C.QSGNode_appendChildNode(this.h, node.cPointer())
}

func (this *QSGNode) InsertChildNodeBefore(node *QSGNode, before *QSGNode) {
	C.QSGNode_insertChildNodeBefore(this.h, node.cPointer(), before.cPointer())
}

func (this *QSGNode) InsertChildNodeAfter(node *QSGNode, after *QSGNode) {
	C.QSGNode_insertChildNodeAfter(this.h, node.cPointer(), after.cPointer())
}

func (this *QSGNode) ReparentChildNodesTo(newParent *QSGNode) {
	C.QSGNode_reparentChildNodesTo(this.h, newParent.cPointer())
}

func (this *QSGNode) ChildCount() int {
	return (int)(C.QSGNode_childCount(this.h))
}

func (this *QSGNode) ChildAtIndex(i int) *QSGNode {
	return newQSGNode(C.QSGNode_childAtIndex(this.h, (C.int)(i)))
}

func (this *QSGNode) FirstChild() *QSGNode {
	return newQSGNode(C.QSGNode_firstChild(this.h))
}

func (this *QSGNode) LastChild() *QSGNode {
	return newQSGNode(C.QSGNode_lastChild(this.h))
}

func (this *QSGNode) NextSibling() *QSGNode {
	return newQSGNode(C.QSGNode_nextSibling(this.h))
}

func (this *QSGNode) PreviousSibling() *QSGNode {
	return newQSGNode(C.QSGNode_previousSibling(this.h))
}

func (this *QSGNode) Type() QSGNode__NodeType {
	return (QSGNode__NodeType)(C.QSGNode_type(this.h))
}

func (this *QSGNode) ClearDirty() {
	C.QSGNode_clearDirty(this.h)
}

func (this *QSGNode) MarkDirty(bits QSGNode__DirtyStateBit) {
	C.QSGNode_markDirty(this.h, (C.int)(bits))
}

func (this *QSGNode) DirtyState() QSGNode__DirtyStateBit {
	return (QSGNode__DirtyStateBit)(C.QSGNode_dirtyState(this.h))
}

func (this *QSGNode) IsSubtreeBlocked() bool {
	return (bool)(C.QSGNode_isSubtreeBlocked(this.h))
}

func (this *QSGNode) Flags() QSGNode__Flag {
	return (QSGNode__Flag)(C.QSGNode_flags(this.h))
}

func (this *QSGNode) SetFlag(param1 QSGNode__Flag) {
	C.QSGNode_setFlag(this.h, (C.int)(param1))
}

func (this *QSGNode) SetFlags(param1 QSGNode__Flag) {
	C.QSGNode_setFlags(this.h, (C.int)(param1))
}

func (this *QSGNode) Preprocess() {
	C.QSGNode_preprocess(this.h)
}

func (this *QSGNode) SetFlag2(param1 QSGNode__Flag, param2 bool) {
	C.QSGNode_setFlag2(this.h, (C.int)(param1), (C.bool)(param2))
}

func (this *QSGNode) SetFlags2(param1 QSGNode__Flag, param2 bool) {
	C.QSGNode_setFlags2(this.h, (C.int)(param1), (C.bool)(param2))
}

func (this *QSGNode) callVirtualBase_IsSubtreeBlocked() bool {

	return (bool)(C.QSGNode_virtualbase_isSubtreeBlocked(unsafe.Pointer(this.h)))

}
func (this *QSGNode) OnIsSubtreeBlocked(slot func(super func() bool) bool) {
	ok := C.QSGNode_override_virtual_isSubtreeBlocked(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGNode_isSubtreeBlocked
func miqt_exec_callback_QSGNode_isSubtreeBlocked(self *C.QSGNode, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGNode{h: self}).callVirtualBase_IsSubtreeBlocked)

	return (C.bool)(virtualReturn)

}

func (this *QSGNode) callVirtualBase_Preprocess() {

	C.QSGNode_virtualbase_preprocess(unsafe.Pointer(this.h))

}
func (this *QSGNode) OnPreprocess(slot func(super func())) {
	ok := C.QSGNode_override_virtual_preprocess(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGNode_preprocess
func miqt_exec_callback_QSGNode_preprocess(self *C.QSGNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGNode{h: self}).callVirtualBase_Preprocess)

}

// Delete this object from C++ memory.
func (this *QSGNode) Delete() {
	C.QSGNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGBasicGeometryNode struct {
	h *C.QSGBasicGeometryNode
	*QSGNode
}

func (this *QSGBasicGeometryNode) cPointer() *C.QSGBasicGeometryNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGBasicGeometryNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGBasicGeometryNode constructs the type using only CGO pointers.
func newQSGBasicGeometryNode(h *C.QSGBasicGeometryNode) *QSGBasicGeometryNode {
	if h == nil {
		return nil
	}
	var outptr_QSGNode *C.QSGNode = nil
	C.QSGBasicGeometryNode_virtbase(h, &outptr_QSGNode)

	return &QSGBasicGeometryNode{h: h,
		QSGNode: newQSGNode(outptr_QSGNode)}
}

// UnsafeNewQSGBasicGeometryNode constructs the type using only unsafe pointers.
func UnsafeNewQSGBasicGeometryNode(h unsafe.Pointer) *QSGBasicGeometryNode {
	return newQSGBasicGeometryNode((*C.QSGBasicGeometryNode)(h))
}

func (this *QSGBasicGeometryNode) SetGeometry(geometry *QSGGeometry) {
	C.QSGBasicGeometryNode_setGeometry(this.h, geometry.cPointer())
}

func (this *QSGBasicGeometryNode) Geometry() *QSGGeometry {
	return newQSGGeometry(C.QSGBasicGeometryNode_geometry(this.h))
}

func (this *QSGBasicGeometryNode) Geometry2() *QSGGeometry {
	return newQSGGeometry(C.QSGBasicGeometryNode_geometry2(this.h))
}

func (this *QSGBasicGeometryNode) Matrix() *qt.QMatrix4x4 {
	return qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGBasicGeometryNode_matrix(this.h)))
}

func (this *QSGBasicGeometryNode) ClipList() *QSGClipNode {
	return newQSGClipNode(C.QSGBasicGeometryNode_clipList(this.h))
}

func (this *QSGBasicGeometryNode) SetRendererMatrix(m *qt.QMatrix4x4) {
	C.QSGBasicGeometryNode_setRendererMatrix(this.h, (*C.QMatrix4x4)(m.UnsafePointer()))
}

func (this *QSGBasicGeometryNode) SetRendererClipList(c *QSGClipNode) {
	C.QSGBasicGeometryNode_setRendererClipList(this.h, c.cPointer())
}

// Delete this object from C++ memory.
func (this *QSGBasicGeometryNode) Delete() {
	C.QSGBasicGeometryNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGBasicGeometryNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGBasicGeometryNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGGeometryNode struct {
	h *C.QSGGeometryNode
	*QSGBasicGeometryNode
}

func (this *QSGGeometryNode) cPointer() *C.QSGGeometryNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGGeometryNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGGeometryNode constructs the type using only CGO pointers.
func newQSGGeometryNode(h *C.QSGGeometryNode) *QSGGeometryNode {
	if h == nil {
		return nil
	}
	var outptr_QSGBasicGeometryNode *C.QSGBasicGeometryNode = nil
	C.QSGGeometryNode_virtbase(h, &outptr_QSGBasicGeometryNode)

	return &QSGGeometryNode{h: h,
		QSGBasicGeometryNode: newQSGBasicGeometryNode(outptr_QSGBasicGeometryNode)}
}

// UnsafeNewQSGGeometryNode constructs the type using only unsafe pointers.
func UnsafeNewQSGGeometryNode(h unsafe.Pointer) *QSGGeometryNode {
	return newQSGGeometryNode((*C.QSGGeometryNode)(h))
}

// NewQSGGeometryNode constructs a new QSGGeometryNode object.
func NewQSGGeometryNode() *QSGGeometryNode {

	return newQSGGeometryNode(C.QSGGeometryNode_new())
}

func (this *QSGGeometryNode) SetMaterial(material *QSGMaterial) {
	C.QSGGeometryNode_setMaterial(this.h, material.cPointer())
}

func (this *QSGGeometryNode) Material() *QSGMaterial {
	return newQSGMaterial(C.QSGGeometryNode_material(this.h))
}

func (this *QSGGeometryNode) SetOpaqueMaterial(material *QSGMaterial) {
	C.QSGGeometryNode_setOpaqueMaterial(this.h, material.cPointer())
}

func (this *QSGGeometryNode) OpaqueMaterial() *QSGMaterial {
	return newQSGMaterial(C.QSGGeometryNode_opaqueMaterial(this.h))
}

func (this *QSGGeometryNode) ActiveMaterial() *QSGMaterial {
	return newQSGMaterial(C.QSGGeometryNode_activeMaterial(this.h))
}

func (this *QSGGeometryNode) SetRenderOrder(order int) {
	C.QSGGeometryNode_setRenderOrder(this.h, (C.int)(order))
}

func (this *QSGGeometryNode) RenderOrder() int {
	return (int)(C.QSGGeometryNode_renderOrder(this.h))
}

func (this *QSGGeometryNode) SetInheritedOpacity(opacity float64) {
	C.QSGGeometryNode_setInheritedOpacity(this.h, (C.double)(opacity))
}

func (this *QSGGeometryNode) InheritedOpacity() float64 {
	return (float64)(C.QSGGeometryNode_inheritedOpacity(this.h))
}

func (this *QSGGeometryNode) callVirtualBase_IsSubtreeBlocked() bool {

	return (bool)(C.QSGGeometryNode_virtualbase_isSubtreeBlocked(unsafe.Pointer(this.h)))

}
func (this *QSGGeometryNode) OnIsSubtreeBlocked(slot func(super func() bool) bool) {
	ok := C.QSGGeometryNode_override_virtual_isSubtreeBlocked(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGGeometryNode_isSubtreeBlocked
func miqt_exec_callback_QSGGeometryNode_isSubtreeBlocked(self *C.QSGGeometryNode, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGGeometryNode{h: self}).callVirtualBase_IsSubtreeBlocked)

	return (C.bool)(virtualReturn)

}

func (this *QSGGeometryNode) callVirtualBase_Preprocess() {

	C.QSGGeometryNode_virtualbase_preprocess(unsafe.Pointer(this.h))

}
func (this *QSGGeometryNode) OnPreprocess(slot func(super func())) {
	ok := C.QSGGeometryNode_override_virtual_preprocess(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGGeometryNode_preprocess
func miqt_exec_callback_QSGGeometryNode_preprocess(self *C.QSGGeometryNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGGeometryNode{h: self}).callVirtualBase_Preprocess)

}

// Delete this object from C++ memory.
func (this *QSGGeometryNode) Delete() {
	C.QSGGeometryNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGGeometryNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGGeometryNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGClipNode struct {
	h *C.QSGClipNode
	*QSGBasicGeometryNode
}

func (this *QSGClipNode) cPointer() *C.QSGClipNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGClipNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGClipNode constructs the type using only CGO pointers.
func newQSGClipNode(h *C.QSGClipNode) *QSGClipNode {
	if h == nil {
		return nil
	}
	var outptr_QSGBasicGeometryNode *C.QSGBasicGeometryNode = nil
	C.QSGClipNode_virtbase(h, &outptr_QSGBasicGeometryNode)

	return &QSGClipNode{h: h,
		QSGBasicGeometryNode: newQSGBasicGeometryNode(outptr_QSGBasicGeometryNode)}
}

// UnsafeNewQSGClipNode constructs the type using only unsafe pointers.
func UnsafeNewQSGClipNode(h unsafe.Pointer) *QSGClipNode {
	return newQSGClipNode((*C.QSGClipNode)(h))
}

// NewQSGClipNode constructs a new QSGClipNode object.
func NewQSGClipNode() *QSGClipNode {

	return newQSGClipNode(C.QSGClipNode_new())
}

func (this *QSGClipNode) SetIsRectangular(rectHint bool) {
	C.QSGClipNode_setIsRectangular(this.h, (C.bool)(rectHint))
}

func (this *QSGClipNode) IsRectangular() bool {
	return (bool)(C.QSGClipNode_isRectangular(this.h))
}

func (this *QSGClipNode) SetClipRect(clipRect *qt.QRectF) {
	C.QSGClipNode_setClipRect(this.h, (*C.QRectF)(clipRect.UnsafePointer()))
}

func (this *QSGClipNode) ClipRect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGClipNode_clipRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGClipNode) callVirtualBase_IsSubtreeBlocked() bool {

	return (bool)(C.QSGClipNode_virtualbase_isSubtreeBlocked(unsafe.Pointer(this.h)))

}
func (this *QSGClipNode) OnIsSubtreeBlocked(slot func(super func() bool) bool) {
	ok := C.QSGClipNode_override_virtual_isSubtreeBlocked(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGClipNode_isSubtreeBlocked
func miqt_exec_callback_QSGClipNode_isSubtreeBlocked(self *C.QSGClipNode, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGClipNode{h: self}).callVirtualBase_IsSubtreeBlocked)

	return (C.bool)(virtualReturn)

}

func (this *QSGClipNode) callVirtualBase_Preprocess() {

	C.QSGClipNode_virtualbase_preprocess(unsafe.Pointer(this.h))

}
func (this *QSGClipNode) OnPreprocess(slot func(super func())) {
	ok := C.QSGClipNode_override_virtual_preprocess(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGClipNode_preprocess
func miqt_exec_callback_QSGClipNode_preprocess(self *C.QSGClipNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGClipNode{h: self}).callVirtualBase_Preprocess)

}

// Delete this object from C++ memory.
func (this *QSGClipNode) Delete() {
	C.QSGClipNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGClipNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGClipNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGTransformNode struct {
	h *C.QSGTransformNode
	*QSGNode
}

func (this *QSGTransformNode) cPointer() *C.QSGTransformNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGTransformNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGTransformNode constructs the type using only CGO pointers.
func newQSGTransformNode(h *C.QSGTransformNode) *QSGTransformNode {
	if h == nil {
		return nil
	}
	var outptr_QSGNode *C.QSGNode = nil
	C.QSGTransformNode_virtbase(h, &outptr_QSGNode)

	return &QSGTransformNode{h: h,
		QSGNode: newQSGNode(outptr_QSGNode)}
}

// UnsafeNewQSGTransformNode constructs the type using only unsafe pointers.
func UnsafeNewQSGTransformNode(h unsafe.Pointer) *QSGTransformNode {
	return newQSGTransformNode((*C.QSGTransformNode)(h))
}

// NewQSGTransformNode constructs a new QSGTransformNode object.
func NewQSGTransformNode() *QSGTransformNode {

	return newQSGTransformNode(C.QSGTransformNode_new())
}

func (this *QSGTransformNode) SetMatrix(matrix *qt.QMatrix4x4) {
	C.QSGTransformNode_setMatrix(this.h, (*C.QMatrix4x4)(matrix.UnsafePointer()))
}

func (this *QSGTransformNode) Matrix() *qt.QMatrix4x4 {
	return qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGTransformNode_matrix(this.h)))
}

func (this *QSGTransformNode) SetCombinedMatrix(matrix *qt.QMatrix4x4) {
	C.QSGTransformNode_setCombinedMatrix(this.h, (*C.QMatrix4x4)(matrix.UnsafePointer()))
}

func (this *QSGTransformNode) CombinedMatrix() *qt.QMatrix4x4 {
	return qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGTransformNode_combinedMatrix(this.h)))
}

func (this *QSGTransformNode) callVirtualBase_IsSubtreeBlocked() bool {

	return (bool)(C.QSGTransformNode_virtualbase_isSubtreeBlocked(unsafe.Pointer(this.h)))

}
func (this *QSGTransformNode) OnIsSubtreeBlocked(slot func(super func() bool) bool) {
	ok := C.QSGTransformNode_override_virtual_isSubtreeBlocked(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTransformNode_isSubtreeBlocked
func miqt_exec_callback_QSGTransformNode_isSubtreeBlocked(self *C.QSGTransformNode, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGTransformNode{h: self}).callVirtualBase_IsSubtreeBlocked)

	return (C.bool)(virtualReturn)

}

func (this *QSGTransformNode) callVirtualBase_Preprocess() {

	C.QSGTransformNode_virtualbase_preprocess(unsafe.Pointer(this.h))

}
func (this *QSGTransformNode) OnPreprocess(slot func(super func())) {
	ok := C.QSGTransformNode_override_virtual_preprocess(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTransformNode_preprocess
func miqt_exec_callback_QSGTransformNode_preprocess(self *C.QSGTransformNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGTransformNode{h: self}).callVirtualBase_Preprocess)

}

// Delete this object from C++ memory.
func (this *QSGTransformNode) Delete() {
	C.QSGTransformNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGTransformNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGTransformNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGRootNode struct {
	h *C.QSGRootNode
	*QSGNode
}

func (this *QSGRootNode) cPointer() *C.QSGRootNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGRootNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGRootNode constructs the type using only CGO pointers.
func newQSGRootNode(h *C.QSGRootNode) *QSGRootNode {
	if h == nil {
		return nil
	}
	var outptr_QSGNode *C.QSGNode = nil
	C.QSGRootNode_virtbase(h, &outptr_QSGNode)

	return &QSGRootNode{h: h,
		QSGNode: newQSGNode(outptr_QSGNode)}
}

// UnsafeNewQSGRootNode constructs the type using only unsafe pointers.
func UnsafeNewQSGRootNode(h unsafe.Pointer) *QSGRootNode {
	return newQSGRootNode((*C.QSGRootNode)(h))
}

// NewQSGRootNode constructs a new QSGRootNode object.
func NewQSGRootNode() *QSGRootNode {

	return newQSGRootNode(C.QSGRootNode_new())
}

func (this *QSGRootNode) callVirtualBase_IsSubtreeBlocked() bool {

	return (bool)(C.QSGRootNode_virtualbase_isSubtreeBlocked(unsafe.Pointer(this.h)))

}
func (this *QSGRootNode) OnIsSubtreeBlocked(slot func(super func() bool) bool) {
	ok := C.QSGRootNode_override_virtual_isSubtreeBlocked(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGRootNode_isSubtreeBlocked
func miqt_exec_callback_QSGRootNode_isSubtreeBlocked(self *C.QSGRootNode, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGRootNode{h: self}).callVirtualBase_IsSubtreeBlocked)

	return (C.bool)(virtualReturn)

}

func (this *QSGRootNode) callVirtualBase_Preprocess() {

	C.QSGRootNode_virtualbase_preprocess(unsafe.Pointer(this.h))

}
func (this *QSGRootNode) OnPreprocess(slot func(super func())) {
	ok := C.QSGRootNode_override_virtual_preprocess(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGRootNode_preprocess
func miqt_exec_callback_QSGRootNode_preprocess(self *C.QSGRootNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGRootNode{h: self}).callVirtualBase_Preprocess)

}

// Delete this object from C++ memory.
func (this *QSGRootNode) Delete() {
	C.QSGRootNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGRootNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGRootNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGOpacityNode struct {
	h *C.QSGOpacityNode
	*QSGNode
}

func (this *QSGOpacityNode) cPointer() *C.QSGOpacityNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGOpacityNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGOpacityNode constructs the type using only CGO pointers.
func newQSGOpacityNode(h *C.QSGOpacityNode) *QSGOpacityNode {
	if h == nil {
		return nil
	}
	var outptr_QSGNode *C.QSGNode = nil
	C.QSGOpacityNode_virtbase(h, &outptr_QSGNode)

	return &QSGOpacityNode{h: h,
		QSGNode: newQSGNode(outptr_QSGNode)}
}

// UnsafeNewQSGOpacityNode constructs the type using only unsafe pointers.
func UnsafeNewQSGOpacityNode(h unsafe.Pointer) *QSGOpacityNode {
	return newQSGOpacityNode((*C.QSGOpacityNode)(h))
}

// NewQSGOpacityNode constructs a new QSGOpacityNode object.
func NewQSGOpacityNode() *QSGOpacityNode {

	return newQSGOpacityNode(C.QSGOpacityNode_new())
}

func (this *QSGOpacityNode) SetOpacity(opacity float64) {
	C.QSGOpacityNode_setOpacity(this.h, (C.double)(opacity))
}

func (this *QSGOpacityNode) Opacity() float64 {
	return (float64)(C.QSGOpacityNode_opacity(this.h))
}

func (this *QSGOpacityNode) SetCombinedOpacity(opacity float64) {
	C.QSGOpacityNode_setCombinedOpacity(this.h, (C.double)(opacity))
}

func (this *QSGOpacityNode) CombinedOpacity() float64 {
	return (float64)(C.QSGOpacityNode_combinedOpacity(this.h))
}

func (this *QSGOpacityNode) IsSubtreeBlocked() bool {
	return (bool)(C.QSGOpacityNode_isSubtreeBlocked(this.h))
}

func (this *QSGOpacityNode) callVirtualBase_IsSubtreeBlocked() bool {

	return (bool)(C.QSGOpacityNode_virtualbase_isSubtreeBlocked(unsafe.Pointer(this.h)))

}
func (this *QSGOpacityNode) OnIsSubtreeBlocked(slot func(super func() bool) bool) {
	ok := C.QSGOpacityNode_override_virtual_isSubtreeBlocked(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGOpacityNode_isSubtreeBlocked
func miqt_exec_callback_QSGOpacityNode_isSubtreeBlocked(self *C.QSGOpacityNode, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGOpacityNode{h: self}).callVirtualBase_IsSubtreeBlocked)

	return (C.bool)(virtualReturn)

}

func (this *QSGOpacityNode) callVirtualBase_Preprocess() {

	C.QSGOpacityNode_virtualbase_preprocess(unsafe.Pointer(this.h))

}
func (this *QSGOpacityNode) OnPreprocess(slot func(super func())) {
	ok := C.QSGOpacityNode_override_virtual_preprocess(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGOpacityNode_preprocess
func miqt_exec_callback_QSGOpacityNode_preprocess(self *C.QSGOpacityNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGOpacityNode{h: self}).callVirtualBase_Preprocess)

}

// Delete this object from C++ memory.
func (this *QSGOpacityNode) Delete() {
	C.QSGOpacityNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGOpacityNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGOpacityNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGNodeVisitor struct {
	h *C.QSGNodeVisitor
}

func (this *QSGNodeVisitor) cPointer() *C.QSGNodeVisitor {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGNodeVisitor) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGNodeVisitor constructs the type using only CGO pointers.
func newQSGNodeVisitor(h *C.QSGNodeVisitor) *QSGNodeVisitor {
	if h == nil {
		return nil
	}

	return &QSGNodeVisitor{h: h}
}

// UnsafeNewQSGNodeVisitor constructs the type using only unsafe pointers.
func UnsafeNewQSGNodeVisitor(h unsafe.Pointer) *QSGNodeVisitor {
	return newQSGNodeVisitor((*C.QSGNodeVisitor)(h))
}

// Delete this object from C++ memory.
func (this *QSGNodeVisitor) Delete() {
	C.QSGNodeVisitor_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGNodeVisitor) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGNodeVisitor) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
