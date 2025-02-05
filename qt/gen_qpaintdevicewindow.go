package qt

/*

#include "gen_qpaintdevicewindow.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QPaintDeviceWindow struct {
	h *C.QPaintDeviceWindow
	*QWindow
	*QPaintDevice
}

func (this *QPaintDeviceWindow) cPointer() *C.QPaintDeviceWindow {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QPaintDeviceWindow) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQPaintDeviceWindow constructs the type using only CGO pointers.
func newQPaintDeviceWindow(h *C.QPaintDeviceWindow) *QPaintDeviceWindow {
	if h == nil {
		return nil
	}
	var outptr_QWindow *C.QWindow = nil
	var outptr_QPaintDevice *C.QPaintDevice = nil
	C.QPaintDeviceWindow_virtbase(h, &outptr_QWindow, &outptr_QPaintDevice)

	return &QPaintDeviceWindow{h: h,
		QWindow:      newQWindow(outptr_QWindow),
		QPaintDevice: newQPaintDevice(outptr_QPaintDevice)}
}

// UnsafeNewQPaintDeviceWindow constructs the type using only unsafe pointers.
func UnsafeNewQPaintDeviceWindow(h unsafe.Pointer) *QPaintDeviceWindow {
	return newQPaintDeviceWindow((*C.QPaintDeviceWindow)(h))
}

func (this *QPaintDeviceWindow) MetaObject() *QMetaObject {
	return newQMetaObject(C.QPaintDeviceWindow_metaObject(this.h))
}

func (this *QPaintDeviceWindow) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QPaintDeviceWindow_metacast(this.h, param1_Cstring))
}

func (this *QPaintDeviceWindow) Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QPaintDeviceWindow_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QPaintDeviceWindow_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QPaintDeviceWindow_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QPaintDeviceWindow_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QPaintDeviceWindow_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QPaintDeviceWindow) Update(rect *QRect) {
	C.QPaintDeviceWindow_update(this.h, rect.cPointer())
}

func (this *QPaintDeviceWindow) UpdateWithRegion(region *QRegion) {
	C.QPaintDeviceWindow_updateWithRegion(this.h, region.cPointer())
}

func (this *QPaintDeviceWindow) Update2() {
	C.QPaintDeviceWindow_update2(this.h)
}

func QPaintDeviceWindow_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QPaintDeviceWindow_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QPaintDeviceWindow_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QPaintDeviceWindow_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QPaintDeviceWindow_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QPaintDeviceWindow_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QPaintDeviceWindow_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QPaintDeviceWindow_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

// Delete this object from C++ memory.
func (this *QPaintDeviceWindow) Delete() {
	C.QPaintDeviceWindow_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QPaintDeviceWindow) GoGC() {
	runtime.SetFinalizer(this, func(this *QPaintDeviceWindow) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
