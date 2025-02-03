package quick

/*

#include "gen_qsgtextureprovider.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGTextureProvider struct {
	h *C.QSGTextureProvider
	*qt.QObject
}

func (this *QSGTextureProvider) cPointer() *C.QSGTextureProvider {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGTextureProvider) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGTextureProvider constructs the type using only CGO pointers.
func newQSGTextureProvider(h *C.QSGTextureProvider) *QSGTextureProvider {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QSGTextureProvider_virtbase(h, &outptr_QObject)

	return &QSGTextureProvider{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQSGTextureProvider constructs the type using only unsafe pointers.
func UnsafeNewQSGTextureProvider(h unsafe.Pointer) *QSGTextureProvider {
	return newQSGTextureProvider((*C.QSGTextureProvider)(h))
}

func (this *QSGTextureProvider) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QSGTextureProvider_metaObject(this.h)))
}

func (this *QSGTextureProvider) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QSGTextureProvider_metacast(this.h, param1_Cstring))
}

func (this *QSGTextureProvider) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QSGTextureProvider_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QSGTextureProvider_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGTextureProvider_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGTextureProvider_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGTextureProvider_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSGTextureProvider) Texture() *QSGTexture {
	return newQSGTexture(C.QSGTextureProvider_texture(this.h))
}

func (this *QSGTextureProvider) TextureChanged() {
	C.QSGTextureProvider_textureChanged(this.h)
}
func (this *QSGTextureProvider) OnTextureChanged(slot func()) {
	C.QSGTextureProvider_connect_textureChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QSGTextureProvider_textureChanged
func miqt_exec_callback_QSGTextureProvider_textureChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QSGTextureProvider_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGTextureProvider_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGTextureProvider_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGTextureProvider_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGTextureProvider_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGTextureProvider_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGTextureProvider_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGTextureProvider_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

// Delete this object from C++ memory.
func (this *QSGTextureProvider) Delete() {
	C.QSGTextureProvider_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGTextureProvider) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGTextureProvider) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
