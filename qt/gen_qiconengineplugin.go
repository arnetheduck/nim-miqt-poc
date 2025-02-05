package qt

/*

#include "gen_qiconengineplugin.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QIconEnginePlugin struct {
	h *C.QIconEnginePlugin
	*QObject
}

func (this *QIconEnginePlugin) cPointer() *C.QIconEnginePlugin {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QIconEnginePlugin) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQIconEnginePlugin constructs the type using only CGO pointers.
func newQIconEnginePlugin(h *C.QIconEnginePlugin) *QIconEnginePlugin {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QIconEnginePlugin_virtbase(h, &outptr_QObject)

	return &QIconEnginePlugin{h: h,
		QObject: newQObject(outptr_QObject)}
}

// UnsafeNewQIconEnginePlugin constructs the type using only unsafe pointers.
func UnsafeNewQIconEnginePlugin(h unsafe.Pointer) *QIconEnginePlugin {
	return newQIconEnginePlugin((*C.QIconEnginePlugin)(h))
}

// NewQIconEnginePlugin constructs a new QIconEnginePlugin object.
func NewQIconEnginePlugin() *QIconEnginePlugin {

	return newQIconEnginePlugin(C.QIconEnginePlugin_new())
}

// NewQIconEnginePlugin2 constructs a new QIconEnginePlugin object.
func NewQIconEnginePlugin2(parent *QObject) *QIconEnginePlugin {

	return newQIconEnginePlugin(C.QIconEnginePlugin_new2(parent.cPointer()))
}

func (this *QIconEnginePlugin) MetaObject() *QMetaObject {
	return newQMetaObject(C.QIconEnginePlugin_metaObject(this.h))
}

func (this *QIconEnginePlugin) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QIconEnginePlugin_metacast(this.h, param1_Cstring))
}

func (this *QIconEnginePlugin) Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QIconEnginePlugin_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QIconEnginePlugin_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QIconEnginePlugin_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QIconEnginePlugin_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QIconEnginePlugin_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QIconEnginePlugin) Create(filename string) *QIconEngine {
	filename_ms := C.struct_miqt_string{}
	filename_ms.data = C.CString(filename)
	filename_ms.len = C.size_t(len(filename))
	defer C.free(unsafe.Pointer(filename_ms.data))
	return newQIconEngine(C.QIconEnginePlugin_create(this.h, filename_ms))
}

func QIconEnginePlugin_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QIconEnginePlugin_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QIconEnginePlugin_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QIconEnginePlugin_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QIconEnginePlugin_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QIconEnginePlugin_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QIconEnginePlugin_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QIconEnginePlugin_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QIconEnginePlugin) callVirtualBase_MetaObject() *QMetaObject {

	return newQMetaObject(C.QIconEnginePlugin_virtualbase_metaObject(unsafe.Pointer(this.h)))

}
func (this *QIconEnginePlugin) OnMetaObject(slot func(super func() *QMetaObject) *QMetaObject) {
	ok := C.QIconEnginePlugin_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_metaObject
func miqt_exec_callback_QIconEnginePlugin_metaObject(self *C.QIconEnginePlugin, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QMetaObject) *QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_MetaObject)

	return virtualReturn.cPointer()

}

func (this *QIconEnginePlugin) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QIconEnginePlugin_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QIconEnginePlugin) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QIconEnginePlugin_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_metacast
func miqt_exec_callback_QIconEnginePlugin_metacast(self *C.QIconEnginePlugin, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QIconEnginePlugin) callVirtualBase_Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QIconEnginePlugin_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QIconEnginePlugin) OnMetacall(slot func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QIconEnginePlugin_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_metacall
func miqt_exec_callback_QIconEnginePlugin_metacall(self *C.QIconEnginePlugin, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QIconEnginePlugin) OnCreate(slot func(filename string) *QIconEngine) {
	ok := C.QIconEnginePlugin_override_virtual_create(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_create
func miqt_exec_callback_QIconEnginePlugin_create(self *C.QIconEnginePlugin, cb C.intptr_t, filename C.struct_miqt_string) *C.QIconEngine {
	gofunc, ok := cgo.Handle(cb).Value().(func(filename string) *QIconEngine)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var filename_ms C.struct_miqt_string = filename
	filename_ret := C.GoStringN(filename_ms.data, C.int(int64(filename_ms.len)))
	C.free(unsafe.Pointer(filename_ms.data))
	slotval1 := filename_ret

	virtualReturn := gofunc(slotval1)

	return virtualReturn.cPointer()

}

func (this *QIconEnginePlugin) callVirtualBase_Event(event *QEvent) bool {

	return (bool)(C.QIconEnginePlugin_virtualbase_event(unsafe.Pointer(this.h), event.cPointer()))

}
func (this *QIconEnginePlugin) OnEvent(slot func(super func(event *QEvent) bool, event *QEvent) bool) {
	ok := C.QIconEnginePlugin_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_event
func miqt_exec_callback_QIconEnginePlugin_event(self *C.QIconEnginePlugin, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QEvent) bool, event *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(event)

	virtualReturn := gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QIconEnginePlugin) callVirtualBase_EventFilter(watched *QObject, event *QEvent) bool {

	return (bool)(C.QIconEnginePlugin_virtualbase_eventFilter(unsafe.Pointer(this.h), watched.cPointer(), event.cPointer()))

}
func (this *QIconEnginePlugin) OnEventFilter(slot func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool) {
	ok := C.QIconEnginePlugin_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_eventFilter
func miqt_exec_callback_QIconEnginePlugin_eventFilter(self *C.QIconEnginePlugin, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQObject(watched)

	slotval2 := newQEvent(event)

	virtualReturn := gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QIconEnginePlugin) callVirtualBase_TimerEvent(event *QTimerEvent) {

	C.QIconEnginePlugin_virtualbase_timerEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QIconEnginePlugin) OnTimerEvent(slot func(super func(event *QTimerEvent), event *QTimerEvent)) {
	ok := C.QIconEnginePlugin_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_timerEvent
func miqt_exec_callback_QIconEnginePlugin_timerEvent(self *C.QIconEnginePlugin, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QTimerEvent), event *QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQTimerEvent(event)

	gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QIconEnginePlugin) callVirtualBase_ChildEvent(event *QChildEvent) {

	C.QIconEnginePlugin_virtualbase_childEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QIconEnginePlugin) OnChildEvent(slot func(super func(event *QChildEvent), event *QChildEvent)) {
	ok := C.QIconEnginePlugin_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_childEvent
func miqt_exec_callback_QIconEnginePlugin_childEvent(self *C.QIconEnginePlugin, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QChildEvent), event *QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQChildEvent(event)

	gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QIconEnginePlugin) callVirtualBase_CustomEvent(event *QEvent) {

	C.QIconEnginePlugin_virtualbase_customEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QIconEnginePlugin) OnCustomEvent(slot func(super func(event *QEvent), event *QEvent)) {
	ok := C.QIconEnginePlugin_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_customEvent
func miqt_exec_callback_QIconEnginePlugin_customEvent(self *C.QIconEnginePlugin, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QEvent), event *QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(event)

	gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QIconEnginePlugin) callVirtualBase_ConnectNotify(signal *QMetaMethod) {

	C.QIconEnginePlugin_virtualbase_connectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QIconEnginePlugin) OnConnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QIconEnginePlugin_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_connectNotify
func miqt_exec_callback_QIconEnginePlugin_connectNotify(self *C.QIconEnginePlugin, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QIconEnginePlugin) callVirtualBase_DisconnectNotify(signal *QMetaMethod) {

	C.QIconEnginePlugin_virtualbase_disconnectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QIconEnginePlugin) OnDisconnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QIconEnginePlugin_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QIconEnginePlugin_disconnectNotify
func miqt_exec_callback_QIconEnginePlugin_disconnectNotify(self *C.QIconEnginePlugin, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QIconEnginePlugin{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QIconEnginePlugin) Delete() {
	C.QIconEnginePlugin_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QIconEnginePlugin) GoGC() {
	runtime.SetFinalizer(this, func(this *QIconEnginePlugin) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
