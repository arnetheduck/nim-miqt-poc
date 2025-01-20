package quick

/*

#include "gen_qqmlpropertymap.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQmlPropertyMap struct {
	h *C.QQmlPropertyMap
	*qt.QObject
}

func (this *QQmlPropertyMap) cPointer() *C.QQmlPropertyMap {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQmlPropertyMap) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQmlPropertyMap constructs the type using only CGO pointers.
func newQQmlPropertyMap(h *C.QQmlPropertyMap) *QQmlPropertyMap {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QQmlPropertyMap_virtbase(h, &outptr_QObject)

	return &QQmlPropertyMap{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQQmlPropertyMap constructs the type using only unsafe pointers.
func UnsafeNewQQmlPropertyMap(h unsafe.Pointer) *QQmlPropertyMap {
	return newQQmlPropertyMap((*C.QQmlPropertyMap)(h))
}

// NewQQmlPropertyMap constructs a new QQmlPropertyMap object.
func NewQQmlPropertyMap() *QQmlPropertyMap {

	return newQQmlPropertyMap(C.QQmlPropertyMap_new())
}

// NewQQmlPropertyMap2 constructs a new QQmlPropertyMap object.
func NewQQmlPropertyMap2(parent *qt.QObject) *QQmlPropertyMap {

	return newQQmlPropertyMap(C.QQmlPropertyMap_new2((*C.QObject)(parent.UnsafePointer())))
}

func (this *QQmlPropertyMap) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlPropertyMap_metaObject(this.h)))
}

func (this *QQmlPropertyMap) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQmlPropertyMap_metacast(this.h, param1_Cstring))
}

func (this *QQmlPropertyMap) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQmlPropertyMap_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQmlPropertyMap_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlPropertyMap_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlPropertyMap_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlPropertyMap_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlPropertyMap) Value(key string) *qt.QVariant {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))
	_goptr := qt.UnsafeNewQVariant(unsafe.Pointer(C.QQmlPropertyMap_value(this.h, key_ms)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQmlPropertyMap) Insert(key string, value *qt.QVariant) {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))
	C.QQmlPropertyMap_insert(this.h, key_ms, (*C.QVariant)(value.UnsafePointer()))
}

func (this *QQmlPropertyMap) Clear(key string) {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))
	C.QQmlPropertyMap_clear(this.h, key_ms)
}

func (this *QQmlPropertyMap) Keys() []string {
	var _ma C.struct_miqt_array = C.QQmlPropertyMap_keys(this.h)
	_ret := make([]string, int(_ma.len))
	_outCast := (*[0xffff]C.struct_miqt_string)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		var _lv_ms C.struct_miqt_string = _outCast[i]
		_lv_ret := C.GoStringN(_lv_ms.data, C.int(int64(_lv_ms.len)))
		C.free(unsafe.Pointer(_lv_ms.data))
		_ret[i] = _lv_ret
	}
	return _ret
}

func (this *QQmlPropertyMap) Count() int {
	return (int)(C.QQmlPropertyMap_count(this.h))
}

func (this *QQmlPropertyMap) Size() int {
	return (int)(C.QQmlPropertyMap_size(this.h))
}

func (this *QQmlPropertyMap) IsEmpty() bool {
	return (bool)(C.QQmlPropertyMap_isEmpty(this.h))
}

func (this *QQmlPropertyMap) Contains(key string) bool {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))
	return (bool)(C.QQmlPropertyMap_contains(this.h, key_ms))
}

func (this *QQmlPropertyMap) OperatorSubscript(key string) *qt.QVariant {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))
	return qt.UnsafeNewQVariant(unsafe.Pointer(C.QQmlPropertyMap_operatorSubscript(this.h, key_ms)))
}

func (this *QQmlPropertyMap) OperatorSubscriptWithKey(key string) *qt.QVariant {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))
	_goptr := qt.UnsafeNewQVariant(unsafe.Pointer(C.QQmlPropertyMap_operatorSubscriptWithKey(this.h, key_ms)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQmlPropertyMap) ValueChanged(key string, value *qt.QVariant) {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))
	C.QQmlPropertyMap_valueChanged(this.h, key_ms, (*C.QVariant)(value.UnsafePointer()))
}
func (this *QQmlPropertyMap) OnValueChanged(slot func(key string, value *qt.QVariant)) {
	C.QQmlPropertyMap_connect_valueChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQmlPropertyMap_valueChanged
func miqt_exec_callback_QQmlPropertyMap_valueChanged(cb C.intptr_t, key C.struct_miqt_string, value *C.QVariant) {
	gofunc, ok := cgo.Handle(cb).Value().(func(key string, value *qt.QVariant))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var key_ms C.struct_miqt_string = key
	key_ret := C.GoStringN(key_ms.data, C.int(int64(key_ms.len)))
	C.free(unsafe.Pointer(key_ms.data))
	slotval1 := key_ret
	slotval2 := qt.UnsafeNewQVariant(unsafe.Pointer(value))

	gofunc(slotval1, slotval2)
}

func QQmlPropertyMap_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlPropertyMap_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlPropertyMap_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlPropertyMap_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlPropertyMap_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlPropertyMap_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlPropertyMap_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlPropertyMap_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlPropertyMap) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlPropertyMap_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQmlPropertyMap) OnMetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQmlPropertyMap_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_metaObject
func miqt_exec_callback_QQmlPropertyMap_metaObject(self *C.QQmlPropertyMap, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQmlPropertyMap) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQmlPropertyMap_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQmlPropertyMap) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQmlPropertyMap_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_metacast
func miqt_exec_callback_QQmlPropertyMap_metacast(self *C.QQmlPropertyMap, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQmlPropertyMap) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQmlPropertyMap_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQmlPropertyMap) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQmlPropertyMap_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_metacall
func miqt_exec_callback_QQmlPropertyMap_metacall(self *C.QQmlPropertyMap, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQmlPropertyMap) callVirtualBase_UpdateValue(key string, input *qt.QVariant) *qt.QVariant {
	key_ms := C.struct_miqt_string{}
	key_ms.data = C.CString(key)
	key_ms.len = C.size_t(len(key))
	defer C.free(unsafe.Pointer(key_ms.data))

	_goptr := qt.UnsafeNewQVariant(unsafe.Pointer(C.QQmlPropertyMap_virtualbase_updateValue(unsafe.Pointer(this.h), key_ms, (*C.QVariant)(input.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQmlPropertyMap) OnUpdateValue(slot func(super func(key string, input *qt.QVariant) *qt.QVariant, key string, input *qt.QVariant) *qt.QVariant) {
	ok := C.QQmlPropertyMap_override_virtual_updateValue(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_updateValue
func miqt_exec_callback_QQmlPropertyMap_updateValue(self *C.QQmlPropertyMap, cb C.intptr_t, key C.struct_miqt_string, input *C.QVariant) *C.QVariant {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(key string, input *qt.QVariant) *qt.QVariant, key string, input *qt.QVariant) *qt.QVariant)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var key_ms C.struct_miqt_string = key
	key_ret := C.GoStringN(key_ms.data, C.int(int64(key_ms.len)))
	C.free(unsafe.Pointer(key_ms.data))
	slotval1 := key_ret
	slotval2 := qt.UnsafeNewQVariant(unsafe.Pointer(input))

	virtualReturn := gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_UpdateValue, slotval1, slotval2)

	return (*C.QVariant)(virtualReturn.UnsafePointer())

}

func (this *QQmlPropertyMap) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QQmlPropertyMap_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlPropertyMap) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QQmlPropertyMap_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_event
func miqt_exec_callback_QQmlPropertyMap_event(self *C.QQmlPropertyMap, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQmlPropertyMap) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQmlPropertyMap_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlPropertyMap) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQmlPropertyMap_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_eventFilter
func miqt_exec_callback_QQmlPropertyMap_eventFilter(self *C.QQmlPropertyMap, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQmlPropertyMap) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQmlPropertyMap_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQmlPropertyMap) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQmlPropertyMap_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_timerEvent
func miqt_exec_callback_QQmlPropertyMap_timerEvent(self *C.QQmlPropertyMap, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQmlPropertyMap) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQmlPropertyMap_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQmlPropertyMap) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQmlPropertyMap_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_childEvent
func miqt_exec_callback_QQmlPropertyMap_childEvent(self *C.QQmlPropertyMap, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQmlPropertyMap) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQmlPropertyMap_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQmlPropertyMap) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQmlPropertyMap_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_customEvent
func miqt_exec_callback_QQmlPropertyMap_customEvent(self *C.QQmlPropertyMap, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQmlPropertyMap) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQmlPropertyMap_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlPropertyMap) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlPropertyMap_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_connectNotify
func miqt_exec_callback_QQmlPropertyMap_connectNotify(self *C.QQmlPropertyMap, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQmlPropertyMap) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQmlPropertyMap_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlPropertyMap) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlPropertyMap_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlPropertyMap_disconnectNotify
func miqt_exec_callback_QQmlPropertyMap_disconnectNotify(self *C.QQmlPropertyMap, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlPropertyMap{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQmlPropertyMap) Delete() {
	C.QQmlPropertyMap_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQmlPropertyMap) GoGC() {
	runtime.SetFinalizer(this, func(this *QQmlPropertyMap) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
