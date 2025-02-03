package quick

/*

#include "gen_qquickrendercontrol.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQuickRenderControl struct {
	h *C.QQuickRenderControl
	*qt.QObject
}

func (this *QQuickRenderControl) cPointer() *C.QQuickRenderControl {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickRenderControl) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickRenderControl constructs the type using only CGO pointers.
func newQQuickRenderControl(h *C.QQuickRenderControl) *QQuickRenderControl {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QQuickRenderControl_virtbase(h, &outptr_QObject)

	return &QQuickRenderControl{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQQuickRenderControl constructs the type using only unsafe pointers.
func UnsafeNewQQuickRenderControl(h unsafe.Pointer) *QQuickRenderControl {
	return newQQuickRenderControl((*C.QQuickRenderControl)(h))
}

// NewQQuickRenderControl constructs a new QQuickRenderControl object.
func NewQQuickRenderControl() *QQuickRenderControl {

	return newQQuickRenderControl(C.QQuickRenderControl_new())
}

// NewQQuickRenderControl2 constructs a new QQuickRenderControl object.
func NewQQuickRenderControl2(parent *qt.QObject) *QQuickRenderControl {

	return newQQuickRenderControl(C.QQuickRenderControl_new2((*C.QObject)(parent.UnsafePointer())))
}

func (this *QQuickRenderControl) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickRenderControl_metaObject(this.h)))
}

func (this *QQuickRenderControl) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickRenderControl_metacast(this.h, param1_Cstring))
}

func (this *QQuickRenderControl) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickRenderControl_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickRenderControl_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickRenderControl_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickRenderControl_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickRenderControl_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickRenderControl) PrepareThread(targetThread *qt.QThread) {
	C.QQuickRenderControl_prepareThread(this.h, (*C.QThread)(targetThread.UnsafePointer()))
}

func (this *QQuickRenderControl) Invalidate() {
	C.QQuickRenderControl_invalidate(this.h)
}

func (this *QQuickRenderControl) PolishItems() {
	C.QQuickRenderControl_polishItems(this.h)
}

func (this *QQuickRenderControl) Render() {
	C.QQuickRenderControl_render(this.h)
}

func (this *QQuickRenderControl) Sync() bool {
	return (bool)(C.QQuickRenderControl_sync(this.h))
}

func (this *QQuickRenderControl) Grab() *qt.QImage {
	_goptr := qt.UnsafeNewQImage(unsafe.Pointer(C.QQuickRenderControl_grab(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QQuickRenderControl_RenderWindowFor(win *QQuickWindow) *qt.QWindow {
	return qt.UnsafeNewQWindow(unsafe.Pointer(C.QQuickRenderControl_renderWindowFor(win.cPointer())))
}

func (this *QQuickRenderControl) RenderWindow(offset *qt.QPoint) *qt.QWindow {
	return qt.UnsafeNewQWindow(unsafe.Pointer(C.QQuickRenderControl_renderWindow(this.h, (*C.QPoint)(offset.UnsafePointer()))))
}

func (this *QQuickRenderControl) RenderRequested() {
	C.QQuickRenderControl_renderRequested(this.h)
}
func (this *QQuickRenderControl) OnRenderRequested(slot func()) {
	C.QQuickRenderControl_connect_renderRequested(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickRenderControl_renderRequested
func miqt_exec_callback_QQuickRenderControl_renderRequested(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickRenderControl) SceneChanged() {
	C.QQuickRenderControl_sceneChanged(this.h)
}
func (this *QQuickRenderControl) OnSceneChanged(slot func()) {
	C.QQuickRenderControl_connect_sceneChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickRenderControl_sceneChanged
func miqt_exec_callback_QQuickRenderControl_sceneChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QQuickRenderControl_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickRenderControl_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickRenderControl_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickRenderControl_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickRenderControl_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickRenderControl_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickRenderControl_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickRenderControl_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickRenderControl_RenderWindowFor2(win *QQuickWindow, offset *qt.QPoint) *qt.QWindow {
	return qt.UnsafeNewQWindow(unsafe.Pointer(C.QQuickRenderControl_renderWindowFor2(win.cPointer(), (*C.QPoint)(offset.UnsafePointer()))))
}

func (this *QQuickRenderControl) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQuickRenderControl_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQuickRenderControl) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQuickRenderControl_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickRenderControl_metacall
func miqt_exec_callback_QQuickRenderControl_metacall(self *C.QQuickRenderControl, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQuickRenderControl{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQuickRenderControl) callVirtualBase_RenderWindow(offset *qt.QPoint) *qt.QWindow {

	return qt.UnsafeNewQWindow(unsafe.Pointer(C.QQuickRenderControl_virtualbase_renderWindow(unsafe.Pointer(this.h), (*C.QPoint)(offset.UnsafePointer()))))

}
func (this *QQuickRenderControl) OnRenderWindow(slot func(super func(offset *qt.QPoint) *qt.QWindow, offset *qt.QPoint) *qt.QWindow) {
	ok := C.QQuickRenderControl_override_virtual_renderWindow(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickRenderControl_renderWindow
func miqt_exec_callback_QQuickRenderControl_renderWindow(self *C.QQuickRenderControl, cb C.intptr_t, offset *C.QPoint) *C.QWindow {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(offset *qt.QPoint) *qt.QWindow, offset *qt.QPoint) *qt.QWindow)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQPoint(unsafe.Pointer(offset))

	virtualReturn := gofunc((&QQuickRenderControl{h: self}).callVirtualBase_RenderWindow, slotval1)

	return (*C.QWindow)(virtualReturn.UnsafePointer())

}

func (this *QQuickRenderControl) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QQuickRenderControl_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickRenderControl) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QQuickRenderControl_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickRenderControl_event
func miqt_exec_callback_QQuickRenderControl_event(self *C.QQuickRenderControl, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickRenderControl{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickRenderControl) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQuickRenderControl_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickRenderControl) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQuickRenderControl_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickRenderControl_eventFilter
func miqt_exec_callback_QQuickRenderControl_eventFilter(self *C.QQuickRenderControl, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickRenderControl{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickRenderControl) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQuickRenderControl_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQuickRenderControl) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQuickRenderControl_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickRenderControl_timerEvent
func miqt_exec_callback_QQuickRenderControl_timerEvent(self *C.QQuickRenderControl, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQuickRenderControl{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQuickRenderControl) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQuickRenderControl_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQuickRenderControl) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQuickRenderControl_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickRenderControl_childEvent
func miqt_exec_callback_QQuickRenderControl_childEvent(self *C.QQuickRenderControl, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQuickRenderControl{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQuickRenderControl) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQuickRenderControl_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQuickRenderControl) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQuickRenderControl_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickRenderControl_customEvent
func miqt_exec_callback_QQuickRenderControl_customEvent(self *C.QQuickRenderControl, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQuickRenderControl{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQuickRenderControl) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQuickRenderControl_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickRenderControl) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickRenderControl_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickRenderControl_connectNotify
func miqt_exec_callback_QQuickRenderControl_connectNotify(self *C.QQuickRenderControl, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickRenderControl{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQuickRenderControl) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQuickRenderControl_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickRenderControl) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickRenderControl_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickRenderControl_disconnectNotify
func miqt_exec_callback_QQuickRenderControl_disconnectNotify(self *C.QQuickRenderControl, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickRenderControl{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQuickRenderControl) Delete() {
	C.QQuickRenderControl_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickRenderControl) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickRenderControl) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
