package quick

/*

#include "gen_qsgmaterial.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGMaterial__Flag int

const (
	QSGMaterial__Blending                          QSGMaterial__Flag = 1
	QSGMaterial__RequiresDeterminant               QSGMaterial__Flag = 2
	QSGMaterial__RequiresFullMatrixExceptTranslate QSGMaterial__Flag = 6
	QSGMaterial__RequiresFullMatrix                QSGMaterial__Flag = 14
	QSGMaterial__CustomCompileStep                 QSGMaterial__Flag = 16
	QSGMaterial__SupportsRhiShader                 QSGMaterial__Flag = 32
	QSGMaterial__RhiShaderWanted                   QSGMaterial__Flag = 4096
)

type QSGMaterial struct {
	h *C.QSGMaterial
}

func (this *QSGMaterial) cPointer() *C.QSGMaterial {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGMaterial) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGMaterial constructs the type using only CGO pointers.
func newQSGMaterial(h *C.QSGMaterial) *QSGMaterial {
	if h == nil {
		return nil
	}

	return &QSGMaterial{h: h}
}

// UnsafeNewQSGMaterial constructs the type using only unsafe pointers.
func UnsafeNewQSGMaterial(h unsafe.Pointer) *QSGMaterial {
	return newQSGMaterial((*C.QSGMaterial)(h))
}

// NewQSGMaterial constructs a new QSGMaterial object.
func NewQSGMaterial() *QSGMaterial {

	return newQSGMaterial(C.QSGMaterial_new())
}

func (this *QSGMaterial) Type() *QSGMaterialType {
	return newQSGMaterialType(C.QSGMaterial_type(this.h))
}

func (this *QSGMaterial) CreateShader() *QSGMaterialShader {
	return newQSGMaterialShader(C.QSGMaterial_createShader(this.h))
}

func (this *QSGMaterial) Compare(other *QSGMaterial) int {
	return (int)(C.QSGMaterial_compare(this.h, other.cPointer()))
}

func (this *QSGMaterial) Flags() QSGMaterial__Flag {
	return (QSGMaterial__Flag)(C.QSGMaterial_flags(this.h))
}

func (this *QSGMaterial) SetFlag(flags QSGMaterial__Flag) {
	C.QSGMaterial_setFlag(this.h, (C.int)(flags))
}

func (this *QSGMaterial) SetFlag2(flags QSGMaterial__Flag, on bool) {
	C.QSGMaterial_setFlag2(this.h, (C.int)(flags), (C.bool)(on))
}
func (this *QSGMaterial) OnType(slot func() *QSGMaterialType) {
	ok := C.QSGMaterial_override_virtual_type(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterial_type
func miqt_exec_callback_QSGMaterial_type(self *C.QSGMaterial, cb C.intptr_t) *C.QSGMaterialType {
	gofunc, ok := cgo.Handle(cb).Value().(func() *QSGMaterialType)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return virtualReturn.cPointer()

}
func (this *QSGMaterial) OnCreateShader(slot func() *QSGMaterialShader) {
	ok := C.QSGMaterial_override_virtual_createShader(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterial_createShader
func miqt_exec_callback_QSGMaterial_createShader(self *C.QSGMaterial, cb C.intptr_t) *C.QSGMaterialShader {
	gofunc, ok := cgo.Handle(cb).Value().(func() *QSGMaterialShader)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return virtualReturn.cPointer()

}

func (this *QSGMaterial) callVirtualBase_Compare(other *QSGMaterial) int {

	return (int)(C.QSGMaterial_virtualbase_compare(unsafe.Pointer(this.h), other.cPointer()))

}
func (this *QSGMaterial) OnCompare(slot func(super func(other *QSGMaterial) int, other *QSGMaterial) int) {
	ok := C.QSGMaterial_override_virtual_compare(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGMaterial_compare
func miqt_exec_callback_QSGMaterial_compare(self *C.QSGMaterial, cb C.intptr_t, other *C.QSGMaterial) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(other *QSGMaterial) int, other *QSGMaterial) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGMaterial(other)

	virtualReturn := gofunc((&QSGMaterial{h: self}).callVirtualBase_Compare, slotval1)

	return (C.int)(virtualReturn)

}

// Delete this object from C++ memory.
func (this *QSGMaterial) Delete() {
	C.QSGMaterial_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGMaterial) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGMaterial) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
