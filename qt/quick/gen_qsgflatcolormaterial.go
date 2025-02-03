package quick

/*

#include "gen_qsgflatcolormaterial.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGFlatColorMaterial struct {
	h *C.QSGFlatColorMaterial
	*QSGMaterial
}

func (this *QSGFlatColorMaterial) cPointer() *C.QSGFlatColorMaterial {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGFlatColorMaterial) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGFlatColorMaterial constructs the type using only CGO pointers.
func newQSGFlatColorMaterial(h *C.QSGFlatColorMaterial) *QSGFlatColorMaterial {
	if h == nil {
		return nil
	}
	var outptr_QSGMaterial *C.QSGMaterial = nil
	C.QSGFlatColorMaterial_virtbase(h, &outptr_QSGMaterial)

	return &QSGFlatColorMaterial{h: h,
		QSGMaterial: newQSGMaterial(outptr_QSGMaterial)}
}

// UnsafeNewQSGFlatColorMaterial constructs the type using only unsafe pointers.
func UnsafeNewQSGFlatColorMaterial(h unsafe.Pointer) *QSGFlatColorMaterial {
	return newQSGFlatColorMaterial((*C.QSGFlatColorMaterial)(h))
}

// NewQSGFlatColorMaterial constructs a new QSGFlatColorMaterial object.
func NewQSGFlatColorMaterial() *QSGFlatColorMaterial {

	return newQSGFlatColorMaterial(C.QSGFlatColorMaterial_new())
}

func (this *QSGFlatColorMaterial) Type() *QSGMaterialType {
	return newQSGMaterialType(C.QSGFlatColorMaterial_type(this.h))
}

func (this *QSGFlatColorMaterial) CreateShader() *QSGMaterialShader {
	return newQSGMaterialShader(C.QSGFlatColorMaterial_createShader(this.h))
}

func (this *QSGFlatColorMaterial) SetColor(color *qt.QColor) {
	C.QSGFlatColorMaterial_setColor(this.h, (*C.QColor)(color.UnsafePointer()))
}

func (this *QSGFlatColorMaterial) Color() *qt.QColor {
	return qt.UnsafeNewQColor(unsafe.Pointer(C.QSGFlatColorMaterial_color(this.h)))
}

func (this *QSGFlatColorMaterial) Compare(other *QSGMaterial) int {
	return (int)(C.QSGFlatColorMaterial_compare(this.h, other.cPointer()))
}

func (this *QSGFlatColorMaterial) callVirtualBase_Type() *QSGMaterialType {

	return newQSGMaterialType(C.QSGFlatColorMaterial_virtualbase_type(unsafe.Pointer(this.h)))

}
func (this *QSGFlatColorMaterial) OnType(slot func(super func() *QSGMaterialType) *QSGMaterialType) {
	ok := C.QSGFlatColorMaterial_override_virtual_type(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGFlatColorMaterial_type
func miqt_exec_callback_QSGFlatColorMaterial_type(self *C.QSGFlatColorMaterial, cb C.intptr_t) *C.QSGMaterialType {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGMaterialType) *QSGMaterialType)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGFlatColorMaterial{h: self}).callVirtualBase_Type)

	return virtualReturn.cPointer()

}

func (this *QSGFlatColorMaterial) callVirtualBase_CreateShader() *QSGMaterialShader {

	return newQSGMaterialShader(C.QSGFlatColorMaterial_virtualbase_createShader(unsafe.Pointer(this.h)))

}
func (this *QSGFlatColorMaterial) OnCreateShader(slot func(super func() *QSGMaterialShader) *QSGMaterialShader) {
	ok := C.QSGFlatColorMaterial_override_virtual_createShader(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGFlatColorMaterial_createShader
func miqt_exec_callback_QSGFlatColorMaterial_createShader(self *C.QSGFlatColorMaterial, cb C.intptr_t) *C.QSGMaterialShader {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGMaterialShader) *QSGMaterialShader)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGFlatColorMaterial{h: self}).callVirtualBase_CreateShader)

	return virtualReturn.cPointer()

}

func (this *QSGFlatColorMaterial) callVirtualBase_Compare(other *QSGMaterial) int {

	return (int)(C.QSGFlatColorMaterial_virtualbase_compare(unsafe.Pointer(this.h), other.cPointer()))

}
func (this *QSGFlatColorMaterial) OnCompare(slot func(super func(other *QSGMaterial) int, other *QSGMaterial) int) {
	ok := C.QSGFlatColorMaterial_override_virtual_compare(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGFlatColorMaterial_compare
func miqt_exec_callback_QSGFlatColorMaterial_compare(self *C.QSGFlatColorMaterial, cb C.intptr_t, other *C.QSGMaterial) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(other *QSGMaterial) int, other *QSGMaterial) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGMaterial(other)

	virtualReturn := gofunc((&QSGFlatColorMaterial{h: self}).callVirtualBase_Compare, slotval1)

	return (C.int)(virtualReturn)

}

// Delete this object from C++ memory.
func (this *QSGFlatColorMaterial) Delete() {
	C.QSGFlatColorMaterial_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGFlatColorMaterial) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGFlatColorMaterial) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
