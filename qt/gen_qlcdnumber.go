package qt

/*

#include "gen_qlcdnumber.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QLCDNumber__Mode int

const (
	QLCDNumber__Mode__Hex QLCDNumber__Mode = 0
	QLCDNumber__Mode__Dec QLCDNumber__Mode = 1
	QLCDNumber__Mode__Oct QLCDNumber__Mode = 2
	QLCDNumber__Mode__Bin QLCDNumber__Mode = 3
)

type QLCDNumber__SegmentStyle int

const (
	QLCDNumber__SegmentStyle__Outline QLCDNumber__SegmentStyle = 0
	QLCDNumber__SegmentStyle__Filled  QLCDNumber__SegmentStyle = 1
	QLCDNumber__SegmentStyle__Flat    QLCDNumber__SegmentStyle = 2
)

type QLCDNumber struct {
	h *C.QLCDNumber
	*QFrame
}

func (this *QLCDNumber) cPointer() *C.QLCDNumber {
	if this == nil {
		return nil
	}
	return this.h
}

func newQLCDNumber(h *C.QLCDNumber) *QLCDNumber {
	if h == nil {
		return nil
	}
	return &QLCDNumber{h: h, QFrame: newQFrame_U(unsafe.Pointer(h))}
}

func newQLCDNumber_U(h unsafe.Pointer) *QLCDNumber {
	return newQLCDNumber((*C.QLCDNumber)(h))
}

// NewQLCDNumber constructs a new QLCDNumber object.
func NewQLCDNumber() *QLCDNumber {
	ret := C.QLCDNumber_new()
	return newQLCDNumber(ret)
}

// NewQLCDNumber2 constructs a new QLCDNumber object.
func NewQLCDNumber2(numDigits uint) *QLCDNumber {
	ret := C.QLCDNumber_new2((C.uint)(numDigits))
	return newQLCDNumber(ret)
}

// NewQLCDNumber3 constructs a new QLCDNumber object.
func NewQLCDNumber3(parent *QWidget) *QLCDNumber {
	ret := C.QLCDNumber_new3(parent.cPointer())
	return newQLCDNumber(ret)
}

// NewQLCDNumber4 constructs a new QLCDNumber object.
func NewQLCDNumber4(numDigits uint, parent *QWidget) *QLCDNumber {
	ret := C.QLCDNumber_new4((C.uint)(numDigits), parent.cPointer())
	return newQLCDNumber(ret)
}

func (this *QLCDNumber) MetaObject() *QMetaObject {
	_ret := C.QLCDNumber_MetaObject(this.h)
	return newQMetaObject_U(unsafe.Pointer(_ret))
}

func QLCDNumber_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QLCDNumber_Tr(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QLCDNumber_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QLCDNumber_TrUtf8(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QLCDNumber) SmallDecimalPoint() bool {
	_ret := C.QLCDNumber_SmallDecimalPoint(this.h)
	return (bool)(_ret)
}

func (this *QLCDNumber) DigitCount() int {
	_ret := C.QLCDNumber_DigitCount(this.h)
	return (int)(_ret)
}

func (this *QLCDNumber) SetDigitCount(nDigits int) {
	C.QLCDNumber_SetDigitCount(this.h, (C.int)(nDigits))
}

func (this *QLCDNumber) CheckOverflow(num float64) bool {
	_ret := C.QLCDNumber_CheckOverflow(this.h, (C.double)(num))
	return (bool)(_ret)
}

func (this *QLCDNumber) CheckOverflowWithNum(num int) bool {
	_ret := C.QLCDNumber_CheckOverflowWithNum(this.h, (C.int)(num))
	return (bool)(_ret)
}

func (this *QLCDNumber) Mode() QLCDNumber__Mode {
	_ret := C.QLCDNumber_Mode(this.h)
	return (QLCDNumber__Mode)(_ret)
}

func (this *QLCDNumber) SetMode(mode QLCDNumber__Mode) {
	C.QLCDNumber_SetMode(this.h, (C.uintptr_t)(mode))
}

func (this *QLCDNumber) SegmentStyle() QLCDNumber__SegmentStyle {
	_ret := C.QLCDNumber_SegmentStyle(this.h)
	return (QLCDNumber__SegmentStyle)(_ret)
}

func (this *QLCDNumber) SetSegmentStyle(segmentStyle QLCDNumber__SegmentStyle) {
	C.QLCDNumber_SetSegmentStyle(this.h, (C.uintptr_t)(segmentStyle))
}

func (this *QLCDNumber) Value() float64 {
	_ret := C.QLCDNumber_Value(this.h)
	return (float64)(_ret)
}

func (this *QLCDNumber) IntValue() int {
	_ret := C.QLCDNumber_IntValue(this.h)
	return (int)(_ret)
}

func (this *QLCDNumber) SizeHint() *QSize {
	_ret := C.QLCDNumber_SizeHint(this.h)
	_goptr := newQSize(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QLCDNumber) Display(str string) {
	str_ms := miqt_strdupg(str)
	defer C.free(str_ms)
	C.QLCDNumber_Display(this.h, (*C.struct_miqt_string)(str_ms))
}

func (this *QLCDNumber) DisplayWithNum(num int) {
	C.QLCDNumber_DisplayWithNum(this.h, (C.int)(num))
}

func (this *QLCDNumber) Display2(num float64) {
	C.QLCDNumber_Display2(this.h, (C.double)(num))
}

func (this *QLCDNumber) SetHexMode() {
	C.QLCDNumber_SetHexMode(this.h)
}

func (this *QLCDNumber) SetDecMode() {
	C.QLCDNumber_SetDecMode(this.h)
}

func (this *QLCDNumber) SetOctMode() {
	C.QLCDNumber_SetOctMode(this.h)
}

func (this *QLCDNumber) SetBinMode() {
	C.QLCDNumber_SetBinMode(this.h)
}

func (this *QLCDNumber) SetSmallDecimalPoint(smallDecimalPoint bool) {
	C.QLCDNumber_SetSmallDecimalPoint(this.h, (C.bool)(smallDecimalPoint))
}

func (this *QLCDNumber) Overflow() {
	C.QLCDNumber_Overflow(this.h)
}
func (this *QLCDNumber) OnOverflow(slot func()) {
	C.QLCDNumber_connect_Overflow(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QLCDNumber_Overflow
func miqt_exec_callback_QLCDNumber_Overflow(cb *C.void) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QLCDNumber_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QLCDNumber_Tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QLCDNumber_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QLCDNumber_Tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QLCDNumber_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QLCDNumber_TrUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QLCDNumber_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QLCDNumber_TrUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

// Delete this object from C++ memory.
func (this *QLCDNumber) Delete() {
	C.QLCDNumber_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QLCDNumber) GoGC() {
	runtime.SetFinalizer(this, func(this *QLCDNumber) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
