package quick

/*

#include "gen_qsgmaterialshader.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGMaterialShader__RenderState__DirtyState int

const (
	QSGMaterialShader__RenderState__DirtyMatrix             QSGMaterialShader__RenderState__DirtyState = 1
	QSGMaterialShader__RenderState__DirtyOpacity            QSGMaterialShader__RenderState__DirtyState = 2
	QSGMaterialShader__RenderState__DirtyCachedMaterialData QSGMaterialShader__RenderState__DirtyState = 4
	QSGMaterialShader__RenderState__DirtyAll                QSGMaterialShader__RenderState__DirtyState = 65535
)

type QSGMaterialShader struct {
	h *C.QSGMaterialShader
}

func (this *QSGMaterialShader) cPointer() *C.QSGMaterialShader {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGMaterialShader) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGMaterialShader constructs the type using only CGO pointers.
func newQSGMaterialShader(h *C.QSGMaterialShader) *QSGMaterialShader {
	if h == nil {
		return nil
	}

	return &QSGMaterialShader{h: h}
}

// UnsafeNewQSGMaterialShader constructs the type using only unsafe pointers.
func UnsafeNewQSGMaterialShader(h unsafe.Pointer) *QSGMaterialShader {
	return newQSGMaterialShader((*C.QSGMaterialShader)(h))
}

// NewQSGMaterialShader constructs a new QSGMaterialShader object.
func NewQSGMaterialShader() *QSGMaterialShader {

	return newQSGMaterialShader(C.QSGMaterialShader_new())
}

func (this *QSGMaterialShader) Activate() {
	C.QSGMaterialShader_activate(this.h)
}

func (this *QSGMaterialShader) Deactivate() {
	C.QSGMaterialShader_deactivate(this.h)
}

func (this *QSGMaterialShader) UpdateState(state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) {
	C.QSGMaterialShader_updateState(this.h, state.cPointer(), newMaterial.cPointer(), oldMaterial.cPointer())
}

func (this *QSGMaterialShader) AttributeNames() string {
	_ret := C.QSGMaterialShader_attributeNames(this.h)
	return C.GoString(_ret)
}

func (this *QSGMaterialShader) callVirtualBase_Activate() {

	C.QSGMaterialShader_virtualbase_activate(unsafe.Pointer(this.h))

}
func (this *QSGMaterialShader) OnActivate(slot func(super func())) {
	ok := C.QSGMaterialShader_override_virtual_activate(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialShader_activate
func miqt_exec_callback_QSGMaterialShader_activate(self *C.QSGMaterialShader, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGMaterialShader{h: self}).callVirtualBase_Activate)

}

func (this *QSGMaterialShader) callVirtualBase_Deactivate() {

	C.QSGMaterialShader_virtualbase_deactivate(unsafe.Pointer(this.h))

}
func (this *QSGMaterialShader) OnDeactivate(slot func(super func())) {
	ok := C.QSGMaterialShader_override_virtual_deactivate(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialShader_deactivate
func miqt_exec_callback_QSGMaterialShader_deactivate(self *C.QSGMaterialShader, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGMaterialShader{h: self}).callVirtualBase_Deactivate)

}

func (this *QSGMaterialShader) callVirtualBase_UpdateState(state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) {

	C.QSGMaterialShader_virtualbase_updateState(unsafe.Pointer(this.h), state.cPointer(), newMaterial.cPointer(), oldMaterial.cPointer())

}
func (this *QSGMaterialShader) OnUpdateState(slot func(super func(state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial), state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial)) {
	ok := C.QSGMaterialShader_override_virtual_updateState(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialShader_updateState
func miqt_exec_callback_QSGMaterialShader_updateState(self *C.QSGMaterialShader, cb C.intptr_t, state *C.QSGMaterialShader__RenderState, newMaterial *C.QSGMaterial, oldMaterial *C.QSGMaterial) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial), state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGMaterialShader__RenderState(state)

	slotval2 := newQSGMaterial(newMaterial)

	slotval3 := newQSGMaterial(oldMaterial)

	gofunc((&QSGMaterialShader{h: self}).callVirtualBase_UpdateState, slotval1, slotval2, slotval3)

}
func (this *QSGMaterialShader) OnAttributeNames(slot func() string) {
	ok := C.QSGMaterialShader_override_virtual_attributeNames(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialShader_attributeNames
func miqt_exec_callback_QSGMaterialShader_attributeNames(self *C.QSGMaterialShader, cb C.intptr_t) *C.const_char {
	gofunc, ok := cgo.Handle(cb).Value().(func() string)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()
	virtualReturn_Cstring := C.CString(virtualReturn)
	defer C.free(unsafe.Pointer(virtualReturn_Cstring))

	return virtualReturn_Cstring

}

func (this *QSGMaterialShader) callVirtualBase_Compile() {

	C.QSGMaterialShader_virtualbase_compile(unsafe.Pointer(this.h))

}
func (this *QSGMaterialShader) OnCompile(slot func(super func())) {
	ok := C.QSGMaterialShader_override_virtual_compile(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialShader_compile
func miqt_exec_callback_QSGMaterialShader_compile(self *C.QSGMaterialShader, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGMaterialShader{h: self}).callVirtualBase_Compile)

}

func (this *QSGMaterialShader) callVirtualBase_Initialize() {

	C.QSGMaterialShader_virtualbase_initialize(unsafe.Pointer(this.h))

}
func (this *QSGMaterialShader) OnInitialize(slot func(super func())) {
	ok := C.QSGMaterialShader_override_virtual_initialize(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialShader_initialize
func miqt_exec_callback_QSGMaterialShader_initialize(self *C.QSGMaterialShader, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGMaterialShader{h: self}).callVirtualBase_Initialize)

}

func (this *QSGMaterialShader) callVirtualBase_VertexShader() string {

	_ret := C.QSGMaterialShader_virtualbase_vertexShader(unsafe.Pointer(this.h))
	return C.GoString(_ret)

}
func (this *QSGMaterialShader) OnVertexShader(slot func(super func() string) string) {
	ok := C.QSGMaterialShader_override_virtual_vertexShader(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialShader_vertexShader
func miqt_exec_callback_QSGMaterialShader_vertexShader(self *C.QSGMaterialShader, cb C.intptr_t) *C.const_char {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() string) string)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGMaterialShader{h: self}).callVirtualBase_VertexShader)
	virtualReturn_Cstring := C.CString(virtualReturn)
	defer C.free(unsafe.Pointer(virtualReturn_Cstring))

	return virtualReturn_Cstring

}

func (this *QSGMaterialShader) callVirtualBase_FragmentShader() string {

	_ret := C.QSGMaterialShader_virtualbase_fragmentShader(unsafe.Pointer(this.h))
	return C.GoString(_ret)

}
func (this *QSGMaterialShader) OnFragmentShader(slot func(super func() string) string) {
	ok := C.QSGMaterialShader_override_virtual_fragmentShader(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialShader_fragmentShader
func miqt_exec_callback_QSGMaterialShader_fragmentShader(self *C.QSGMaterialShader, cb C.intptr_t) *C.const_char {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() string) string)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGMaterialShader{h: self}).callVirtualBase_FragmentShader)
	virtualReturn_Cstring := C.CString(virtualReturn)
	defer C.free(unsafe.Pointer(virtualReturn_Cstring))

	return virtualReturn_Cstring

}

// Delete this object from C++ memory.
func (this *QSGMaterialShader) Delete() {
	C.QSGMaterialShader_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGMaterialShader) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGMaterialShader) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGMaterialShader__RenderState struct {
	h *C.QSGMaterialShader__RenderState
}

func (this *QSGMaterialShader__RenderState) cPointer() *C.QSGMaterialShader__RenderState {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGMaterialShader__RenderState) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGMaterialShader__RenderState constructs the type using only CGO pointers.
func newQSGMaterialShader__RenderState(h *C.QSGMaterialShader__RenderState) *QSGMaterialShader__RenderState {
	if h == nil {
		return nil
	}

	return &QSGMaterialShader__RenderState{h: h}
}

// UnsafeNewQSGMaterialShader__RenderState constructs the type using only unsafe pointers.
func UnsafeNewQSGMaterialShader__RenderState(h unsafe.Pointer) *QSGMaterialShader__RenderState {
	return newQSGMaterialShader__RenderState((*C.QSGMaterialShader__RenderState)(h))
}

func (this *QSGMaterialShader__RenderState) DirtyStates() QSGMaterialShader__RenderState__DirtyState {
	return (QSGMaterialShader__RenderState__DirtyState)(C.QSGMaterialShader__RenderState_dirtyStates(this.h))
}

func (this *QSGMaterialShader__RenderState) IsMatrixDirty() bool {
	return (bool)(C.QSGMaterialShader__RenderState_isMatrixDirty(this.h))
}

func (this *QSGMaterialShader__RenderState) IsOpacityDirty() bool {
	return (bool)(C.QSGMaterialShader__RenderState_isOpacityDirty(this.h))
}

func (this *QSGMaterialShader__RenderState) IsCachedMaterialDataDirty() bool {
	return (bool)(C.QSGMaterialShader__RenderState_isCachedMaterialDataDirty(this.h))
}

func (this *QSGMaterialShader__RenderState) Opacity() float32 {
	return (float32)(C.QSGMaterialShader__RenderState_opacity(this.h))
}

func (this *QSGMaterialShader__RenderState) CombinedMatrix() *qt.QMatrix4x4 {
	_goptr := qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGMaterialShader__RenderState_combinedMatrix(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialShader__RenderState) ModelViewMatrix() *qt.QMatrix4x4 {
	_goptr := qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGMaterialShader__RenderState_modelViewMatrix(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialShader__RenderState) ProjectionMatrix() *qt.QMatrix4x4 {
	_goptr := qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGMaterialShader__RenderState_projectionMatrix(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialShader__RenderState) ViewportRect() *qt.QRect {
	_goptr := qt.UnsafeNewQRect(unsafe.Pointer(C.QSGMaterialShader__RenderState_viewportRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialShader__RenderState) DeviceRect() *qt.QRect {
	_goptr := qt.UnsafeNewQRect(unsafe.Pointer(C.QSGMaterialShader__RenderState_deviceRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialShader__RenderState) Determinant() float32 {
	return (float32)(C.QSGMaterialShader__RenderState_determinant(this.h))
}

func (this *QSGMaterialShader__RenderState) DevicePixelRatio() float32 {
	return (float32)(C.QSGMaterialShader__RenderState_devicePixelRatio(this.h))
}

// Delete this object from C++ memory.
func (this *QSGMaterialShader__RenderState) Delete() {
	C.QSGMaterialShader__RenderState_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGMaterialShader__RenderState) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGMaterialShader__RenderState) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
