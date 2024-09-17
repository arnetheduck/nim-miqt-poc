package qt

/*

#include "gen_qcheckbox.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QCheckBox struct {
	h *C.QCheckBox
	*QAbstractButton
}

func (this *QCheckBox) cPointer() *C.QCheckBox {
	if this == nil {
		return nil
	}
	return this.h
}

func newQCheckBox(h *C.QCheckBox) *QCheckBox {
	if h == nil {
		return nil
	}
	return &QCheckBox{h: h, QAbstractButton: newQAbstractButton_U(unsafe.Pointer(h))}
}

func newQCheckBox_U(h unsafe.Pointer) *QCheckBox {
	return newQCheckBox((*C.QCheckBox)(h))
}

// NewQCheckBox constructs a new QCheckBox object.
func NewQCheckBox() *QCheckBox {
	ret := C.QCheckBox_new()
	return newQCheckBox(ret)
}

// NewQCheckBox2 constructs a new QCheckBox object.
func NewQCheckBox2(text string) *QCheckBox {
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	ret := C.QCheckBox_new2((*C.struct_miqt_string)(text_ms))
	return newQCheckBox(ret)
}

// NewQCheckBox3 constructs a new QCheckBox object.
func NewQCheckBox3(parent *QWidget) *QCheckBox {
	ret := C.QCheckBox_new3(parent.cPointer())
	return newQCheckBox(ret)
}

// NewQCheckBox4 constructs a new QCheckBox object.
func NewQCheckBox4(text string, parent *QWidget) *QCheckBox {
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	ret := C.QCheckBox_new4((*C.struct_miqt_string)(text_ms), parent.cPointer())
	return newQCheckBox(ret)
}

func (this *QCheckBox) MetaObject() *QMetaObject {
	return newQMetaObject_U(unsafe.Pointer(C.QCheckBox_MetaObject(this.h)))
}

func QCheckBox_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QCheckBox_Tr(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QCheckBox_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QCheckBox_TrUtf8(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QCheckBox) SizeHint() *QSize {
	_ret := C.QCheckBox_SizeHint(this.h)
	_goptr := newQSize(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QCheckBox) MinimumSizeHint() *QSize {
	_ret := C.QCheckBox_MinimumSizeHint(this.h)
	_goptr := newQSize(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QCheckBox) SetTristate() {
	C.QCheckBox_SetTristate(this.h)
}

func (this *QCheckBox) IsTristate() bool {
	return (bool)(C.QCheckBox_IsTristate(this.h))
}

func (this *QCheckBox) CheckState() CheckState {
	return (CheckState)(C.QCheckBox_CheckState(this.h))
}

func (this *QCheckBox) SetCheckState(state CheckState) {
	C.QCheckBox_SetCheckState(this.h, (C.uintptr_t)(state))
}

func (this *QCheckBox) StateChanged(param1 int) {
	C.QCheckBox_StateChanged(this.h, (C.int)(param1))
}
func (this *QCheckBox) OnStateChanged(slot func(param1 int)) {
	C.QCheckBox_connect_StateChanged(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QCheckBox_StateChanged
func miqt_exec_callback_QCheckBox_StateChanged(cb *C.void, param1 C.int) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(param1 int))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (int)(param1)

	gofunc(slotval1)
}

func QCheckBox_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QCheckBox_Tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QCheckBox_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QCheckBox_Tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QCheckBox_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QCheckBox_TrUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QCheckBox_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QCheckBox_TrUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QCheckBox) SetTristate1(y bool) {
	C.QCheckBox_SetTristate1(this.h, (C.bool)(y))
}

// Delete this object from C++ memory.
func (this *QCheckBox) Delete() {
	C.QCheckBox_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QCheckBox) GoGC() {
	runtime.SetFinalizer(this, func(this *QCheckBox) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
