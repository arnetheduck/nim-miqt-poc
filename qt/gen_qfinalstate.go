package qt

/*

#include "gen_qfinalstate.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QFinalState struct {
	h *C.QFinalState
	*QAbstractState
}

func (this *QFinalState) cPointer() *C.QFinalState {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QFinalState) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQFinalState constructs the type using only CGO pointers.
func newQFinalState(h *C.QFinalState) *QFinalState {
	if h == nil {
		return nil
	}
	var outptr_QAbstractState *C.QAbstractState = nil
	C.QFinalState_virtbase(h, &outptr_QAbstractState)

	return &QFinalState{h: h,
		QAbstractState: newQAbstractState(outptr_QAbstractState)}
}

// UnsafeNewQFinalState constructs the type using only unsafe pointers.
func UnsafeNewQFinalState(h unsafe.Pointer) *QFinalState {
	return newQFinalState((*C.QFinalState)(h))
}

// NewQFinalState constructs a new QFinalState object.
func NewQFinalState() *QFinalState {

	return newQFinalState(C.QFinalState_new())
}

// NewQFinalState2 constructs a new QFinalState object.
func NewQFinalState2(parent *QState) *QFinalState {

	return newQFinalState(C.QFinalState_new2(parent.cPointer()))
}

func (this *QFinalState) MetaObject() *QMetaObject {
	return newQMetaObject(C.QFinalState_metaObject(this.h))
}

func (this *QFinalState) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QFinalState_metacast(this.h, param1_Cstring))
}

func (this *QFinalState) Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QFinalState_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QFinalState_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QFinalState_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QFinalState_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QFinalState_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QFinalState_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QFinalState_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QFinalState_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QFinalState_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QFinalState_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QFinalState_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QFinalState_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QFinalState_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QFinalState) callVirtualBase_Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QFinalState_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QFinalState) OnMetacall(slot func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QFinalState_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_metacall
func miqt_exec_callback_QFinalState_metacall(self *C.QFinalState, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QFinalState{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QFinalState) callVirtualBase_OnEntry(event *QEvent) {

	C.QFinalState_virtualbase_onEntry(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QFinalState) OnOnEntry(slot func(super func(event *QEvent), event *QEvent)) {
	ok := C.QFinalState_override_virtual_onEntry(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_onEntry
func miqt_exec_callback_QFinalState_onEntry(self *C.QFinalState, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QEvent), event *QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(event)

	gofunc((&QFinalState{h: self}).callVirtualBase_OnEntry, slotval1)

}

func (this *QFinalState) callVirtualBase_OnExit(event *QEvent) {

	C.QFinalState_virtualbase_onExit(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QFinalState) OnOnExit(slot func(super func(event *QEvent), event *QEvent)) {
	ok := C.QFinalState_override_virtual_onExit(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_onExit
func miqt_exec_callback_QFinalState_onExit(self *C.QFinalState, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QEvent), event *QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(event)

	gofunc((&QFinalState{h: self}).callVirtualBase_OnExit, slotval1)

}

func (this *QFinalState) callVirtualBase_Event(e *QEvent) bool {

	return (bool)(C.QFinalState_virtualbase_event(unsafe.Pointer(this.h), e.cPointer()))

}
func (this *QFinalState) OnEvent(slot func(super func(e *QEvent) bool, e *QEvent) bool) {
	ok := C.QFinalState_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_event
func miqt_exec_callback_QFinalState_event(self *C.QFinalState, cb C.intptr_t, e *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(e *QEvent) bool, e *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(e)

	virtualReturn := gofunc((&QFinalState{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QFinalState) callVirtualBase_EventFilter(watched *QObject, event *QEvent) bool {

	return (bool)(C.QFinalState_virtualbase_eventFilter(unsafe.Pointer(this.h), watched.cPointer(), event.cPointer()))

}
func (this *QFinalState) OnEventFilter(slot func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool) {
	ok := C.QFinalState_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_eventFilter
func miqt_exec_callback_QFinalState_eventFilter(self *C.QFinalState, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQObject(watched)

	slotval2 := newQEvent(event)

	virtualReturn := gofunc((&QFinalState{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QFinalState) callVirtualBase_TimerEvent(event *QTimerEvent) {

	C.QFinalState_virtualbase_timerEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QFinalState) OnTimerEvent(slot func(super func(event *QTimerEvent), event *QTimerEvent)) {
	ok := C.QFinalState_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_timerEvent
func miqt_exec_callback_QFinalState_timerEvent(self *C.QFinalState, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QTimerEvent), event *QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQTimerEvent(event)

	gofunc((&QFinalState{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QFinalState) callVirtualBase_ChildEvent(event *QChildEvent) {

	C.QFinalState_virtualbase_childEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QFinalState) OnChildEvent(slot func(super func(event *QChildEvent), event *QChildEvent)) {
	ok := C.QFinalState_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_childEvent
func miqt_exec_callback_QFinalState_childEvent(self *C.QFinalState, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QChildEvent), event *QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQChildEvent(event)

	gofunc((&QFinalState{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QFinalState) callVirtualBase_CustomEvent(event *QEvent) {

	C.QFinalState_virtualbase_customEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QFinalState) OnCustomEvent(slot func(super func(event *QEvent), event *QEvent)) {
	ok := C.QFinalState_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_customEvent
func miqt_exec_callback_QFinalState_customEvent(self *C.QFinalState, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QEvent), event *QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(event)

	gofunc((&QFinalState{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QFinalState) callVirtualBase_ConnectNotify(signal *QMetaMethod) {

	C.QFinalState_virtualbase_connectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QFinalState) OnConnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QFinalState_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_connectNotify
func miqt_exec_callback_QFinalState_connectNotify(self *C.QFinalState, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QFinalState{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QFinalState) callVirtualBase_DisconnectNotify(signal *QMetaMethod) {

	C.QFinalState_virtualbase_disconnectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QFinalState) OnDisconnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QFinalState_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QFinalState_disconnectNotify
func miqt_exec_callback_QFinalState_disconnectNotify(self *C.QFinalState, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QFinalState{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QFinalState) Delete() {
	C.QFinalState_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QFinalState) GoGC() {
	runtime.SetFinalizer(this, func(this *QFinalState) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
