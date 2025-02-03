package quick

/*

#include "gen_qsgmaterialrhishader.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGMaterialRhiShader__Flag int

const (
	QSGMaterialRhiShader__UpdatesGraphicsPipelineState QSGMaterialRhiShader__Flag = 1
)

type QSGMaterialRhiShader__Stage int

const (
	QSGMaterialRhiShader__VertexStage   QSGMaterialRhiShader__Stage = 0
	QSGMaterialRhiShader__FragmentStage QSGMaterialRhiShader__Stage = 1
)

type QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor int

const (
	QSGMaterialRhiShader__GraphicsPipelineState__Zero                  QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 0
	QSGMaterialRhiShader__GraphicsPipelineState__One                   QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 1
	QSGMaterialRhiShader__GraphicsPipelineState__SrcColor              QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 2
	QSGMaterialRhiShader__GraphicsPipelineState__OneMinusSrcColor      QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 3
	QSGMaterialRhiShader__GraphicsPipelineState__DstColor              QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 4
	QSGMaterialRhiShader__GraphicsPipelineState__OneMinusDstColor      QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 5
	QSGMaterialRhiShader__GraphicsPipelineState__SrcAlpha              QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 6
	QSGMaterialRhiShader__GraphicsPipelineState__OneMinusSrcAlpha      QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 7
	QSGMaterialRhiShader__GraphicsPipelineState__DstAlpha              QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 8
	QSGMaterialRhiShader__GraphicsPipelineState__OneMinusDstAlpha      QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 9
	QSGMaterialRhiShader__GraphicsPipelineState__ConstantColor         QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 10
	QSGMaterialRhiShader__GraphicsPipelineState__OneMinusConstantColor QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 11
	QSGMaterialRhiShader__GraphicsPipelineState__ConstantAlpha         QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 12
	QSGMaterialRhiShader__GraphicsPipelineState__OneMinusConstantAlpha QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 13
	QSGMaterialRhiShader__GraphicsPipelineState__SrcAlphaSaturate      QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 14
	QSGMaterialRhiShader__GraphicsPipelineState__Src1Color             QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 15
	QSGMaterialRhiShader__GraphicsPipelineState__OneMinusSrc1Color     QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 16
	QSGMaterialRhiShader__GraphicsPipelineState__Src1Alpha             QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 17
	QSGMaterialRhiShader__GraphicsPipelineState__OneMinusSrc1Alpha     QSGMaterialRhiShader__GraphicsPipelineState__BlendFactor = 18
)

type QSGMaterialRhiShader__GraphicsPipelineState__ColorMaskComponent int

const (
	QSGMaterialRhiShader__GraphicsPipelineState__R QSGMaterialRhiShader__GraphicsPipelineState__ColorMaskComponent = 1
	QSGMaterialRhiShader__GraphicsPipelineState__G QSGMaterialRhiShader__GraphicsPipelineState__ColorMaskComponent = 2
	QSGMaterialRhiShader__GraphicsPipelineState__B QSGMaterialRhiShader__GraphicsPipelineState__ColorMaskComponent = 4
	QSGMaterialRhiShader__GraphicsPipelineState__A QSGMaterialRhiShader__GraphicsPipelineState__ColorMaskComponent = 8
)

type QSGMaterialRhiShader__GraphicsPipelineState__CullMode int

const (
	QSGMaterialRhiShader__GraphicsPipelineState__CullNone  QSGMaterialRhiShader__GraphicsPipelineState__CullMode = 0
	QSGMaterialRhiShader__GraphicsPipelineState__CullFront QSGMaterialRhiShader__GraphicsPipelineState__CullMode = 1
	QSGMaterialRhiShader__GraphicsPipelineState__CullBack  QSGMaterialRhiShader__GraphicsPipelineState__CullMode = 2
)

type QSGMaterialRhiShader struct {
	h *C.QSGMaterialRhiShader
	*QSGMaterialShader
}

func (this *QSGMaterialRhiShader) cPointer() *C.QSGMaterialRhiShader {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGMaterialRhiShader) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGMaterialRhiShader constructs the type using only CGO pointers.
func newQSGMaterialRhiShader(h *C.QSGMaterialRhiShader) *QSGMaterialRhiShader {
	if h == nil {
		return nil
	}
	var outptr_QSGMaterialShader *C.QSGMaterialShader = nil
	C.QSGMaterialRhiShader_virtbase(h, &outptr_QSGMaterialShader)

	return &QSGMaterialRhiShader{h: h,
		QSGMaterialShader: newQSGMaterialShader(outptr_QSGMaterialShader)}
}

// UnsafeNewQSGMaterialRhiShader constructs the type using only unsafe pointers.
func UnsafeNewQSGMaterialRhiShader(h unsafe.Pointer) *QSGMaterialRhiShader {
	return newQSGMaterialRhiShader((*C.QSGMaterialRhiShader)(h))
}

// NewQSGMaterialRhiShader constructs a new QSGMaterialRhiShader object.
func NewQSGMaterialRhiShader() *QSGMaterialRhiShader {

	return newQSGMaterialRhiShader(C.QSGMaterialRhiShader_new())
}

func (this *QSGMaterialRhiShader) UpdateUniformData(state *QSGMaterialRhiShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool {
	return (bool)(C.QSGMaterialRhiShader_updateUniformData(this.h, state.cPointer(), newMaterial.cPointer(), oldMaterial.cPointer()))
}

func (this *QSGMaterialRhiShader) UpdateGraphicsPipelineState(state *QSGMaterialRhiShader__RenderState, ps *QSGMaterialRhiShader__GraphicsPipelineState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool {
	return (bool)(C.QSGMaterialRhiShader_updateGraphicsPipelineState(this.h, state.cPointer(), ps.cPointer(), newMaterial.cPointer(), oldMaterial.cPointer()))
}

func (this *QSGMaterialRhiShader) Flags() QSGMaterialRhiShader__Flag {
	return (QSGMaterialRhiShader__Flag)(C.QSGMaterialRhiShader_flags(this.h))
}

func (this *QSGMaterialRhiShader) SetFlag(flags QSGMaterialRhiShader__Flag) {
	C.QSGMaterialRhiShader_setFlag(this.h, (C.int)(flags))
}

func (this *QSGMaterialRhiShader) AttributeNames() string {
	_ret := C.QSGMaterialRhiShader_attributeNames(this.h)
	return C.GoString(_ret)
}

func (this *QSGMaterialRhiShader) SetFlag2(flags QSGMaterialRhiShader__Flag, on bool) {
	C.QSGMaterialRhiShader_setFlag2(this.h, (C.int)(flags), (C.bool)(on))
}

func (this *QSGMaterialRhiShader) callVirtualBase_UpdateUniformData(state *QSGMaterialRhiShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool {

	return (bool)(C.QSGMaterialRhiShader_virtualbase_updateUniformData(unsafe.Pointer(this.h), state.cPointer(), newMaterial.cPointer(), oldMaterial.cPointer()))

}
func (this *QSGMaterialRhiShader) OnUpdateUniformData(slot func(super func(state *QSGMaterialRhiShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool, state *QSGMaterialRhiShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool) {
	ok := C.QSGMaterialRhiShader_override_virtual_updateUniformData(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_updateUniformData
func miqt_exec_callback_QSGMaterialRhiShader_updateUniformData(self *C.QSGMaterialRhiShader, cb C.intptr_t, state *C.QSGMaterialRhiShader__RenderState, newMaterial *C.QSGMaterial, oldMaterial *C.QSGMaterial) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(state *QSGMaterialRhiShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool, state *QSGMaterialRhiShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGMaterialRhiShader__RenderState(state)

	slotval2 := newQSGMaterial(newMaterial)

	slotval3 := newQSGMaterial(oldMaterial)

	virtualReturn := gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_UpdateUniformData, slotval1, slotval2, slotval3)

	return (C.bool)(virtualReturn)

}

func (this *QSGMaterialRhiShader) callVirtualBase_UpdateGraphicsPipelineState(state *QSGMaterialRhiShader__RenderState, ps *QSGMaterialRhiShader__GraphicsPipelineState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool {

	return (bool)(C.QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(unsafe.Pointer(this.h), state.cPointer(), ps.cPointer(), newMaterial.cPointer(), oldMaterial.cPointer()))

}
func (this *QSGMaterialRhiShader) OnUpdateGraphicsPipelineState(slot func(super func(state *QSGMaterialRhiShader__RenderState, ps *QSGMaterialRhiShader__GraphicsPipelineState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool, state *QSGMaterialRhiShader__RenderState, ps *QSGMaterialRhiShader__GraphicsPipelineState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool) {
	ok := C.QSGMaterialRhiShader_override_virtual_updateGraphicsPipelineState(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_updateGraphicsPipelineState
func miqt_exec_callback_QSGMaterialRhiShader_updateGraphicsPipelineState(self *C.QSGMaterialRhiShader, cb C.intptr_t, state *C.QSGMaterialRhiShader__RenderState, ps *C.QSGMaterialRhiShader__GraphicsPipelineState, newMaterial *C.QSGMaterial, oldMaterial *C.QSGMaterial) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(state *QSGMaterialRhiShader__RenderState, ps *QSGMaterialRhiShader__GraphicsPipelineState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool, state *QSGMaterialRhiShader__RenderState, ps *QSGMaterialRhiShader__GraphicsPipelineState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGMaterialRhiShader__RenderState(state)

	slotval2 := newQSGMaterialRhiShader__GraphicsPipelineState(ps)

	slotval3 := newQSGMaterial(newMaterial)

	slotval4 := newQSGMaterial(oldMaterial)

	virtualReturn := gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_UpdateGraphicsPipelineState, slotval1, slotval2, slotval3, slotval4)

	return (C.bool)(virtualReturn)

}

func (this *QSGMaterialRhiShader) callVirtualBase_AttributeNames() string {

	_ret := C.QSGMaterialRhiShader_virtualbase_attributeNames(unsafe.Pointer(this.h))
	return C.GoString(_ret)

}
func (this *QSGMaterialRhiShader) OnAttributeNames(slot func(super func() string) string) {
	ok := C.QSGMaterialRhiShader_override_virtual_attributeNames(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_attributeNames
func miqt_exec_callback_QSGMaterialRhiShader_attributeNames(self *C.QSGMaterialRhiShader, cb C.intptr_t) *C.const_char {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() string) string)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_AttributeNames)
	virtualReturn_Cstring := C.CString(virtualReturn)
	defer C.free(unsafe.Pointer(virtualReturn_Cstring))

	return virtualReturn_Cstring

}

func (this *QSGMaterialRhiShader) callVirtualBase_Activate() {

	C.QSGMaterialRhiShader_virtualbase_activate(unsafe.Pointer(this.h))

}
func (this *QSGMaterialRhiShader) OnActivate(slot func(super func())) {
	ok := C.QSGMaterialRhiShader_override_virtual_activate(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_activate
func miqt_exec_callback_QSGMaterialRhiShader_activate(self *C.QSGMaterialRhiShader, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_Activate)

}

func (this *QSGMaterialRhiShader) callVirtualBase_Deactivate() {

	C.QSGMaterialRhiShader_virtualbase_deactivate(unsafe.Pointer(this.h))

}
func (this *QSGMaterialRhiShader) OnDeactivate(slot func(super func())) {
	ok := C.QSGMaterialRhiShader_override_virtual_deactivate(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_deactivate
func miqt_exec_callback_QSGMaterialRhiShader_deactivate(self *C.QSGMaterialRhiShader, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_Deactivate)

}

func (this *QSGMaterialRhiShader) callVirtualBase_UpdateState(state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial) {

	C.QSGMaterialRhiShader_virtualbase_updateState(unsafe.Pointer(this.h), state.cPointer(), newMaterial.cPointer(), oldMaterial.cPointer())

}
func (this *QSGMaterialRhiShader) OnUpdateState(slot func(super func(state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial), state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial)) {
	ok := C.QSGMaterialRhiShader_override_virtual_updateState(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_updateState
func miqt_exec_callback_QSGMaterialRhiShader_updateState(self *C.QSGMaterialRhiShader, cb C.intptr_t, state *C.QSGMaterialShader__RenderState, newMaterial *C.QSGMaterial, oldMaterial *C.QSGMaterial) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial), state *QSGMaterialShader__RenderState, newMaterial *QSGMaterial, oldMaterial *QSGMaterial))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGMaterialShader__RenderState(state)

	slotval2 := newQSGMaterial(newMaterial)

	slotval3 := newQSGMaterial(oldMaterial)

	gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_UpdateState, slotval1, slotval2, slotval3)

}

func (this *QSGMaterialRhiShader) callVirtualBase_Compile() {

	C.QSGMaterialRhiShader_virtualbase_compile(unsafe.Pointer(this.h))

}
func (this *QSGMaterialRhiShader) OnCompile(slot func(super func())) {
	ok := C.QSGMaterialRhiShader_override_virtual_compile(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_compile
func miqt_exec_callback_QSGMaterialRhiShader_compile(self *C.QSGMaterialRhiShader, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_Compile)

}

func (this *QSGMaterialRhiShader) callVirtualBase_Initialize() {

	C.QSGMaterialRhiShader_virtualbase_initialize(unsafe.Pointer(this.h))

}
func (this *QSGMaterialRhiShader) OnInitialize(slot func(super func())) {
	ok := C.QSGMaterialRhiShader_override_virtual_initialize(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_initialize
func miqt_exec_callback_QSGMaterialRhiShader_initialize(self *C.QSGMaterialRhiShader, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_Initialize)

}

func (this *QSGMaterialRhiShader) callVirtualBase_VertexShader() string {

	_ret := C.QSGMaterialRhiShader_virtualbase_vertexShader(unsafe.Pointer(this.h))
	return C.GoString(_ret)

}
func (this *QSGMaterialRhiShader) OnVertexShader(slot func(super func() string) string) {
	ok := C.QSGMaterialRhiShader_override_virtual_vertexShader(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_vertexShader
func miqt_exec_callback_QSGMaterialRhiShader_vertexShader(self *C.QSGMaterialRhiShader, cb C.intptr_t) *C.const_char {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() string) string)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_VertexShader)
	virtualReturn_Cstring := C.CString(virtualReturn)
	defer C.free(unsafe.Pointer(virtualReturn_Cstring))

	return virtualReturn_Cstring

}

func (this *QSGMaterialRhiShader) callVirtualBase_FragmentShader() string {

	_ret := C.QSGMaterialRhiShader_virtualbase_fragmentShader(unsafe.Pointer(this.h))
	return C.GoString(_ret)

}
func (this *QSGMaterialRhiShader) OnFragmentShader(slot func(super func() string) string) {
	ok := C.QSGMaterialRhiShader_override_virtual_fragmentShader(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterialRhiShader_fragmentShader
func miqt_exec_callback_QSGMaterialRhiShader_fragmentShader(self *C.QSGMaterialRhiShader, cb C.intptr_t) *C.const_char {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() string) string)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGMaterialRhiShader{h: self}).callVirtualBase_FragmentShader)
	virtualReturn_Cstring := C.CString(virtualReturn)
	defer C.free(unsafe.Pointer(virtualReturn_Cstring))

	return virtualReturn_Cstring

}

// Delete this object from C++ memory.
func (this *QSGMaterialRhiShader) Delete() {
	C.QSGMaterialRhiShader_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGMaterialRhiShader) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGMaterialRhiShader) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGMaterialRhiShader__RenderState struct {
	h *C.QSGMaterialRhiShader__RenderState
}

func (this *QSGMaterialRhiShader__RenderState) cPointer() *C.QSGMaterialRhiShader__RenderState {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGMaterialRhiShader__RenderState) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGMaterialRhiShader__RenderState constructs the type using only CGO pointers.
func newQSGMaterialRhiShader__RenderState(h *C.QSGMaterialRhiShader__RenderState) *QSGMaterialRhiShader__RenderState {
	if h == nil {
		return nil
	}

	return &QSGMaterialRhiShader__RenderState{h: h}
}

// UnsafeNewQSGMaterialRhiShader__RenderState constructs the type using only unsafe pointers.
func UnsafeNewQSGMaterialRhiShader__RenderState(h unsafe.Pointer) *QSGMaterialRhiShader__RenderState {
	return newQSGMaterialRhiShader__RenderState((*C.QSGMaterialRhiShader__RenderState)(h))
}

func (this *QSGMaterialRhiShader__RenderState) DirtyStates() QSGMaterialShader__RenderState__DirtyState {
	return (QSGMaterialShader__RenderState__DirtyState)(C.QSGMaterialRhiShader__RenderState_dirtyStates(this.h))
}

func (this *QSGMaterialRhiShader__RenderState) IsMatrixDirty() bool {
	return (bool)(C.QSGMaterialRhiShader__RenderState_isMatrixDirty(this.h))
}

func (this *QSGMaterialRhiShader__RenderState) IsOpacityDirty() bool {
	return (bool)(C.QSGMaterialRhiShader__RenderState_isOpacityDirty(this.h))
}

func (this *QSGMaterialRhiShader__RenderState) Opacity() float32 {
	return (float32)(C.QSGMaterialRhiShader__RenderState_opacity(this.h))
}

func (this *QSGMaterialRhiShader__RenderState) CombinedMatrix() *qt.QMatrix4x4 {
	_goptr := qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGMaterialRhiShader__RenderState_combinedMatrix(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialRhiShader__RenderState) ModelViewMatrix() *qt.QMatrix4x4 {
	_goptr := qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGMaterialRhiShader__RenderState_modelViewMatrix(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialRhiShader__RenderState) ProjectionMatrix() *qt.QMatrix4x4 {
	_goptr := qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGMaterialRhiShader__RenderState_projectionMatrix(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialRhiShader__RenderState) ViewportRect() *qt.QRect {
	_goptr := qt.UnsafeNewQRect(unsafe.Pointer(C.QSGMaterialRhiShader__RenderState_viewportRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialRhiShader__RenderState) DeviceRect() *qt.QRect {
	_goptr := qt.UnsafeNewQRect(unsafe.Pointer(C.QSGMaterialRhiShader__RenderState_deviceRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGMaterialRhiShader__RenderState) Determinant() float32 {
	return (float32)(C.QSGMaterialRhiShader__RenderState_determinant(this.h))
}

func (this *QSGMaterialRhiShader__RenderState) DevicePixelRatio() float32 {
	return (float32)(C.QSGMaterialRhiShader__RenderState_devicePixelRatio(this.h))
}

func (this *QSGMaterialRhiShader__RenderState) UniformData() []byte {
	var _bytearray C.struct_miqt_string = C.QSGMaterialRhiShader__RenderState_uniformData(this.h)
	_ret := C.GoBytes(unsafe.Pointer(_bytearray.data), C.int(int64(_bytearray.len)))
	C.free(unsafe.Pointer(_bytearray.data))
	return _ret
}

// Delete this object from C++ memory.
func (this *QSGMaterialRhiShader__RenderState) Delete() {
	C.QSGMaterialRhiShader__RenderState_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGMaterialRhiShader__RenderState) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGMaterialRhiShader__RenderState) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGMaterialRhiShader__GraphicsPipelineState struct {
	h *C.QSGMaterialRhiShader__GraphicsPipelineState
}

func (this *QSGMaterialRhiShader__GraphicsPipelineState) cPointer() *C.QSGMaterialRhiShader__GraphicsPipelineState {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGMaterialRhiShader__GraphicsPipelineState) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGMaterialRhiShader__GraphicsPipelineState constructs the type using only CGO pointers.
func newQSGMaterialRhiShader__GraphicsPipelineState(h *C.QSGMaterialRhiShader__GraphicsPipelineState) *QSGMaterialRhiShader__GraphicsPipelineState {
	if h == nil {
		return nil
	}

	return &QSGMaterialRhiShader__GraphicsPipelineState{h: h}
}

// UnsafeNewQSGMaterialRhiShader__GraphicsPipelineState constructs the type using only unsafe pointers.
func UnsafeNewQSGMaterialRhiShader__GraphicsPipelineState(h unsafe.Pointer) *QSGMaterialRhiShader__GraphicsPipelineState {
	return newQSGMaterialRhiShader__GraphicsPipelineState((*C.QSGMaterialRhiShader__GraphicsPipelineState)(h))
}

// NewQSGMaterialRhiShader__GraphicsPipelineState constructs a new QSGMaterialRhiShader::GraphicsPipelineState object.
func NewQSGMaterialRhiShader__GraphicsPipelineState(param1 *QSGMaterialRhiShader__GraphicsPipelineState) *QSGMaterialRhiShader__GraphicsPipelineState {

	return newQSGMaterialRhiShader__GraphicsPipelineState(C.QSGMaterialRhiShader__GraphicsPipelineState_new(param1.cPointer()))
}

func (this *QSGMaterialRhiShader__GraphicsPipelineState) OperatorAssign(param1 *QSGMaterialRhiShader__GraphicsPipelineState) {
	C.QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign(this.h, param1.cPointer())
}

// Delete this object from C++ memory.
func (this *QSGMaterialRhiShader__GraphicsPipelineState) Delete() {
	C.QSGMaterialRhiShader__GraphicsPipelineState_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGMaterialRhiShader__GraphicsPipelineState) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGMaterialRhiShader__GraphicsPipelineState) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
