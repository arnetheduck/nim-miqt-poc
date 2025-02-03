package quick

/*

#include "gen_qsgrendernode.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGRenderNode__StateFlag int

const (
	QSGRenderNode__DepthState        QSGRenderNode__StateFlag = 1
	QSGRenderNode__StencilState      QSGRenderNode__StateFlag = 2
	QSGRenderNode__ScissorState      QSGRenderNode__StateFlag = 4
	QSGRenderNode__ColorState        QSGRenderNode__StateFlag = 8
	QSGRenderNode__BlendState        QSGRenderNode__StateFlag = 16
	QSGRenderNode__CullState         QSGRenderNode__StateFlag = 32
	QSGRenderNode__ViewportState     QSGRenderNode__StateFlag = 64
	QSGRenderNode__RenderTargetState QSGRenderNode__StateFlag = 128
)

type QSGRenderNode__RenderingFlag int

const (
	QSGRenderNode__BoundedRectRendering QSGRenderNode__RenderingFlag = 1
	QSGRenderNode__DepthAwareRendering  QSGRenderNode__RenderingFlag = 2
	QSGRenderNode__OpaqueRendering      QSGRenderNode__RenderingFlag = 4
)

type QSGRenderNode struct {
	h *C.QSGRenderNode
	*QSGNode
}

func (this *QSGRenderNode) cPointer() *C.QSGRenderNode {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGRenderNode) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGRenderNode constructs the type using only CGO pointers.
func newQSGRenderNode(h *C.QSGRenderNode) *QSGRenderNode {
	if h == nil {
		return nil
	}
	var outptr_QSGNode *C.QSGNode = nil
	C.QSGRenderNode_virtbase(h, &outptr_QSGNode)

	return &QSGRenderNode{h: h,
		QSGNode: newQSGNode(outptr_QSGNode)}
}

// UnsafeNewQSGRenderNode constructs the type using only unsafe pointers.
func UnsafeNewQSGRenderNode(h unsafe.Pointer) *QSGRenderNode {
	return newQSGRenderNode((*C.QSGRenderNode)(h))
}

// NewQSGRenderNode constructs a new QSGRenderNode object.
func NewQSGRenderNode() *QSGRenderNode {

	return newQSGRenderNode(C.QSGRenderNode_new())
}

func (this *QSGRenderNode) ChangedStates() QSGRenderNode__StateFlag {
	return (QSGRenderNode__StateFlag)(C.QSGRenderNode_changedStates(this.h))
}

func (this *QSGRenderNode) Render(state *QSGRenderNode__RenderState) {
	C.QSGRenderNode_render(this.h, state.cPointer())
}

func (this *QSGRenderNode) ReleaseResources() {
	C.QSGRenderNode_releaseResources(this.h)
}

func (this *QSGRenderNode) Flags() QSGRenderNode__RenderingFlag {
	return (QSGRenderNode__RenderingFlag)(C.QSGRenderNode_flags(this.h))
}

func (this *QSGRenderNode) Rect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGRenderNode_rect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGRenderNode) Matrix() *qt.QMatrix4x4 {
	return qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGRenderNode_matrix(this.h)))
}

func (this *QSGRenderNode) ClipList() *QSGClipNode {
	return newQSGClipNode(C.QSGRenderNode_clipList(this.h))
}

func (this *QSGRenderNode) InheritedOpacity() float64 {
	return (float64)(C.QSGRenderNode_inheritedOpacity(this.h))
}

func (this *QSGRenderNode) callVirtualBase_ChangedStates() QSGRenderNode__StateFlag {

	return (QSGRenderNode__StateFlag)(C.QSGRenderNode_virtualbase_changedStates(unsafe.Pointer(this.h)))

}
func (this *QSGRenderNode) OnChangedStates(slot func(super func() QSGRenderNode__StateFlag) QSGRenderNode__StateFlag) {
	ok := C.QSGRenderNode_override_virtual_changedStates(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGRenderNode_changedStates
func miqt_exec_callback_QSGRenderNode_changedStates(self *C.QSGRenderNode, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() QSGRenderNode__StateFlag) QSGRenderNode__StateFlag)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGRenderNode{h: self}).callVirtualBase_ChangedStates)

	return (C.int)(virtualReturn)

}
func (this *QSGRenderNode) OnRender(slot func(state *QSGRenderNode__RenderState)) {
	ok := C.QSGRenderNode_override_virtual_render(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGRenderNode_render
func miqt_exec_callback_QSGRenderNode_render(self *C.QSGRenderNode, cb C.intptr_t, state *C.QSGRenderNode__RenderState) {
	gofunc, ok := cgo.Handle(cb).Value().(func(state *QSGRenderNode__RenderState))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGRenderNode__RenderState(state)

	gofunc(slotval1)

}

func (this *QSGRenderNode) callVirtualBase_ReleaseResources() {

	C.QSGRenderNode_virtualbase_releaseResources(unsafe.Pointer(this.h))

}
func (this *QSGRenderNode) OnReleaseResources(slot func(super func())) {
	ok := C.QSGRenderNode_override_virtual_releaseResources(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGRenderNode_releaseResources
func miqt_exec_callback_QSGRenderNode_releaseResources(self *C.QSGRenderNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGRenderNode{h: self}).callVirtualBase_ReleaseResources)

}

func (this *QSGRenderNode) callVirtualBase_Flags() QSGRenderNode__RenderingFlag {

	return (QSGRenderNode__RenderingFlag)(C.QSGRenderNode_virtualbase_flags(unsafe.Pointer(this.h)))

}
func (this *QSGRenderNode) OnFlags(slot func(super func() QSGRenderNode__RenderingFlag) QSGRenderNode__RenderingFlag) {
	ok := C.QSGRenderNode_override_virtual_flags(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGRenderNode_flags
func miqt_exec_callback_QSGRenderNode_flags(self *C.QSGRenderNode, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() QSGRenderNode__RenderingFlag) QSGRenderNode__RenderingFlag)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGRenderNode{h: self}).callVirtualBase_Flags)

	return (C.int)(virtualReturn)

}

func (this *QSGRenderNode) callVirtualBase_Rect() *qt.QRectF {

	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGRenderNode_virtualbase_rect(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QSGRenderNode) OnRect(slot func(super func() *qt.QRectF) *qt.QRectF) {
	ok := C.QSGRenderNode_override_virtual_rect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGRenderNode_rect
func miqt_exec_callback_QSGRenderNode_rect(self *C.QSGRenderNode, cb C.intptr_t) *C.QRectF {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QRectF) *qt.QRectF)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGRenderNode{h: self}).callVirtualBase_Rect)

	return (*C.QRectF)(virtualReturn.UnsafePointer())

}

func (this *QSGRenderNode) callVirtualBase_IsSubtreeBlocked() bool {

	return (bool)(C.QSGRenderNode_virtualbase_isSubtreeBlocked(unsafe.Pointer(this.h)))

}
func (this *QSGRenderNode) OnIsSubtreeBlocked(slot func(super func() bool) bool) {
	ok := C.QSGRenderNode_override_virtual_isSubtreeBlocked(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGRenderNode_isSubtreeBlocked
func miqt_exec_callback_QSGRenderNode_isSubtreeBlocked(self *C.QSGRenderNode, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGRenderNode{h: self}).callVirtualBase_IsSubtreeBlocked)

	return (C.bool)(virtualReturn)

}

func (this *QSGRenderNode) callVirtualBase_Preprocess() {

	C.QSGRenderNode_virtualbase_preprocess(unsafe.Pointer(this.h))

}
func (this *QSGRenderNode) OnPreprocess(slot func(super func())) {
	ok := C.QSGRenderNode_override_virtual_preprocess(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGRenderNode_preprocess
func miqt_exec_callback_QSGRenderNode_preprocess(self *C.QSGRenderNode, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGRenderNode{h: self}).callVirtualBase_Preprocess)

}

// Delete this object from C++ memory.
func (this *QSGRenderNode) Delete() {
	C.QSGRenderNode_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGRenderNode) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGRenderNode) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGRenderNode__RenderState struct {
	h *C.QSGRenderNode__RenderState
}

func (this *QSGRenderNode__RenderState) cPointer() *C.QSGRenderNode__RenderState {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGRenderNode__RenderState) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGRenderNode__RenderState constructs the type using only CGO pointers.
func newQSGRenderNode__RenderState(h *C.QSGRenderNode__RenderState) *QSGRenderNode__RenderState {
	if h == nil {
		return nil
	}

	return &QSGRenderNode__RenderState{h: h}
}

// UnsafeNewQSGRenderNode__RenderState constructs the type using only unsafe pointers.
func UnsafeNewQSGRenderNode__RenderState(h unsafe.Pointer) *QSGRenderNode__RenderState {
	return newQSGRenderNode__RenderState((*C.QSGRenderNode__RenderState)(h))
}

func (this *QSGRenderNode__RenderState) ProjectionMatrix() *qt.QMatrix4x4 {
	return qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGRenderNode__RenderState_projectionMatrix(this.h)))
}

func (this *QSGRenderNode__RenderState) ScissorRect() *qt.QRect {
	_goptr := qt.UnsafeNewQRect(unsafe.Pointer(C.QSGRenderNode__RenderState_scissorRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGRenderNode__RenderState) ScissorEnabled() bool {
	return (bool)(C.QSGRenderNode__RenderState_scissorEnabled(this.h))
}

func (this *QSGRenderNode__RenderState) StencilValue() int {
	return (int)(C.QSGRenderNode__RenderState_stencilValue(this.h))
}

func (this *QSGRenderNode__RenderState) StencilEnabled() bool {
	return (bool)(C.QSGRenderNode__RenderState_stencilEnabled(this.h))
}

func (this *QSGRenderNode__RenderState) ClipRegion() *qt.QRegion {
	return qt.UnsafeNewQRegion(unsafe.Pointer(C.QSGRenderNode__RenderState_clipRegion(this.h)))
}

func (this *QSGRenderNode__RenderState) Get(state string) unsafe.Pointer {
	state_Cstring := C.CString(state)
	defer C.free(unsafe.Pointer(state_Cstring))
	return (unsafe.Pointer)(C.QSGRenderNode__RenderState_get(this.h, state_Cstring))
}

func (this *QSGRenderNode__RenderState) OperatorAssign(param1 *QSGRenderNode__RenderState) {
	C.QSGRenderNode__RenderState_operatorAssign(this.h, param1.cPointer())
}

// Delete this object from C++ memory.
func (this *QSGRenderNode__RenderState) Delete() {
	C.QSGRenderNode__RenderState_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGRenderNode__RenderState) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGRenderNode__RenderState) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
