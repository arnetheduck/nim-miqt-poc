package qt6

/*

#include "gen_qthreadstorage.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QThreadStorageData struct {
	h *C.QThreadStorageData
}

func (this *QThreadStorageData) cPointer() *C.QThreadStorageData {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QThreadStorageData) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQThreadStorageData constructs the type using only CGO pointers.
func newQThreadStorageData(h *C.QThreadStorageData) *QThreadStorageData {
	if h == nil {
		return nil
	}

	return &QThreadStorageData{h: h}
}

// UnsafeNewQThreadStorageData constructs the type using only unsafe pointers.
func UnsafeNewQThreadStorageData(h unsafe.Pointer) *QThreadStorageData {
	return newQThreadStorageData((*C.QThreadStorageData)(h))
}

// NewQThreadStorageData constructs a new QThreadStorageData object.
func NewQThreadStorageData(param1 *QThreadStorageData) *QThreadStorageData {

	return newQThreadStorageData(C.QThreadStorageData_new(param1.cPointer()))
}

func (this *QThreadStorageData) Get() unsafe.Pointer {
	return (unsafe.Pointer)(C.QThreadStorageData_get(this.h))
}

func (this *QThreadStorageData) Set(p unsafe.Pointer) unsafe.Pointer {
	return (unsafe.Pointer)(C.QThreadStorageData_set(this.h, p))
}

func QThreadStorageData_Finish(param1 unsafe.Pointer) {
	C.QThreadStorageData_finish(param1)
}

// Delete this object from C++ memory.
func (this *QThreadStorageData) Delete() {
	C.QThreadStorageData_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QThreadStorageData) GoGC() {
	runtime.SetFinalizer(this, func(this *QThreadStorageData) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
