package quick

/*

#include "gen_qsgvertexcolormaterial.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGVertexColorMaterial struct {
	h *C.QSGVertexColorMaterial
	*QSGMaterial
}

func (this *QSGVertexColorMaterial) cPointer() *C.QSGVertexColorMaterial {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGVertexColorMaterial) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGVertexColorMaterial constructs the type using only CGO pointers.
func newQSGVertexColorMaterial(h *C.QSGVertexColorMaterial) *QSGVertexColorMaterial {
	if h == nil {
		return nil
	}
	var outptr_QSGMaterial *C.QSGMaterial = nil
	C.QSGVertexColorMaterial_virtbase(h, &outptr_QSGMaterial)

	return &QSGVertexColorMaterial{h: h,
		QSGMaterial: newQSGMaterial(outptr_QSGMaterial)}
}

// UnsafeNewQSGVertexColorMaterial constructs the type using only unsafe pointers.
func UnsafeNewQSGVertexColorMaterial(h unsafe.Pointer) *QSGVertexColorMaterial {
	return newQSGVertexColorMaterial((*C.QSGVertexColorMaterial)(h))
}

// NewQSGVertexColorMaterial constructs a new QSGVertexColorMaterial object.
func NewQSGVertexColorMaterial() *QSGVertexColorMaterial {

	return newQSGVertexColorMaterial(C.QSGVertexColorMaterial_new())
}

func (this *QSGVertexColorMaterial) Compare(other *QSGMaterial) int {
	return (int)(C.QSGVertexColorMaterial_compare(this.h, other.cPointer()))
}

func (this *QSGVertexColorMaterial) callVirtualBase_Compare(other *QSGMaterial) int {

	return (int)(C.QSGVertexColorMaterial_virtualbase_compare(unsafe.Pointer(this.h), other.cPointer()))

}
func (this *QSGVertexColorMaterial) OnCompare(slot func(super func(other *QSGMaterial) int, other *QSGMaterial) int) {
	ok := C.QSGVertexColorMaterial_override_virtual_compare(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGVertexColorMaterial_compare
func miqt_exec_callback_QSGVertexColorMaterial_compare(self *C.QSGVertexColorMaterial, cb C.intptr_t, other *C.QSGMaterial) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(other *QSGMaterial) int, other *QSGMaterial) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGMaterial(other)

	virtualReturn := gofunc((&QSGVertexColorMaterial{h: self}).callVirtualBase_Compare, slotval1)

	return (C.int)(virtualReturn)

}

func (this *QSGVertexColorMaterial) callVirtualBase_Type() *QSGMaterialType {

	return newQSGMaterialType(C.QSGVertexColorMaterial_virtualbase_type(unsafe.Pointer(this.h)))

}
func (this *QSGVertexColorMaterial) OnType(slot func(super func() *QSGMaterialType) *QSGMaterialType) {
	ok := C.QSGVertexColorMaterial_override_virtual_type(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGVertexColorMaterial_type
func miqt_exec_callback_QSGVertexColorMaterial_type(self *C.QSGVertexColorMaterial, cb C.intptr_t) *C.QSGMaterialType {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGMaterialType) *QSGMaterialType)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGVertexColorMaterial{h: self}).callVirtualBase_Type)

	return virtualReturn.cPointer()

}

func (this *QSGVertexColorMaterial) callVirtualBase_CreateShader() *QSGMaterialShader {

	return newQSGMaterialShader(C.QSGVertexColorMaterial_virtualbase_createShader(unsafe.Pointer(this.h)))

}
func (this *QSGVertexColorMaterial) OnCreateShader(slot func(super func() *QSGMaterialShader) *QSGMaterialShader) {
	ok := C.QSGVertexColorMaterial_override_virtual_createShader(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGVertexColorMaterial_createShader
func miqt_exec_callback_QSGVertexColorMaterial_createShader(self *C.QSGVertexColorMaterial, cb C.intptr_t) *C.QSGMaterialShader {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGMaterialShader) *QSGMaterialShader)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGVertexColorMaterial{h: self}).callVirtualBase_CreateShader)

	return virtualReturn.cPointer()

}

// Delete this object from C++ memory.
func (this *QSGVertexColorMaterial) Delete() {
	C.QSGVertexColorMaterial_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGVertexColorMaterial) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGVertexColorMaterial) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
