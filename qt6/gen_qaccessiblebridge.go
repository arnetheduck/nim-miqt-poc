package qt6

/*

#include "gen_qaccessiblebridge.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QAccessibleBridge struct {
	h *C.QAccessibleBridge
}

func (this *QAccessibleBridge) cPointer() *C.QAccessibleBridge {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QAccessibleBridge) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQAccessibleBridge constructs the type using only CGO pointers.
func newQAccessibleBridge(h *C.QAccessibleBridge) *QAccessibleBridge {
	if h == nil {
		return nil
	}

	return &QAccessibleBridge{h: h}
}

// UnsafeNewQAccessibleBridge constructs the type using only unsafe pointers.
func UnsafeNewQAccessibleBridge(h unsafe.Pointer) *QAccessibleBridge {
	return newQAccessibleBridge((*C.QAccessibleBridge)(h))
}

func (this *QAccessibleBridge) SetRootObject(rootObject *QAccessibleInterface) {
	C.QAccessibleBridge_setRootObject(this.h, rootObject.cPointer())
}

func (this *QAccessibleBridge) NotifyAccessibilityUpdate(event *QAccessibleEvent) {
	C.QAccessibleBridge_notifyAccessibilityUpdate(this.h, event.cPointer())
}

func (this *QAccessibleBridge) OperatorAssign(param1 *QAccessibleBridge) {
	C.QAccessibleBridge_operatorAssign(this.h, param1.cPointer())
}

// Delete this object from C++ memory.
func (this *QAccessibleBridge) Delete() {
	C.QAccessibleBridge_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QAccessibleBridge) GoGC() {
	runtime.SetFinalizer(this, func(this *QAccessibleBridge) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QAccessibleBridgePlugin struct {
	h *C.QAccessibleBridgePlugin
	*QObject
}

func (this *QAccessibleBridgePlugin) cPointer() *C.QAccessibleBridgePlugin {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QAccessibleBridgePlugin) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQAccessibleBridgePlugin constructs the type using only CGO pointers.
func newQAccessibleBridgePlugin(h *C.QAccessibleBridgePlugin) *QAccessibleBridgePlugin {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QAccessibleBridgePlugin_virtbase(h, &outptr_QObject)

	return &QAccessibleBridgePlugin{h: h,
		QObject: newQObject(outptr_QObject)}
}

// UnsafeNewQAccessibleBridgePlugin constructs the type using only unsafe pointers.
func UnsafeNewQAccessibleBridgePlugin(h unsafe.Pointer) *QAccessibleBridgePlugin {
	return newQAccessibleBridgePlugin((*C.QAccessibleBridgePlugin)(h))
}

// NewQAccessibleBridgePlugin constructs a new QAccessibleBridgePlugin object.
func NewQAccessibleBridgePlugin() *QAccessibleBridgePlugin {

	return newQAccessibleBridgePlugin(C.QAccessibleBridgePlugin_new())
}

// NewQAccessibleBridgePlugin2 constructs a new QAccessibleBridgePlugin object.
func NewQAccessibleBridgePlugin2(parent *QObject) *QAccessibleBridgePlugin {

	return newQAccessibleBridgePlugin(C.QAccessibleBridgePlugin_new2(parent.cPointer()))
}

func (this *QAccessibleBridgePlugin) MetaObject() *QMetaObject {
	return newQMetaObject(C.QAccessibleBridgePlugin_metaObject(this.h))
}

func (this *QAccessibleBridgePlugin) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QAccessibleBridgePlugin_metacast(this.h, param1_Cstring))
}

func (this *QAccessibleBridgePlugin) Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QAccessibleBridgePlugin_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QAccessibleBridgePlugin_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QAccessibleBridgePlugin_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAccessibleBridgePlugin) Create(key string) *QAccessibleBridge {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))
	return newQAccessibleBridge(C.QAccessibleBridgePlugin_create(this.h, key_ms))
}

func QAccessibleBridgePlugin_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAccessibleBridgePlugin_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAccessibleBridgePlugin_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAccessibleBridgePlugin_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAccessibleBridgePlugin) callVirtualBase_MetaObject() *QMetaObject {

	return newQMetaObject(C.QAccessibleBridgePlugin_virtualbase_metaObject(unsafe.Pointer(this.h)))

}
func (this *QAccessibleBridgePlugin) OnMetaObject(slot func(super func() *QMetaObject) *QMetaObject) {
	ok := C.QAccessibleBridgePlugin_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_metaObject
func miqt_exec_callback_QAccessibleBridgePlugin_metaObject(self *C.QAccessibleBridgePlugin, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QMetaObject) *QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_MetaObject)

	return virtualReturn.cPointer()

}

func (this *QAccessibleBridgePlugin) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QAccessibleBridgePlugin_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QAccessibleBridgePlugin) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QAccessibleBridgePlugin_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_metacast
func miqt_exec_callback_QAccessibleBridgePlugin_metacast(self *C.QAccessibleBridgePlugin, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QAccessibleBridgePlugin) callVirtualBase_Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QAccessibleBridgePlugin_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QAccessibleBridgePlugin) OnMetacall(slot func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QAccessibleBridgePlugin_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_metacall
func miqt_exec_callback_QAccessibleBridgePlugin_metacall(self *C.QAccessibleBridgePlugin, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QAccessibleBridgePlugin) OnCreate(slot func(key string) *QAccessibleBridge) {
	ok := C.QAccessibleBridgePlugin_override_virtual_create(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_create
func miqt_exec_callback_QAccessibleBridgePlugin_create(self *C.QAccessibleBridgePlugin, cb C.intptr_t, key C.struct_miqt_string) *C.QAccessibleBridge {
	gofunc, ok := cgo.Handle(cb).Value().(func(key string) *QAccessibleBridge)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var key_ms C.struct_miqt_string = key
	key_ret := C.GoStringN(key_ms.data, C.int(int64(key_ms.len)))
	C.free(unsafe.Pointer(key_ms.data))
	slotval1 := key_ret

	virtualReturn := gofunc(slotval1)

	return virtualReturn.cPointer()

}

func (this *QAccessibleBridgePlugin) callVirtualBase_Event(event *QEvent) bool {

	return (bool)(C.QAccessibleBridgePlugin_virtualbase_event(unsafe.Pointer(this.h), event.cPointer()))

}
func (this *QAccessibleBridgePlugin) OnEvent(slot func(super func(event *QEvent) bool, event *QEvent) bool) {
	ok := C.QAccessibleBridgePlugin_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_event
func miqt_exec_callback_QAccessibleBridgePlugin_event(self *C.QAccessibleBridgePlugin, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QEvent) bool, event *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(event)

	virtualReturn := gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QAccessibleBridgePlugin) callVirtualBase_EventFilter(watched *QObject, event *QEvent) bool {

	return (bool)(C.QAccessibleBridgePlugin_virtualbase_eventFilter(unsafe.Pointer(this.h), watched.cPointer(), event.cPointer()))

}
func (this *QAccessibleBridgePlugin) OnEventFilter(slot func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool) {
	ok := C.QAccessibleBridgePlugin_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_eventFilter
func miqt_exec_callback_QAccessibleBridgePlugin_eventFilter(self *C.QAccessibleBridgePlugin, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQObject(watched)

	slotval2 := newQEvent(event)

	virtualReturn := gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QAccessibleBridgePlugin) callVirtualBase_TimerEvent(event *QTimerEvent) {

	C.QAccessibleBridgePlugin_virtualbase_timerEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QAccessibleBridgePlugin) OnTimerEvent(slot func(super func(event *QTimerEvent), event *QTimerEvent)) {
	ok := C.QAccessibleBridgePlugin_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_timerEvent
func miqt_exec_callback_QAccessibleBridgePlugin_timerEvent(self *C.QAccessibleBridgePlugin, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QTimerEvent), event *QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQTimerEvent(event)

	gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QAccessibleBridgePlugin) callVirtualBase_ChildEvent(event *QChildEvent) {

	C.QAccessibleBridgePlugin_virtualbase_childEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QAccessibleBridgePlugin) OnChildEvent(slot func(super func(event *QChildEvent), event *QChildEvent)) {
	ok := C.QAccessibleBridgePlugin_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_childEvent
func miqt_exec_callback_QAccessibleBridgePlugin_childEvent(self *C.QAccessibleBridgePlugin, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QChildEvent), event *QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQChildEvent(event)

	gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QAccessibleBridgePlugin) callVirtualBase_CustomEvent(event *QEvent) {

	C.QAccessibleBridgePlugin_virtualbase_customEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QAccessibleBridgePlugin) OnCustomEvent(slot func(super func(event *QEvent), event *QEvent)) {
	ok := C.QAccessibleBridgePlugin_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_customEvent
func miqt_exec_callback_QAccessibleBridgePlugin_customEvent(self *C.QAccessibleBridgePlugin, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QEvent), event *QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(event)

	gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QAccessibleBridgePlugin) callVirtualBase_ConnectNotify(signal *QMetaMethod) {

	C.QAccessibleBridgePlugin_virtualbase_connectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QAccessibleBridgePlugin) OnConnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QAccessibleBridgePlugin_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_connectNotify
func miqt_exec_callback_QAccessibleBridgePlugin_connectNotify(self *C.QAccessibleBridgePlugin, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QAccessibleBridgePlugin) callVirtualBase_DisconnectNotify(signal *QMetaMethod) {

	C.QAccessibleBridgePlugin_virtualbase_disconnectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QAccessibleBridgePlugin) OnDisconnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QAccessibleBridgePlugin_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAccessibleBridgePlugin_disconnectNotify
func miqt_exec_callback_QAccessibleBridgePlugin_disconnectNotify(self *C.QAccessibleBridgePlugin, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QAccessibleBridgePlugin{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QAccessibleBridgePlugin) Delete() {
	C.QAccessibleBridgePlugin_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QAccessibleBridgePlugin) GoGC() {
	runtime.SetFinalizer(this, func(this *QAccessibleBridgePlugin) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
