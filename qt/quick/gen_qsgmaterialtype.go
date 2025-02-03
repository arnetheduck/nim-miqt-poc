package quick

/*

#include "gen_qsgmaterialtype.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QSGMaterialType struct {
	h *C.QSGMaterialType
}

func (this *QSGMaterialType) cPointer() *C.QSGMaterialType {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGMaterialType) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGMaterialType constructs the type using only CGO pointers.
func newQSGMaterialType(h *C.QSGMaterialType) *QSGMaterialType {
	if h == nil {
		return nil
	}

	return &QSGMaterialType{h: h}
}

// UnsafeNewQSGMaterialType constructs the type using only unsafe pointers.
func UnsafeNewQSGMaterialType(h unsafe.Pointer) *QSGMaterialType {
	return newQSGMaterialType((*C.QSGMaterialType)(h))
}

// Delete this object from C++ memory.
func (this *QSGMaterialType) Delete() {
	C.QSGMaterialType_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGMaterialType) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGMaterialType) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
