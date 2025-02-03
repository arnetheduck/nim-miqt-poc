package quick

/*

#include "gen_qqmllist.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"unsafe"
)

type QQmlListReference struct {
	h *C.QQmlListReference
}

func (this *QQmlListReference) cPointer() *C.QQmlListReference {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQmlListReference) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQmlListReference constructs the type using only CGO pointers.
func newQQmlListReference(h *C.QQmlListReference) *QQmlListReference {
	if h == nil {
		return nil
	}

	return &QQmlListReference{h: h}
}

// UnsafeNewQQmlListReference constructs the type using only unsafe pointers.
func UnsafeNewQQmlListReference(h unsafe.Pointer) *QQmlListReference {
	return newQQmlListReference((*C.QQmlListReference)(h))
}

// NewQQmlListReference constructs a new QQmlListReference object.
func NewQQmlListReference() *QQmlListReference {

	return newQQmlListReference(C.QQmlListReference_new())
}

// NewQQmlListReference2 constructs a new QQmlListReference object.
func NewQQmlListReference2(param1 *qt.QObject, property string) *QQmlListReference {
	property_Cstring := C.CString(property)
	defer C.free(unsafe.Pointer(property_Cstring))

	return newQQmlListReference(C.QQmlListReference_new2((*C.QObject)(param1.UnsafePointer()), property_Cstring))
}

// NewQQmlListReference3 constructs a new QQmlListReference object.
func NewQQmlListReference3(param1 *QQmlListReference) *QQmlListReference {

	return newQQmlListReference(C.QQmlListReference_new3(param1.cPointer()))
}

// NewQQmlListReference4 constructs a new QQmlListReference object.
func NewQQmlListReference4(param1 *qt.QObject, property string, param3 *QQmlEngine) *QQmlListReference {
	property_Cstring := C.CString(property)
	defer C.free(unsafe.Pointer(property_Cstring))

	return newQQmlListReference(C.QQmlListReference_new4((*C.QObject)(param1.UnsafePointer()), property_Cstring, param3.cPointer()))
}

func (this *QQmlListReference) OperatorAssign(param1 *QQmlListReference) {
	C.QQmlListReference_operatorAssign(this.h, param1.cPointer())
}

func (this *QQmlListReference) IsValid() bool {
	return (bool)(C.QQmlListReference_isValid(this.h))
}

func (this *QQmlListReference) Object() *qt.QObject {
	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQmlListReference_object(this.h)))
}

func (this *QQmlListReference) ListElementType() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlListReference_listElementType(this.h)))
}

func (this *QQmlListReference) CanAppend() bool {
	return (bool)(C.QQmlListReference_canAppend(this.h))
}

func (this *QQmlListReference) CanAt() bool {
	return (bool)(C.QQmlListReference_canAt(this.h))
}

func (this *QQmlListReference) CanClear() bool {
	return (bool)(C.QQmlListReference_canClear(this.h))
}

func (this *QQmlListReference) CanCount() bool {
	return (bool)(C.QQmlListReference_canCount(this.h))
}

func (this *QQmlListReference) CanReplace() bool {
	return (bool)(C.QQmlListReference_canReplace(this.h))
}

func (this *QQmlListReference) CanRemoveLast() bool {
	return (bool)(C.QQmlListReference_canRemoveLast(this.h))
}

func (this *QQmlListReference) IsManipulable() bool {
	return (bool)(C.QQmlListReference_isManipulable(this.h))
}

func (this *QQmlListReference) IsReadable() bool {
	return (bool)(C.QQmlListReference_isReadable(this.h))
}

func (this *QQmlListReference) Append(param1 *qt.QObject) bool {
	return (bool)(C.QQmlListReference_append(this.h, (*C.QObject)(param1.UnsafePointer())))
}

func (this *QQmlListReference) At(param1 int) *qt.QObject {
	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQmlListReference_at(this.h, (C.int)(param1))))
}

func (this *QQmlListReference) Clear() bool {
	return (bool)(C.QQmlListReference_clear(this.h))
}

func (this *QQmlListReference) Count() int {
	return (int)(C.QQmlListReference_count(this.h))
}

func (this *QQmlListReference) Replace(param1 int, param2 *qt.QObject) bool {
	return (bool)(C.QQmlListReference_replace(this.h, (C.int)(param1), (*C.QObject)(param2.UnsafePointer())))
}

func (this *QQmlListReference) RemoveLast() bool {
	return (bool)(C.QQmlListReference_removeLast(this.h))
}

// Delete this object from C++ memory.
func (this *QQmlListReference) Delete() {
	C.QQmlListReference_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQmlListReference) GoGC() {
	runtime.SetFinalizer(this, func(this *QQmlListReference) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
