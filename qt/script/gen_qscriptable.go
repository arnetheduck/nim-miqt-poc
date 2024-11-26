package script

/*

#include "gen_qscriptable.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QScriptable struct {
	h          *C.QScriptable
	isSubclass bool
}

func (this *QScriptable) cPointer() *C.QScriptable {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QScriptable) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQScriptable constructs the type using only CGO pointers.
func newQScriptable(h *C.QScriptable) *QScriptable {
	if h == nil {
		return nil
	}
	return &QScriptable{h: h}
}

// UnsafeNewQScriptable constructs the type using only unsafe pointers.
func UnsafeNewQScriptable(h unsafe.Pointer) *QScriptable {
	if h == nil {
		return nil
	}

	return &QScriptable{h: (*C.QScriptable)(h)}
}

// NewQScriptable constructs a new QScriptable object.
func NewQScriptable() *QScriptable {
	var outptr_QScriptable *C.QScriptable = nil

	C.QScriptable_new(&outptr_QScriptable)
	ret := newQScriptable(outptr_QScriptable)
	ret.isSubclass = true
	return ret
}

func (this *QScriptable) Engine() *QScriptEngine {
	return UnsafeNewQScriptEngine(unsafe.Pointer(C.QScriptable_Engine(this.h)), nil)
}

func (this *QScriptable) Context() *QScriptContext {
	return UnsafeNewQScriptContext(unsafe.Pointer(C.QScriptable_Context(this.h)))
}

func (this *QScriptable) ThisObject() *QScriptValue {
	_ret := C.QScriptable_ThisObject(this.h)
	_goptr := newQScriptValue(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QScriptable) ArgumentCount() int {
	return (int)(C.QScriptable_ArgumentCount(this.h))
}

func (this *QScriptable) Argument(index int) *QScriptValue {
	_ret := C.QScriptable_Argument(this.h, (C.int)(index))
	_goptr := newQScriptValue(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

// Delete this object from C++ memory.
func (this *QScriptable) Delete() {
	C.QScriptable_Delete(this.h, C.bool(this.isSubclass))
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QScriptable) GoGC() {
	runtime.SetFinalizer(this, func(this *QScriptable) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
