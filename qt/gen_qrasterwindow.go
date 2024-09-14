package qt

/*

#include "gen_qrasterwindow.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QRasterWindow struct {
	h *C.QRasterWindow
	*QPaintDeviceWindow
}

func (this *QRasterWindow) cPointer() *C.QRasterWindow {
	if this == nil {
		return nil
	}
	return this.h
}

func newQRasterWindow(h *C.QRasterWindow) *QRasterWindow {
	if h == nil {
		return nil
	}
	return &QRasterWindow{h: h, QPaintDeviceWindow: newQPaintDeviceWindow_U(unsafe.Pointer(h))}
}

func newQRasterWindow_U(h unsafe.Pointer) *QRasterWindow {
	return newQRasterWindow((*C.QRasterWindow)(h))
}

// NewQRasterWindow constructs a new QRasterWindow object.
func NewQRasterWindow() *QRasterWindow {
	ret := C.QRasterWindow_new()
	return newQRasterWindow(ret)
}

// NewQRasterWindow2 constructs a new QRasterWindow object.
func NewQRasterWindow2(parent *QWindow) *QRasterWindow {
	ret := C.QRasterWindow_new2(parent.cPointer())
	return newQRasterWindow(ret)
}

func (this *QRasterWindow) MetaObject() *QMetaObject {
	_ret := C.QRasterWindow_MetaObject(this.h)
	return newQMetaObject_U(unsafe.Pointer(_ret))
}

func QRasterWindow_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QRasterWindow_Tr(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QRasterWindow_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QRasterWindow_TrUtf8(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QRasterWindow_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QRasterWindow_Tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QRasterWindow_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QRasterWindow_Tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QRasterWindow_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QRasterWindow_TrUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QRasterWindow_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QRasterWindow_TrUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

// Delete this object from C++ memory.
func (this *QRasterWindow) Delete() {
	C.QRasterWindow_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QRasterWindow) GoGC() {
	runtime.SetFinalizer(this, func(this *QRasterWindow) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
