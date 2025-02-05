package multimedia

/*

#include "gen_qaudiooutput.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QAudioOutput struct {
	h *C.QAudioOutput
	*qt.QObject
}

func (this *QAudioOutput) cPointer() *C.QAudioOutput {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QAudioOutput) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQAudioOutput constructs the type using only CGO pointers.
func newQAudioOutput(h *C.QAudioOutput) *QAudioOutput {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QAudioOutput_virtbase(h, &outptr_QObject)

	return &QAudioOutput{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQAudioOutput constructs the type using only unsafe pointers.
func UnsafeNewQAudioOutput(h unsafe.Pointer) *QAudioOutput {
	return newQAudioOutput((*C.QAudioOutput)(h))
}

// NewQAudioOutput constructs a new QAudioOutput object.
func NewQAudioOutput() *QAudioOutput {

	return newQAudioOutput(C.QAudioOutput_new())
}

// NewQAudioOutput2 constructs a new QAudioOutput object.
func NewQAudioOutput2(audioDeviceInfo *QAudioDeviceInfo) *QAudioOutput {

	return newQAudioOutput(C.QAudioOutput_new2(audioDeviceInfo.cPointer()))
}

// NewQAudioOutput3 constructs a new QAudioOutput object.
func NewQAudioOutput3(format *QAudioFormat) *QAudioOutput {

	return newQAudioOutput(C.QAudioOutput_new3(format.cPointer()))
}

// NewQAudioOutput4 constructs a new QAudioOutput object.
func NewQAudioOutput4(format *QAudioFormat, parent *qt.QObject) *QAudioOutput {

	return newQAudioOutput(C.QAudioOutput_new4(format.cPointer(), (*C.QObject)(parent.UnsafePointer())))
}

// NewQAudioOutput5 constructs a new QAudioOutput object.
func NewQAudioOutput5(audioDeviceInfo *QAudioDeviceInfo, format *QAudioFormat) *QAudioOutput {

	return newQAudioOutput(C.QAudioOutput_new5(audioDeviceInfo.cPointer(), format.cPointer()))
}

// NewQAudioOutput6 constructs a new QAudioOutput object.
func NewQAudioOutput6(audioDeviceInfo *QAudioDeviceInfo, format *QAudioFormat, parent *qt.QObject) *QAudioOutput {

	return newQAudioOutput(C.QAudioOutput_new6(audioDeviceInfo.cPointer(), format.cPointer(), (*C.QObject)(parent.UnsafePointer())))
}

func (this *QAudioOutput) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QAudioOutput_metaObject(this.h)))
}

func (this *QAudioOutput) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QAudioOutput_metacast(this.h, param1_Cstring))
}

func (this *QAudioOutput) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QAudioOutput_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QAudioOutput_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QAudioOutput_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAudioOutput_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QAudioOutput_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAudioOutput) Format() *QAudioFormat {
	_goptr := newQAudioFormat(C.QAudioOutput_format(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QAudioOutput) Start(device *qt.QIODevice) {
	C.QAudioOutput_start(this.h, (*C.QIODevice)(device.UnsafePointer()))
}

func (this *QAudioOutput) Start2() *qt.QIODevice {
	return qt.UnsafeNewQIODevice(unsafe.Pointer(C.QAudioOutput_start2(this.h)))
}

func (this *QAudioOutput) Stop() {
	C.QAudioOutput_stop(this.h)
}

func (this *QAudioOutput) Reset() {
	C.QAudioOutput_reset(this.h)
}

func (this *QAudioOutput) Suspend() {
	C.QAudioOutput_suspend(this.h)
}

func (this *QAudioOutput) Resume() {
	C.QAudioOutput_resume(this.h)
}

func (this *QAudioOutput) SetBufferSize(bytes int) {
	C.QAudioOutput_setBufferSize(this.h, (C.int)(bytes))
}

func (this *QAudioOutput) BufferSize() int {
	return (int)(C.QAudioOutput_bufferSize(this.h))
}

func (this *QAudioOutput) BytesFree() int {
	return (int)(C.QAudioOutput_bytesFree(this.h))
}

func (this *QAudioOutput) PeriodSize() int {
	return (int)(C.QAudioOutput_periodSize(this.h))
}

func (this *QAudioOutput) SetNotifyInterval(milliSeconds int) {
	C.QAudioOutput_setNotifyInterval(this.h, (C.int)(milliSeconds))
}

func (this *QAudioOutput) NotifyInterval() int {
	return (int)(C.QAudioOutput_notifyInterval(this.h))
}

func (this *QAudioOutput) ProcessedUSecs() int64 {
	return (int64)(C.QAudioOutput_processedUSecs(this.h))
}

func (this *QAudioOutput) ElapsedUSecs() int64 {
	return (int64)(C.QAudioOutput_elapsedUSecs(this.h))
}

func (this *QAudioOutput) Error() QAudio__Error {
	return (QAudio__Error)(C.QAudioOutput_error(this.h))
}

func (this *QAudioOutput) State() QAudio__State {
	return (QAudio__State)(C.QAudioOutput_state(this.h))
}

func (this *QAudioOutput) SetVolume(volume float64) {
	C.QAudioOutput_setVolume(this.h, (C.double)(volume))
}

func (this *QAudioOutput) Volume() float64 {
	return (float64)(C.QAudioOutput_volume(this.h))
}

func (this *QAudioOutput) Category() string {
	var _ms C.struct_miqt_string = C.QAudioOutput_category(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAudioOutput) SetCategory(category string) {
	category_ms := C.struct_miqt_string{}
	category_ms.data = C.CString(category)
	category_ms.len = C.size_t(len(category))
	defer C.free(unsafe.Pointer(category_ms.data))
	C.QAudioOutput_setCategory(this.h, category_ms)
}

func (this *QAudioOutput) StateChanged(state QAudio__State) {
	C.QAudioOutput_stateChanged(this.h, (C.int)(state))
}
func (this *QAudioOutput) OnStateChanged(slot func(state QAudio__State)) {
	C.QAudioOutput_connect_stateChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAudioOutput_stateChanged
func miqt_exec_callback_QAudioOutput_stateChanged(cb C.intptr_t, state C.int) {
	gofunc, ok := cgo.Handle(cb).Value().(func(state QAudio__State))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QAudio__State)(state)

	gofunc(slotval1)
}

func (this *QAudioOutput) Notify() {
	C.QAudioOutput_notify(this.h)
}
func (this *QAudioOutput) OnNotify(slot func()) {
	C.QAudioOutput_connect_notify(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAudioOutput_notify
func miqt_exec_callback_QAudioOutput_notify(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QAudioOutput_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAudioOutput_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAudioOutput_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAudioOutput_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAudioOutput_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAudioOutput_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAudioOutput_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAudioOutput_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAudioOutput) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QAudioOutput_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QAudioOutput) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QAudioOutput_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_metaObject
func miqt_exec_callback_QAudioOutput_metaObject(self *C.QAudioOutput, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QAudioOutput{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QAudioOutput) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QAudioOutput_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QAudioOutput) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QAudioOutput_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_metacast
func miqt_exec_callback_QAudioOutput_metacast(self *C.QAudioOutput, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QAudioOutput{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QAudioOutput) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QAudioOutput_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QAudioOutput) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QAudioOutput_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_metacall
func miqt_exec_callback_QAudioOutput_metacall(self *C.QAudioOutput, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QAudioOutput{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QAudioOutput) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QAudioOutput_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QAudioOutput) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QAudioOutput_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_event
func miqt_exec_callback_QAudioOutput_event(self *C.QAudioOutput, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QAudioOutput{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QAudioOutput) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QAudioOutput_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QAudioOutput) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QAudioOutput_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_eventFilter
func miqt_exec_callback_QAudioOutput_eventFilter(self *C.QAudioOutput, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QAudioOutput{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QAudioOutput) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QAudioOutput_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QAudioOutput) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QAudioOutput_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_timerEvent
func miqt_exec_callback_QAudioOutput_timerEvent(self *C.QAudioOutput, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QAudioOutput{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QAudioOutput) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QAudioOutput_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QAudioOutput) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QAudioOutput_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_childEvent
func miqt_exec_callback_QAudioOutput_childEvent(self *C.QAudioOutput, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QAudioOutput{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QAudioOutput) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QAudioOutput_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QAudioOutput) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QAudioOutput_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_customEvent
func miqt_exec_callback_QAudioOutput_customEvent(self *C.QAudioOutput, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QAudioOutput{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QAudioOutput) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QAudioOutput_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QAudioOutput) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QAudioOutput_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_connectNotify
func miqt_exec_callback_QAudioOutput_connectNotify(self *C.QAudioOutput, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QAudioOutput{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QAudioOutput) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QAudioOutput_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QAudioOutput) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QAudioOutput_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAudioOutput_disconnectNotify
func miqt_exec_callback_QAudioOutput_disconnectNotify(self *C.QAudioOutput, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QAudioOutput{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QAudioOutput) Delete() {
	C.QAudioOutput_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QAudioOutput) GoGC() {
	runtime.SetFinalizer(this, func(this *QAudioOutput) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
