package multimedia

/*

#include "gen_qaudioinput.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt6"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QAudioInput struct {
	h *C.QAudioInput
	*qt6.QObject
}

func (this *QAudioInput) cPointer() *C.QAudioInput {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QAudioInput) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQAudioInput constructs the type using only CGO pointers.
func newQAudioInput(h *C.QAudioInput) *QAudioInput {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QAudioInput_virtbase(h, &outptr_QObject)

	return &QAudioInput{h: h,
		QObject: qt6.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQAudioInput constructs the type using only unsafe pointers.
func UnsafeNewQAudioInput(h unsafe.Pointer) *QAudioInput {
	return newQAudioInput((*C.QAudioInput)(h))
}

// NewQAudioInput constructs a new QAudioInput object.
func NewQAudioInput() *QAudioInput {

	return newQAudioInput(C.QAudioInput_new())
}

// NewQAudioInput2 constructs a new QAudioInput object.
func NewQAudioInput2(deviceInfo *QAudioDevice) *QAudioInput {

	return newQAudioInput(C.QAudioInput_new2(deviceInfo.cPointer()))
}

// NewQAudioInput3 constructs a new QAudioInput object.
func NewQAudioInput3(parent *qt6.QObject) *QAudioInput {

	return newQAudioInput(C.QAudioInput_new3((*C.QObject)(parent.UnsafePointer())))
}

// NewQAudioInput4 constructs a new QAudioInput object.
func NewQAudioInput4(deviceInfo *QAudioDevice, parent *qt6.QObject) *QAudioInput {

	return newQAudioInput(C.QAudioInput_new4(deviceInfo.cPointer(), (*C.QObject)(parent.UnsafePointer())))
}

func (this *QAudioInput) MetaObject() *qt6.QMetaObject {
	return qt6.UnsafeNewQMetaObject(unsafe.Pointer(C.QAudioInput_metaObject(this.h)))
}

func (this *QAudioInput) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QAudioInput_metacast(this.h, param1_Cstring))
}

func (this *QAudioInput) Metacall(param1 qt6.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QAudioInput_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QAudioInput_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QAudioInput_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAudioInput) Device() *QAudioDevice {
	_goptr := newQAudioDevice(C.QAudioInput_device(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QAudioInput) Volume() float32 {
	return (float32)(C.QAudioInput_volume(this.h))
}

func (this *QAudioInput) IsMuted() bool {
	return (bool)(C.QAudioInput_isMuted(this.h))
}

func (this *QAudioInput) SetDevice(device *QAudioDevice) {
	C.QAudioInput_setDevice(this.h, device.cPointer())
}

func (this *QAudioInput) SetVolume(volume float32) {
	C.QAudioInput_setVolume(this.h, (C.float)(volume))
}

func (this *QAudioInput) SetMuted(muted bool) {
	C.QAudioInput_setMuted(this.h, (C.bool)(muted))
}

func (this *QAudioInput) DeviceChanged() {
	C.QAudioInput_deviceChanged(this.h)
}
func (this *QAudioInput) OnDeviceChanged(slot func()) {
	C.QAudioInput_connect_deviceChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAudioInput_deviceChanged
func miqt_exec_callback_QAudioInput_deviceChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QAudioInput) VolumeChanged(volume float32) {
	C.QAudioInput_volumeChanged(this.h, (C.float)(volume))
}
func (this *QAudioInput) OnVolumeChanged(slot func(volume float32)) {
	C.QAudioInput_connect_volumeChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAudioInput_volumeChanged
func miqt_exec_callback_QAudioInput_volumeChanged(cb C.intptr_t, volume C.float) {
	gofunc, ok := cgo.Handle(cb).Value().(func(volume float32))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (float32)(volume)

	gofunc(slotval1)
}

func (this *QAudioInput) MutedChanged(muted bool) {
	C.QAudioInput_mutedChanged(this.h, (C.bool)(muted))
}
func (this *QAudioInput) OnMutedChanged(slot func(muted bool)) {
	C.QAudioInput_connect_mutedChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAudioInput_mutedChanged
func miqt_exec_callback_QAudioInput_mutedChanged(cb C.intptr_t, muted C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(muted bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(muted)

	gofunc(slotval1)
}

func QAudioInput_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAudioInput_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAudioInput_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAudioInput_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAudioInput) callVirtualBase_MetaObject() *qt6.QMetaObject {

	return qt6.UnsafeNewQMetaObject(unsafe.Pointer(C.QAudioInput_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QAudioInput) OnmetaObject(slot func(super func() *qt6.QMetaObject) *qt6.QMetaObject) {
	ok := C.QAudioInput_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_metaObject
func miqt_exec_callback_QAudioInput_metaObject(self *C.QAudioInput, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt6.QMetaObject) *qt6.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QAudioInput{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QAudioInput) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QAudioInput_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QAudioInput) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QAudioInput_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_metacast
func miqt_exec_callback_QAudioInput_metacast(self *C.QAudioInput, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QAudioInput{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QAudioInput) callVirtualBase_Metacall(param1 qt6.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QAudioInput_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QAudioInput) OnMetacall(slot func(super func(param1 qt6.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt6.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QAudioInput_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_metacall
func miqt_exec_callback_QAudioInput_metacall(self *C.QAudioInput, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt6.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt6.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt6.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QAudioInput{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QAudioInput) callVirtualBase_Event(event *qt6.QEvent) bool {

	return (bool)(C.QAudioInput_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QAudioInput) OnEvent(slot func(super func(event *qt6.QEvent) bool, event *qt6.QEvent) bool) {
	ok := C.QAudioInput_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_event
func miqt_exec_callback_QAudioInput_event(self *C.QAudioInput, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt6.QEvent) bool, event *qt6.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt6.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QAudioInput{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QAudioInput) callVirtualBase_EventFilter(watched *qt6.QObject, event *qt6.QEvent) bool {

	return (bool)(C.QAudioInput_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QAudioInput) OnEventFilter(slot func(super func(watched *qt6.QObject, event *qt6.QEvent) bool, watched *qt6.QObject, event *qt6.QEvent) bool) {
	ok := C.QAudioInput_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_eventFilter
func miqt_exec_callback_QAudioInput_eventFilter(self *C.QAudioInput, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt6.QObject, event *qt6.QEvent) bool, watched *qt6.QObject, event *qt6.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt6.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt6.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QAudioInput{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QAudioInput) callVirtualBase_TimerEvent(event *qt6.QTimerEvent) {

	C.QAudioInput_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QAudioInput) OnTimerEvent(slot func(super func(event *qt6.QTimerEvent), event *qt6.QTimerEvent)) {
	ok := C.QAudioInput_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_timerEvent
func miqt_exec_callback_QAudioInput_timerEvent(self *C.QAudioInput, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt6.QTimerEvent), event *qt6.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt6.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QAudioInput{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QAudioInput) callVirtualBase_ChildEvent(event *qt6.QChildEvent) {

	C.QAudioInput_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QAudioInput) OnChildEvent(slot func(super func(event *qt6.QChildEvent), event *qt6.QChildEvent)) {
	ok := C.QAudioInput_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_childEvent
func miqt_exec_callback_QAudioInput_childEvent(self *C.QAudioInput, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt6.QChildEvent), event *qt6.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt6.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QAudioInput{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QAudioInput) callVirtualBase_CustomEvent(event *qt6.QEvent) {

	C.QAudioInput_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QAudioInput) OnCustomEvent(slot func(super func(event *qt6.QEvent), event *qt6.QEvent)) {
	ok := C.QAudioInput_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_customEvent
func miqt_exec_callback_QAudioInput_customEvent(self *C.QAudioInput, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt6.QEvent), event *qt6.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt6.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QAudioInput{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QAudioInput) callVirtualBase_ConnectNotify(signal *qt6.QMetaMethod) {

	C.QAudioInput_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QAudioInput) OnConnectNotify(slot func(super func(signal *qt6.QMetaMethod), signal *qt6.QMetaMethod)) {
	ok := C.QAudioInput_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_connectNotify
func miqt_exec_callback_QAudioInput_connectNotify(self *C.QAudioInput, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt6.QMetaMethod), signal *qt6.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt6.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QAudioInput{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QAudioInput) callVirtualBase_DisconnectNotify(signal *qt6.QMetaMethod) {

	C.QAudioInput_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QAudioInput) OnDisconnectNotify(slot func(super func(signal *qt6.QMetaMethod), signal *qt6.QMetaMethod)) {
	ok := C.QAudioInput_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioInput_disconnectNotify
func miqt_exec_callback_QAudioInput_disconnectNotify(self *C.QAudioInput, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt6.QMetaMethod), signal *qt6.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt6.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QAudioInput{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QAudioInput) Delete() {
	C.QAudioInput_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QAudioInput) GoGC() {
	runtime.SetFinalizer(this, func(this *QAudioInput) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
