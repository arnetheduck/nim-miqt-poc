package quick

/*

#include "gen_qquickitemgrabresult.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQuickItemGrabResult struct {
	h *C.QQuickItemGrabResult
	*qt.QObject
}

func (this *QQuickItemGrabResult) cPointer() *C.QQuickItemGrabResult {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickItemGrabResult) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickItemGrabResult constructs the type using only CGO pointers.
func newQQuickItemGrabResult(h *C.QQuickItemGrabResult) *QQuickItemGrabResult {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QQuickItemGrabResult_virtbase(h, &outptr_QObject)

	return &QQuickItemGrabResult{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQQuickItemGrabResult constructs the type using only unsafe pointers.
func UnsafeNewQQuickItemGrabResult(h unsafe.Pointer) *QQuickItemGrabResult {
	return newQQuickItemGrabResult((*C.QQuickItemGrabResult)(h))
}

func (this *QQuickItemGrabResult) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickItemGrabResult_metaObject(this.h)))
}

func (this *QQuickItemGrabResult) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickItemGrabResult_metacast(this.h, param1_Cstring))
}

func (this *QQuickItemGrabResult) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickItemGrabResult_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickItemGrabResult_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItemGrabResult_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickItemGrabResult_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItemGrabResult_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickItemGrabResult) Image() *qt.QImage {
	_goptr := qt.UnsafeNewQImage(unsafe.Pointer(C.QQuickItemGrabResult_image(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItemGrabResult) Url() *qt.QUrl {
	_goptr := qt.UnsafeNewQUrl(unsafe.Pointer(C.QQuickItemGrabResult_url(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItemGrabResult) SaveToFile(fileName string) bool {
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))
	return (bool)(C.QQuickItemGrabResult_saveToFile(this.h, fileName_ms))
}

func (this *QQuickItemGrabResult) SaveToFileWithFileName(fileName string) bool {
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))
	return (bool)(C.QQuickItemGrabResult_saveToFileWithFileName(this.h, fileName_ms))
}

func (this *QQuickItemGrabResult) Ready() {
	C.QQuickItemGrabResult_ready(this.h)
}
func (this *QQuickItemGrabResult) OnReady(slot func()) {
	C.QQuickItemGrabResult_connect_ready(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItemGrabResult_ready
func miqt_exec_callback_QQuickItemGrabResult_ready(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QQuickItemGrabResult_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItemGrabResult_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickItemGrabResult_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItemGrabResult_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickItemGrabResult_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItemGrabResult_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickItemGrabResult_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItemGrabResult_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

// Delete this object from C++ memory.
func (this *QQuickItemGrabResult) Delete() {
	C.QQuickItemGrabResult_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickItemGrabResult) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickItemGrabResult) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
