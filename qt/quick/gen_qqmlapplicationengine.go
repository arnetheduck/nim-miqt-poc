package quick

/*

#include "gen_qqmlapplicationengine.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQmlApplicationEngine struct {
	h *C.QQmlApplicationEngine
	*QQmlEngine
}

func (this *QQmlApplicationEngine) cPointer() *C.QQmlApplicationEngine {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQmlApplicationEngine) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQmlApplicationEngine constructs the type using only CGO pointers.
func newQQmlApplicationEngine(h *C.QQmlApplicationEngine) *QQmlApplicationEngine {
	if h == nil {
		return nil
	}
	var outptr_QQmlEngine *C.QQmlEngine = nil
	C.QQmlApplicationEngine_virtbase(h, &outptr_QQmlEngine)

	return &QQmlApplicationEngine{h: h,
		QQmlEngine: newQQmlEngine(outptr_QQmlEngine)}
}

// UnsafeNewQQmlApplicationEngine constructs the type using only unsafe pointers.
func UnsafeNewQQmlApplicationEngine(h unsafe.Pointer) *QQmlApplicationEngine {
	return newQQmlApplicationEngine((*C.QQmlApplicationEngine)(h))
}

// NewQQmlApplicationEngine constructs a new QQmlApplicationEngine object.
func NewQQmlApplicationEngine() *QQmlApplicationEngine {

	return newQQmlApplicationEngine(C.QQmlApplicationEngine_new())
}

// NewQQmlApplicationEngine2 constructs a new QQmlApplicationEngine object.
func NewQQmlApplicationEngine2(url *qt.QUrl) *QQmlApplicationEngine {

	return newQQmlApplicationEngine(C.QQmlApplicationEngine_new2((*C.QUrl)(url.UnsafePointer())))
}

// NewQQmlApplicationEngine3 constructs a new QQmlApplicationEngine object.
func NewQQmlApplicationEngine3(filePath string) *QQmlApplicationEngine {
	filePath_ms := C.struct_miqt_string{}
	filePath_ms.data = C.CString(filePath)
	filePath_ms.len = C.size_t(len(filePath))
	defer C.free(unsafe.Pointer(filePath_ms.data))

	return newQQmlApplicationEngine(C.QQmlApplicationEngine_new3(filePath_ms))
}

// NewQQmlApplicationEngine4 constructs a new QQmlApplicationEngine object.
func NewQQmlApplicationEngine4(parent *qt.QObject) *QQmlApplicationEngine {

	return newQQmlApplicationEngine(C.QQmlApplicationEngine_new4((*C.QObject)(parent.UnsafePointer())))
}

// NewQQmlApplicationEngine5 constructs a new QQmlApplicationEngine object.
func NewQQmlApplicationEngine5(url *qt.QUrl, parent *qt.QObject) *QQmlApplicationEngine {

	return newQQmlApplicationEngine(C.QQmlApplicationEngine_new5((*C.QUrl)(url.UnsafePointer()), (*C.QObject)(parent.UnsafePointer())))
}

// NewQQmlApplicationEngine6 constructs a new QQmlApplicationEngine object.
func NewQQmlApplicationEngine6(filePath string, parent *qt.QObject) *QQmlApplicationEngine {
	filePath_ms := C.struct_miqt_string{}
	filePath_ms.data = C.CString(filePath)
	filePath_ms.len = C.size_t(len(filePath))
	defer C.free(unsafe.Pointer(filePath_ms.data))

	return newQQmlApplicationEngine(C.QQmlApplicationEngine_new6(filePath_ms, (*C.QObject)(parent.UnsafePointer())))
}

func (this *QQmlApplicationEngine) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlApplicationEngine_metaObject(this.h)))
}

func (this *QQmlApplicationEngine) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQmlApplicationEngine_metacast(this.h, param1_Cstring))
}

func (this *QQmlApplicationEngine) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQmlApplicationEngine_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQmlApplicationEngine_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlApplicationEngine_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlApplicationEngine_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlApplicationEngine_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlApplicationEngine) RootObjects() []*qt.QObject {
	var _ma C.struct_miqt_array = C.QQmlApplicationEngine_rootObjects(this.h)
	_ret := make([]*qt.QObject, int(_ma.len))
	_outCast := (*[0xffff]*C.QObject)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = qt.UnsafeNewQObject(unsafe.Pointer(_outCast[i]))
	}
	return _ret
}

func (this *QQmlApplicationEngine) RootObjects2() []*qt.QObject {
	var _ma C.struct_miqt_array = C.QQmlApplicationEngine_rootObjects2(this.h)
	_ret := make([]*qt.QObject, int(_ma.len))
	_outCast := (*[0xffff]*C.QObject)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = qt.UnsafeNewQObject(unsafe.Pointer(_outCast[i]))
	}
	return _ret
}

func (this *QQmlApplicationEngine) Load(url *qt.QUrl) {
	C.QQmlApplicationEngine_load(this.h, (*C.QUrl)(url.UnsafePointer()))
}

func (this *QQmlApplicationEngine) LoadWithFilePath(filePath string) {
	filePath_ms := C.struct_miqt_string{}
	filePath_ms.data = C.CString(filePath)
	filePath_ms.len = C.size_t(len(filePath))
	defer C.free(unsafe.Pointer(filePath_ms.data))
	C.QQmlApplicationEngine_loadWithFilePath(this.h, filePath_ms)
}

func (this *QQmlApplicationEngine) SetInitialProperties(initialProperties map[string]qt.QVariant) {
	initialProperties_Keys_CArray := (*[0xffff]C.struct_miqt_string)(C.malloc(C.size_t(int(unsafe.Sizeof(C.struct_miqt_string{})) * len(initialProperties))))
	defer C.free(unsafe.Pointer(initialProperties_Keys_CArray))
	initialProperties_Values_CArray := (*[0xffff]*C.QVariant)(C.malloc(C.size_t(8 * len(initialProperties))))
	defer C.free(unsafe.Pointer(initialProperties_Values_CArray))
	initialProperties_ctr := 0
	for initialProperties_k, initialProperties_v := range initialProperties {
		initialProperties_k_ms := C.struct_miqt_string{}
		initialProperties_k_ms.data = C.CString(initialProperties_k)
		initialProperties_k_ms.len = C.size_t(len(initialProperties_k))
		defer C.free(unsafe.Pointer(initialProperties_k_ms.data))
		initialProperties_Keys_CArray[initialProperties_ctr] = initialProperties_k_ms
		initialProperties_Values_CArray[initialProperties_ctr] = (*C.QVariant)(initialProperties_v.UnsafePointer())
		initialProperties_ctr++
	}
	initialProperties_mm := C.struct_miqt_map{
		len:    C.size_t(len(initialProperties)),
		keys:   unsafe.Pointer(initialProperties_Keys_CArray),
		values: unsafe.Pointer(initialProperties_Values_CArray),
	}
	C.QQmlApplicationEngine_setInitialProperties(this.h, initialProperties_mm)
}

func (this *QQmlApplicationEngine) LoadData(data []byte) {
	data_alias := C.struct_miqt_string{}
	if len(data) > 0 {
		data_alias.data = (*C.char)(unsafe.Pointer(&data[0]))
	} else {
		data_alias.data = (*C.char)(unsafe.Pointer(nil))
	}
	data_alias.len = C.size_t(len(data))
	C.QQmlApplicationEngine_loadData(this.h, data_alias)
}

func (this *QQmlApplicationEngine) ObjectCreated(object *qt.QObject, url *qt.QUrl) {
	C.QQmlApplicationEngine_objectCreated(this.h, (*C.QObject)(object.UnsafePointer()), (*C.QUrl)(url.UnsafePointer()))
}
func (this *QQmlApplicationEngine) OnObjectCreated(slot func(object *qt.QObject, url *qt.QUrl)) {
	C.QQmlApplicationEngine_connect_objectCreated(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQmlApplicationEngine_objectCreated
func miqt_exec_callback_QQmlApplicationEngine_objectCreated(cb C.intptr_t, object *C.QObject, url *C.QUrl) {
	gofunc, ok := cgo.Handle(cb).Value().(func(object *qt.QObject, url *qt.QUrl))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(object))

	slotval2 := qt.UnsafeNewQUrl(unsafe.Pointer(url))

	gofunc(slotval1, slotval2)
}

func QQmlApplicationEngine_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlApplicationEngine_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlApplicationEngine_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlApplicationEngine_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlApplicationEngine_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlApplicationEngine_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlApplicationEngine_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlApplicationEngine_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlApplicationEngine) LoadData2(data []byte, url *qt.QUrl) {
	data_alias := C.struct_miqt_string{}
	if len(data) > 0 {
		data_alias.data = (*C.char)(unsafe.Pointer(&data[0]))
	} else {
		data_alias.data = (*C.char)(unsafe.Pointer(nil))
	}
	data_alias.len = C.size_t(len(data))
	C.QQmlApplicationEngine_loadData2(this.h, data_alias, (*C.QUrl)(url.UnsafePointer()))
}

func (this *QQmlApplicationEngine) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlApplicationEngine_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQmlApplicationEngine) OnMetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQmlApplicationEngine_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_metaObject
func miqt_exec_callback_QQmlApplicationEngine_metaObject(self *C.QQmlApplicationEngine, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQmlApplicationEngine) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQmlApplicationEngine_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQmlApplicationEngine) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQmlApplicationEngine_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_metacast
func miqt_exec_callback_QQmlApplicationEngine_metacast(self *C.QQmlApplicationEngine, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQmlApplicationEngine) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQmlApplicationEngine_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQmlApplicationEngine) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQmlApplicationEngine_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_metacall
func miqt_exec_callback_QQmlApplicationEngine_metacall(self *C.QQmlApplicationEngine, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQmlApplicationEngine) callVirtualBase_Event(param1 *qt.QEvent) bool {

	return (bool)(C.QQmlApplicationEngine_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(param1.UnsafePointer())))

}
func (this *QQmlApplicationEngine) OnEvent(slot func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool) {
	ok := C.QQmlApplicationEngine_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_event
func miqt_exec_callback_QQmlApplicationEngine_event(self *C.QQmlApplicationEngine, cb C.intptr_t, param1 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(param1))

	virtualReturn := gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQmlApplicationEngine) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQmlApplicationEngine_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlApplicationEngine) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQmlApplicationEngine_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_eventFilter
func miqt_exec_callback_QQmlApplicationEngine_eventFilter(self *C.QQmlApplicationEngine, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQmlApplicationEngine) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQmlApplicationEngine_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQmlApplicationEngine) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQmlApplicationEngine_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_timerEvent
func miqt_exec_callback_QQmlApplicationEngine_timerEvent(self *C.QQmlApplicationEngine, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQmlApplicationEngine) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQmlApplicationEngine_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQmlApplicationEngine) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQmlApplicationEngine_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_childEvent
func miqt_exec_callback_QQmlApplicationEngine_childEvent(self *C.QQmlApplicationEngine, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQmlApplicationEngine) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQmlApplicationEngine_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQmlApplicationEngine) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQmlApplicationEngine_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_customEvent
func miqt_exec_callback_QQmlApplicationEngine_customEvent(self *C.QQmlApplicationEngine, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQmlApplicationEngine) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQmlApplicationEngine_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlApplicationEngine) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlApplicationEngine_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_connectNotify
func miqt_exec_callback_QQmlApplicationEngine_connectNotify(self *C.QQmlApplicationEngine, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQmlApplicationEngine) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQmlApplicationEngine_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlApplicationEngine) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlApplicationEngine_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlApplicationEngine_disconnectNotify
func miqt_exec_callback_QQmlApplicationEngine_disconnectNotify(self *C.QQmlApplicationEngine, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlApplicationEngine{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQmlApplicationEngine) Delete() {
	C.QQmlApplicationEngine_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQmlApplicationEngine) GoGC() {
	runtime.SetFinalizer(this, func(this *QQmlApplicationEngine) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
