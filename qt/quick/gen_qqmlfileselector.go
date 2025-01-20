package quick

/*

#include "gen_qqmlfileselector.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQmlFileSelector struct {
	h *C.QQmlFileSelector
	*qt.QObject
}

func (this *QQmlFileSelector) cPointer() *C.QQmlFileSelector {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQmlFileSelector) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQmlFileSelector constructs the type using only CGO pointers.
func newQQmlFileSelector(h *C.QQmlFileSelector) *QQmlFileSelector {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QQmlFileSelector_virtbase(h, &outptr_QObject)

	return &QQmlFileSelector{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQQmlFileSelector constructs the type using only unsafe pointers.
func UnsafeNewQQmlFileSelector(h unsafe.Pointer) *QQmlFileSelector {
	return newQQmlFileSelector((*C.QQmlFileSelector)(h))
}

// NewQQmlFileSelector constructs a new QQmlFileSelector object.
func NewQQmlFileSelector(engine *QQmlEngine) *QQmlFileSelector {

	return newQQmlFileSelector(C.QQmlFileSelector_new(engine.cPointer()))
}

// NewQQmlFileSelector2 constructs a new QQmlFileSelector object.
func NewQQmlFileSelector2(engine *QQmlEngine, parent *qt.QObject) *QQmlFileSelector {

	return newQQmlFileSelector(C.QQmlFileSelector_new2(engine.cPointer(), (*C.QObject)(parent.UnsafePointer())))
}

func (this *QQmlFileSelector) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlFileSelector_metaObject(this.h)))
}

func (this *QQmlFileSelector) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQmlFileSelector_metacast(this.h, param1_Cstring))
}

func (this *QQmlFileSelector) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQmlFileSelector_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQmlFileSelector_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlFileSelector_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlFileSelector_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlFileSelector_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlFileSelector) Selector() *qt.QFileSelector {
	return qt.UnsafeNewQFileSelector(unsafe.Pointer(C.QQmlFileSelector_selector(this.h)))
}

func (this *QQmlFileSelector) SetSelector(selector *qt.QFileSelector) {
	C.QQmlFileSelector_setSelector(this.h, (*C.QFileSelector)(selector.UnsafePointer()))
}

func (this *QQmlFileSelector) SetExtraSelectors(strings []string) {
	strings_CArray := (*[0xffff]C.struct_miqt_string)(C.malloc(C.size_t(int(unsafe.Sizeof(C.struct_miqt_string{})) * len(strings))))
	defer C.free(unsafe.Pointer(strings_CArray))
	for i := range strings {
		strings_i_ms := C.struct_miqt_string{}
		strings_i_ms.data = C.CString(strings[i])
		strings_i_ms.len = C.size_t(len(strings[i]))
		defer C.free(unsafe.Pointer(strings_i_ms.data))
		strings_CArray[i] = strings_i_ms
	}
	strings_ma := C.struct_miqt_array{len: C.size_t(len(strings)), data: unsafe.Pointer(strings_CArray)}
	C.QQmlFileSelector_setExtraSelectors(this.h, strings_ma)
}

func (this *QQmlFileSelector) SetExtraSelectorsWithStrings(strings []string) {
	strings_CArray := (*[0xffff]C.struct_miqt_string)(C.malloc(C.size_t(int(unsafe.Sizeof(C.struct_miqt_string{})) * len(strings))))
	defer C.free(unsafe.Pointer(strings_CArray))
	for i := range strings {
		strings_i_ms := C.struct_miqt_string{}
		strings_i_ms.data = C.CString(strings[i])
		strings_i_ms.len = C.size_t(len(strings[i]))
		defer C.free(unsafe.Pointer(strings_i_ms.data))
		strings_CArray[i] = strings_i_ms
	}
	strings_ma := C.struct_miqt_array{len: C.size_t(len(strings)), data: unsafe.Pointer(strings_CArray)}
	C.QQmlFileSelector_setExtraSelectorsWithStrings(this.h, strings_ma)
}

func QQmlFileSelector_Get(param1 *QQmlEngine) *QQmlFileSelector {
	return newQQmlFileSelector(C.QQmlFileSelector_get(param1.cPointer()))
}

func QQmlFileSelector_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlFileSelector_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlFileSelector_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlFileSelector_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlFileSelector_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlFileSelector_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlFileSelector_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlFileSelector_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlFileSelector) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlFileSelector_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQmlFileSelector) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQmlFileSelector_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_metaObject
func miqt_exec_callback_QQmlFileSelector_metaObject(self *C.QQmlFileSelector, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQmlFileSelector{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQmlFileSelector) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQmlFileSelector_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQmlFileSelector) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQmlFileSelector_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_metacast
func miqt_exec_callback_QQmlFileSelector_metacast(self *C.QQmlFileSelector, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQmlFileSelector{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQmlFileSelector) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQmlFileSelector_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQmlFileSelector) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQmlFileSelector_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_metacall
func miqt_exec_callback_QQmlFileSelector_metacall(self *C.QQmlFileSelector, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQmlFileSelector{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQmlFileSelector) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QQmlFileSelector_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlFileSelector) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QQmlFileSelector_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_event
func miqt_exec_callback_QQmlFileSelector_event(self *C.QQmlFileSelector, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlFileSelector{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQmlFileSelector) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQmlFileSelector_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlFileSelector) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQmlFileSelector_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_eventFilter
func miqt_exec_callback_QQmlFileSelector_eventFilter(self *C.QQmlFileSelector, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlFileSelector{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQmlFileSelector) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQmlFileSelector_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQmlFileSelector) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQmlFileSelector_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_timerEvent
func miqt_exec_callback_QQmlFileSelector_timerEvent(self *C.QQmlFileSelector, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQmlFileSelector{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQmlFileSelector) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQmlFileSelector_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQmlFileSelector) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQmlFileSelector_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_childEvent
func miqt_exec_callback_QQmlFileSelector_childEvent(self *C.QQmlFileSelector, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQmlFileSelector{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQmlFileSelector) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQmlFileSelector_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQmlFileSelector) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQmlFileSelector_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_customEvent
func miqt_exec_callback_QQmlFileSelector_customEvent(self *C.QQmlFileSelector, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQmlFileSelector{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQmlFileSelector) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQmlFileSelector_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlFileSelector) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlFileSelector_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_connectNotify
func miqt_exec_callback_QQmlFileSelector_connectNotify(self *C.QQmlFileSelector, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlFileSelector{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQmlFileSelector) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQmlFileSelector_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlFileSelector) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlFileSelector_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlFileSelector_disconnectNotify
func miqt_exec_callback_QQmlFileSelector_disconnectNotify(self *C.QQmlFileSelector, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlFileSelector{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQmlFileSelector) Delete() {
	C.QQmlFileSelector_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQmlFileSelector) GoGC() {
	runtime.SetFinalizer(this, func(this *QQmlFileSelector) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
