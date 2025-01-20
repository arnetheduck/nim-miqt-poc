package quick

/*

#include "gen_qqmlextensionplugin.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQmlExtensionPlugin struct {
	h *C.QQmlExtensionPlugin
	*qt.QObject
	*QQmlExtensionInterface
}

func (this *QQmlExtensionPlugin) cPointer() *C.QQmlExtensionPlugin {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQmlExtensionPlugin) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQmlExtensionPlugin constructs the type using only CGO pointers.
func newQQmlExtensionPlugin(h *C.QQmlExtensionPlugin) *QQmlExtensionPlugin {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	var outptr_QQmlExtensionInterface *C.QQmlExtensionInterface = nil
	C.QQmlExtensionPlugin_virtbase(h, &outptr_QObject, &outptr_QQmlExtensionInterface)

	return &QQmlExtensionPlugin{h: h,
		QObject:                qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject)),
		QQmlExtensionInterface: newQQmlExtensionInterface(outptr_QQmlExtensionInterface)}
}

// UnsafeNewQQmlExtensionPlugin constructs the type using only unsafe pointers.
func UnsafeNewQQmlExtensionPlugin(h unsafe.Pointer) *QQmlExtensionPlugin {
	return newQQmlExtensionPlugin((*C.QQmlExtensionPlugin)(h))
}

// NewQQmlExtensionPlugin constructs a new QQmlExtensionPlugin object.
func NewQQmlExtensionPlugin() *QQmlExtensionPlugin {

	return newQQmlExtensionPlugin(C.QQmlExtensionPlugin_new())
}

// NewQQmlExtensionPlugin2 constructs a new QQmlExtensionPlugin object.
func NewQQmlExtensionPlugin2(parent *qt.QObject) *QQmlExtensionPlugin {

	return newQQmlExtensionPlugin(C.QQmlExtensionPlugin_new2((*C.QObject)(parent.UnsafePointer())))
}

func (this *QQmlExtensionPlugin) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlExtensionPlugin_metaObject(this.h)))
}

func (this *QQmlExtensionPlugin) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQmlExtensionPlugin_metacast(this.h, param1_Cstring))
}

func (this *QQmlExtensionPlugin) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQmlExtensionPlugin_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQmlExtensionPlugin_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlExtensionPlugin_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlExtensionPlugin_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlExtensionPlugin_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlExtensionPlugin) BaseUrl() *qt.QUrl {
	_goptr := qt.UnsafeNewQUrl(unsafe.Pointer(C.QQmlExtensionPlugin_baseUrl(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQmlExtensionPlugin) RegisterTypes(uri string) {
	uri_Cstring := C.CString(uri)
	defer C.free(unsafe.Pointer(uri_Cstring))
	C.QQmlExtensionPlugin_registerTypes(this.h, uri_Cstring)
}

func (this *QQmlExtensionPlugin) InitializeEngine(engine *QQmlEngine, uri string) {
	uri_Cstring := C.CString(uri)
	defer C.free(unsafe.Pointer(uri_Cstring))
	C.QQmlExtensionPlugin_initializeEngine(this.h, engine.cPointer(), uri_Cstring)
}

func QQmlExtensionPlugin_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlExtensionPlugin_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlExtensionPlugin_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlExtensionPlugin_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlExtensionPlugin_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlExtensionPlugin_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlExtensionPlugin_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlExtensionPlugin_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlExtensionPlugin) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlExtensionPlugin_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQmlExtensionPlugin) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQmlExtensionPlugin_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_metaObject
func miqt_exec_callback_QQmlExtensionPlugin_metaObject(self *C.QQmlExtensionPlugin, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQmlExtensionPlugin) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQmlExtensionPlugin_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQmlExtensionPlugin) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQmlExtensionPlugin_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_metacast
func miqt_exec_callback_QQmlExtensionPlugin_metacast(self *C.QQmlExtensionPlugin, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQmlExtensionPlugin) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQmlExtensionPlugin_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQmlExtensionPlugin) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQmlExtensionPlugin_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_metacall
func miqt_exec_callback_QQmlExtensionPlugin_metacall(self *C.QQmlExtensionPlugin, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QQmlExtensionPlugin) OnRegisterTypes(slot func(uri string)) {
	ok := C.QQmlExtensionPlugin_override_virtual_registerTypes(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_registerTypes
func miqt_exec_callback_QQmlExtensionPlugin_registerTypes(self *C.QQmlExtensionPlugin, cb C.intptr_t, uri *C.const_char) {
	gofunc, ok := cgo.Handle(cb).Value().(func(uri string))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	uri_ret := uri
	slotval1 := C.GoString(uri_ret)

	gofunc(slotval1)

}

func (this *QQmlExtensionPlugin) callVirtualBase_InitializeEngine(engine *QQmlEngine, uri string) {
	uri_Cstring := C.CString(uri)
	defer C.free(unsafe.Pointer(uri_Cstring))

	C.QQmlExtensionPlugin_virtualbase_initializeEngine(unsafe.Pointer(this.h), engine.cPointer(), uri_Cstring)

}
func (this *QQmlExtensionPlugin) OnInitializeEngine(slot func(super func(engine *QQmlEngine, uri string), engine *QQmlEngine, uri string)) {
	ok := C.QQmlExtensionPlugin_override_virtual_initializeEngine(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_initializeEngine
func miqt_exec_callback_QQmlExtensionPlugin_initializeEngine(self *C.QQmlExtensionPlugin, cb C.intptr_t, engine *C.QQmlEngine, uri *C.const_char) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(engine *QQmlEngine, uri string), engine *QQmlEngine, uri string))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQmlEngine(engine)

	uri_ret := uri
	slotval2 := C.GoString(uri_ret)

	gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_InitializeEngine, slotval1, slotval2)

}

func (this *QQmlExtensionPlugin) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QQmlExtensionPlugin_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlExtensionPlugin) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QQmlExtensionPlugin_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_event
func miqt_exec_callback_QQmlExtensionPlugin_event(self *C.QQmlExtensionPlugin, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQmlExtensionPlugin) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQmlExtensionPlugin_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlExtensionPlugin) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQmlExtensionPlugin_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_eventFilter
func miqt_exec_callback_QQmlExtensionPlugin_eventFilter(self *C.QQmlExtensionPlugin, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQmlExtensionPlugin) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQmlExtensionPlugin_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQmlExtensionPlugin) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQmlExtensionPlugin_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_timerEvent
func miqt_exec_callback_QQmlExtensionPlugin_timerEvent(self *C.QQmlExtensionPlugin, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQmlExtensionPlugin) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQmlExtensionPlugin_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQmlExtensionPlugin) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQmlExtensionPlugin_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_childEvent
func miqt_exec_callback_QQmlExtensionPlugin_childEvent(self *C.QQmlExtensionPlugin, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQmlExtensionPlugin) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQmlExtensionPlugin_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQmlExtensionPlugin) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQmlExtensionPlugin_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_customEvent
func miqt_exec_callback_QQmlExtensionPlugin_customEvent(self *C.QQmlExtensionPlugin, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQmlExtensionPlugin) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQmlExtensionPlugin_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlExtensionPlugin) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlExtensionPlugin_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_connectNotify
func miqt_exec_callback_QQmlExtensionPlugin_connectNotify(self *C.QQmlExtensionPlugin, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQmlExtensionPlugin) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQmlExtensionPlugin_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlExtensionPlugin) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlExtensionPlugin_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlExtensionPlugin_disconnectNotify
func miqt_exec_callback_QQmlExtensionPlugin_disconnectNotify(self *C.QQmlExtensionPlugin, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlExtensionPlugin{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQmlExtensionPlugin) Delete() {
	C.QQmlExtensionPlugin_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQmlExtensionPlugin) GoGC() {
	runtime.SetFinalizer(this, func(this *QQmlExtensionPlugin) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQmlEngineExtensionPlugin struct {
	h *C.QQmlEngineExtensionPlugin
	*qt.QObject
	*QQmlEngineExtensionInterface
}

func (this *QQmlEngineExtensionPlugin) cPointer() *C.QQmlEngineExtensionPlugin {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQmlEngineExtensionPlugin) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQmlEngineExtensionPlugin constructs the type using only CGO pointers.
func newQQmlEngineExtensionPlugin(h *C.QQmlEngineExtensionPlugin) *QQmlEngineExtensionPlugin {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	var outptr_QQmlEngineExtensionInterface *C.QQmlEngineExtensionInterface = nil
	C.QQmlEngineExtensionPlugin_virtbase(h, &outptr_QObject, &outptr_QQmlEngineExtensionInterface)

	return &QQmlEngineExtensionPlugin{h: h,
		QObject:                      qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject)),
		QQmlEngineExtensionInterface: newQQmlEngineExtensionInterface(outptr_QQmlEngineExtensionInterface)}
}

// UnsafeNewQQmlEngineExtensionPlugin constructs the type using only unsafe pointers.
func UnsafeNewQQmlEngineExtensionPlugin(h unsafe.Pointer) *QQmlEngineExtensionPlugin {
	return newQQmlEngineExtensionPlugin((*C.QQmlEngineExtensionPlugin)(h))
}

// NewQQmlEngineExtensionPlugin constructs a new QQmlEngineExtensionPlugin object.
func NewQQmlEngineExtensionPlugin() *QQmlEngineExtensionPlugin {

	return newQQmlEngineExtensionPlugin(C.QQmlEngineExtensionPlugin_new())
}

// NewQQmlEngineExtensionPlugin2 constructs a new QQmlEngineExtensionPlugin object.
func NewQQmlEngineExtensionPlugin2(parent *qt.QObject) *QQmlEngineExtensionPlugin {

	return newQQmlEngineExtensionPlugin(C.QQmlEngineExtensionPlugin_new2((*C.QObject)(parent.UnsafePointer())))
}

func (this *QQmlEngineExtensionPlugin) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlEngineExtensionPlugin_metaObject(this.h)))
}

func (this *QQmlEngineExtensionPlugin) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQmlEngineExtensionPlugin_metacast(this.h, param1_Cstring))
}

func (this *QQmlEngineExtensionPlugin) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQmlEngineExtensionPlugin_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQmlEngineExtensionPlugin_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngineExtensionPlugin_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlEngineExtensionPlugin_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngineExtensionPlugin_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlEngineExtensionPlugin) InitializeEngine(engine *QQmlEngine, uri string) {
	uri_Cstring := C.CString(uri)
	defer C.free(unsafe.Pointer(uri_Cstring))
	C.QQmlEngineExtensionPlugin_initializeEngine(this.h, engine.cPointer(), uri_Cstring)
}

func QQmlEngineExtensionPlugin_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngineExtensionPlugin_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlEngineExtensionPlugin_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngineExtensionPlugin_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlEngineExtensionPlugin_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngineExtensionPlugin_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlEngineExtensionPlugin_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngineExtensionPlugin_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlEngineExtensionPlugin_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQmlEngineExtensionPlugin) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_metaObject
func miqt_exec_callback_QQmlEngineExtensionPlugin_metaObject(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQmlEngineExtensionPlugin_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQmlEngineExtensionPlugin) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_metacast
func miqt_exec_callback_QQmlEngineExtensionPlugin_metacast(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQmlEngineExtensionPlugin_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQmlEngineExtensionPlugin) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_metacall
func miqt_exec_callback_QQmlEngineExtensionPlugin_metacall(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_InitializeEngine(engine *QQmlEngine, uri string) {
	uri_Cstring := C.CString(uri)
	defer C.free(unsafe.Pointer(uri_Cstring))

	C.QQmlEngineExtensionPlugin_virtualbase_initializeEngine(unsafe.Pointer(this.h), engine.cPointer(), uri_Cstring)

}
func (this *QQmlEngineExtensionPlugin) OnInitializeEngine(slot func(super func(engine *QQmlEngine, uri string), engine *QQmlEngine, uri string)) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_initializeEngine(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_initializeEngine
func miqt_exec_callback_QQmlEngineExtensionPlugin_initializeEngine(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, engine *C.QQmlEngine, uri *C.const_char) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(engine *QQmlEngine, uri string), engine *QQmlEngine, uri string))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQmlEngine(engine)

	uri_ret := uri
	slotval2 := C.GoString(uri_ret)

	gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_InitializeEngine, slotval1, slotval2)

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QQmlEngineExtensionPlugin_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlEngineExtensionPlugin) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_event
func miqt_exec_callback_QQmlEngineExtensionPlugin_event(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQmlEngineExtensionPlugin_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlEngineExtensionPlugin) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_eventFilter
func miqt_exec_callback_QQmlEngineExtensionPlugin_eventFilter(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQmlEngineExtensionPlugin_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQmlEngineExtensionPlugin) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_timerEvent
func miqt_exec_callback_QQmlEngineExtensionPlugin_timerEvent(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQmlEngineExtensionPlugin_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQmlEngineExtensionPlugin) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_childEvent
func miqt_exec_callback_QQmlEngineExtensionPlugin_childEvent(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQmlEngineExtensionPlugin_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQmlEngineExtensionPlugin) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_customEvent
func miqt_exec_callback_QQmlEngineExtensionPlugin_customEvent(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQmlEngineExtensionPlugin_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlEngineExtensionPlugin) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_connectNotify
func miqt_exec_callback_QQmlEngineExtensionPlugin_connectNotify(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQmlEngineExtensionPlugin) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQmlEngineExtensionPlugin_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlEngineExtensionPlugin) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlEngineExtensionPlugin_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngineExtensionPlugin_disconnectNotify
func miqt_exec_callback_QQmlEngineExtensionPlugin_disconnectNotify(self *C.QQmlEngineExtensionPlugin, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlEngineExtensionPlugin{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQmlEngineExtensionPlugin) Delete() {
	C.QQmlEngineExtensionPlugin_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQmlEngineExtensionPlugin) GoGC() {
	runtime.SetFinalizer(this, func(this *QQmlEngineExtensionPlugin) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
