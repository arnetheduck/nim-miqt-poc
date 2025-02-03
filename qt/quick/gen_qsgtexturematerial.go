package quick

/*

#include "gen_qsgtexturematerial.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGOpaqueTextureMaterial struct {
	h *C.QSGOpaqueTextureMaterial
	*QSGMaterial
}

func (this *QSGOpaqueTextureMaterial) cPointer() *C.QSGOpaqueTextureMaterial {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGOpaqueTextureMaterial) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGOpaqueTextureMaterial constructs the type using only CGO pointers.
func newQSGOpaqueTextureMaterial(h *C.QSGOpaqueTextureMaterial) *QSGOpaqueTextureMaterial {
	if h == nil {
		return nil
	}
	var outptr_QSGMaterial *C.QSGMaterial = nil
	C.QSGOpaqueTextureMaterial_virtbase(h, &outptr_QSGMaterial)

	return &QSGOpaqueTextureMaterial{h: h,
		QSGMaterial: newQSGMaterial(outptr_QSGMaterial)}
}

// UnsafeNewQSGOpaqueTextureMaterial constructs the type using only unsafe pointers.
func UnsafeNewQSGOpaqueTextureMaterial(h unsafe.Pointer) *QSGOpaqueTextureMaterial {
	return newQSGOpaqueTextureMaterial((*C.QSGOpaqueTextureMaterial)(h))
}

// NewQSGOpaqueTextureMaterial constructs a new QSGOpaqueTextureMaterial object.
func NewQSGOpaqueTextureMaterial() *QSGOpaqueTextureMaterial {

	return newQSGOpaqueTextureMaterial(C.QSGOpaqueTextureMaterial_new())
}

func (this *QSGOpaqueTextureMaterial) Type() *QSGMaterialType {
	return newQSGMaterialType(C.QSGOpaqueTextureMaterial_type(this.h))
}

func (this *QSGOpaqueTextureMaterial) CreateShader() *QSGMaterialShader {
	return newQSGMaterialShader(C.QSGOpaqueTextureMaterial_createShader(this.h))
}

func (this *QSGOpaqueTextureMaterial) Compare(other *QSGMaterial) int {
	return (int)(C.QSGOpaqueTextureMaterial_compare(this.h, other.cPointer()))
}

func (this *QSGOpaqueTextureMaterial) SetTexture(texture *QSGTexture) {
	C.QSGOpaqueTextureMaterial_setTexture(this.h, texture.cPointer())
}

func (this *QSGOpaqueTextureMaterial) Texture() *QSGTexture {
	return newQSGTexture(C.QSGOpaqueTextureMaterial_texture(this.h))
}

func (this *QSGOpaqueTextureMaterial) SetMipmapFiltering(filteringType QSGTexture__Filtering) {
	C.QSGOpaqueTextureMaterial_setMipmapFiltering(this.h, (C.int)(filteringType))
}

func (this *QSGOpaqueTextureMaterial) MipmapFiltering() QSGTexture__Filtering {
	return (QSGTexture__Filtering)(C.QSGOpaqueTextureMaterial_mipmapFiltering(this.h))
}

func (this *QSGOpaqueTextureMaterial) SetFiltering(filteringType QSGTexture__Filtering) {
	C.QSGOpaqueTextureMaterial_setFiltering(this.h, (C.int)(filteringType))
}

func (this *QSGOpaqueTextureMaterial) Filtering() QSGTexture__Filtering {
	return (QSGTexture__Filtering)(C.QSGOpaqueTextureMaterial_filtering(this.h))
}

func (this *QSGOpaqueTextureMaterial) SetHorizontalWrapMode(mode QSGTexture__WrapMode) {
	C.QSGOpaqueTextureMaterial_setHorizontalWrapMode(this.h, (C.int)(mode))
}

func (this *QSGOpaqueTextureMaterial) HorizontalWrapMode() QSGTexture__WrapMode {
	return (QSGTexture__WrapMode)(C.QSGOpaqueTextureMaterial_horizontalWrapMode(this.h))
}

func (this *QSGOpaqueTextureMaterial) SetVerticalWrapMode(mode QSGTexture__WrapMode) {
	C.QSGOpaqueTextureMaterial_setVerticalWrapMode(this.h, (C.int)(mode))
}

func (this *QSGOpaqueTextureMaterial) VerticalWrapMode() QSGTexture__WrapMode {
	return (QSGTexture__WrapMode)(C.QSGOpaqueTextureMaterial_verticalWrapMode(this.h))
}

func (this *QSGOpaqueTextureMaterial) SetAnisotropyLevel(level QSGTexture__AnisotropyLevel) {
	C.QSGOpaqueTextureMaterial_setAnisotropyLevel(this.h, (C.int)(level))
}

func (this *QSGOpaqueTextureMaterial) AnisotropyLevel() QSGTexture__AnisotropyLevel {
	return (QSGTexture__AnisotropyLevel)(C.QSGOpaqueTextureMaterial_anisotropyLevel(this.h))
}

func (this *QSGOpaqueTextureMaterial) callVirtualBase_Type() *QSGMaterialType {

	return newQSGMaterialType(C.QSGOpaqueTextureMaterial_virtualbase_type(unsafe.Pointer(this.h)))

}
func (this *QSGOpaqueTextureMaterial) OnType(slot func(super func() *QSGMaterialType) *QSGMaterialType) {
	ok := C.QSGOpaqueTextureMaterial_override_virtual_type(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGOpaqueTextureMaterial_type
func miqt_exec_callback_QSGOpaqueTextureMaterial_type(self *C.QSGOpaqueTextureMaterial, cb C.intptr_t) *C.QSGMaterialType {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGMaterialType) *QSGMaterialType)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGOpaqueTextureMaterial{h: self}).callVirtualBase_Type)

	return virtualReturn.cPointer()

}

func (this *QSGOpaqueTextureMaterial) callVirtualBase_CreateShader() *QSGMaterialShader {

	return newQSGMaterialShader(C.QSGOpaqueTextureMaterial_virtualbase_createShader(unsafe.Pointer(this.h)))

}
func (this *QSGOpaqueTextureMaterial) OnCreateShader(slot func(super func() *QSGMaterialShader) *QSGMaterialShader) {
	ok := C.QSGOpaqueTextureMaterial_override_virtual_createShader(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGOpaqueTextureMaterial_createShader
func miqt_exec_callback_QSGOpaqueTextureMaterial_createShader(self *C.QSGOpaqueTextureMaterial, cb C.intptr_t) *C.QSGMaterialShader {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGMaterialShader) *QSGMaterialShader)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGOpaqueTextureMaterial{h: self}).callVirtualBase_CreateShader)

	return virtualReturn.cPointer()

}

func (this *QSGOpaqueTextureMaterial) callVirtualBase_Compare(other *QSGMaterial) int {

	return (int)(C.QSGOpaqueTextureMaterial_virtualbase_compare(unsafe.Pointer(this.h), other.cPointer()))

}
func (this *QSGOpaqueTextureMaterial) OnCompare(slot func(super func(other *QSGMaterial) int, other *QSGMaterial) int) {
	ok := C.QSGOpaqueTextureMaterial_override_virtual_compare(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGOpaqueTextureMaterial_compare
func miqt_exec_callback_QSGOpaqueTextureMaterial_compare(self *C.QSGOpaqueTextureMaterial, cb C.intptr_t, other *C.QSGMaterial) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(other *QSGMaterial) int, other *QSGMaterial) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGMaterial(other)

	virtualReturn := gofunc((&QSGOpaqueTextureMaterial{h: self}).callVirtualBase_Compare, slotval1)

	return (C.int)(virtualReturn)

}

// Delete this object from C++ memory.
func (this *QSGOpaqueTextureMaterial) Delete() {
	C.QSGOpaqueTextureMaterial_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGOpaqueTextureMaterial) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGOpaqueTextureMaterial) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGTextureMaterial struct {
	h *C.QSGTextureMaterial
	*QSGOpaqueTextureMaterial
}

func (this *QSGTextureMaterial) cPointer() *C.QSGTextureMaterial {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGTextureMaterial) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGTextureMaterial constructs the type using only CGO pointers.
func newQSGTextureMaterial(h *C.QSGTextureMaterial) *QSGTextureMaterial {
	if h == nil {
		return nil
	}
	var outptr_QSGOpaqueTextureMaterial *C.QSGOpaqueTextureMaterial = nil
	C.QSGTextureMaterial_virtbase(h, &outptr_QSGOpaqueTextureMaterial)

	return &QSGTextureMaterial{h: h,
		QSGOpaqueTextureMaterial: newQSGOpaqueTextureMaterial(outptr_QSGOpaqueTextureMaterial)}
}

// UnsafeNewQSGTextureMaterial constructs the type using only unsafe pointers.
func UnsafeNewQSGTextureMaterial(h unsafe.Pointer) *QSGTextureMaterial {
	return newQSGTextureMaterial((*C.QSGTextureMaterial)(h))
}

func (this *QSGTextureMaterial) Type() *QSGMaterialType {
	return newQSGMaterialType(C.QSGTextureMaterial_type(this.h))
}

func (this *QSGTextureMaterial) CreateShader() *QSGMaterialShader {
	return newQSGMaterialShader(C.QSGTextureMaterial_createShader(this.h))
}

// Delete this object from C++ memory.
func (this *QSGTextureMaterial) Delete() {
	C.QSGTextureMaterial_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGTextureMaterial) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGTextureMaterial) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
