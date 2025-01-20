package quick

/*

#include "gen_qsgengine.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGEngine__CreateTextureOption int

const (
	QSGEngine__TextureHasAlphaChannel QSGEngine__CreateTextureOption = 1
	QSGEngine__TextureOwnsGLTexture   QSGEngine__CreateTextureOption = 4
	QSGEngine__TextureCanUseAtlas     QSGEngine__CreateTextureOption = 8
	QSGEngine__TextureIsOpaque        QSGEngine__CreateTextureOption = 16
)

type QSGEngine struct {
	h *C.QSGEngine
	*qt.QObject
}

func (this *QSGEngine) cPointer() *C.QSGEngine {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGEngine) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGEngine constructs the type using only CGO pointers.
func newQSGEngine(h *C.QSGEngine) *QSGEngine {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QSGEngine_virtbase(h, &outptr_QObject)

	return &QSGEngine{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQSGEngine constructs the type using only unsafe pointers.
func UnsafeNewQSGEngine(h unsafe.Pointer) *QSGEngine {
	return newQSGEngine((*C.QSGEngine)(h))
}

// NewQSGEngine constructs a new QSGEngine object.
func NewQSGEngine() *QSGEngine {

	return newQSGEngine(C.QSGEngine_new())
}

// NewQSGEngine2 constructs a new QSGEngine object.
func NewQSGEngine2(parent *qt.QObject) *QSGEngine {

	return newQSGEngine(C.QSGEngine_new2((*C.QObject)(parent.UnsafePointer())))
}

func (this *QSGEngine) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QSGEngine_metaObject(this.h)))
}

func (this *QSGEngine) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QSGEngine_metacast(this.h, param1_Cstring))
}

func (this *QSGEngine) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QSGEngine_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QSGEngine_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGEngine_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGEngine_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGEngine_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSGEngine) Invalidate() {
	C.QSGEngine_invalidate(this.h)
}

func (this *QSGEngine) CreateRenderer() *QSGAbstractRenderer {
	return newQSGAbstractRenderer(C.QSGEngine_createRenderer(this.h))
}

func (this *QSGEngine) CreateTextureFromImage(image *qt.QImage) *QSGTexture {
	return newQSGTexture(C.QSGEngine_createTextureFromImage(this.h, (*C.QImage)(image.UnsafePointer())))
}

func (this *QSGEngine) CreateTextureFromId(id uint, size *qt.QSize) *QSGTexture {
	return newQSGTexture(C.QSGEngine_createTextureFromId(this.h, (C.uint)(id), (*C.QSize)(size.UnsafePointer())))
}

func (this *QSGEngine) RendererInterface() *QSGRendererInterface {
	return newQSGRendererInterface(C.QSGEngine_rendererInterface(this.h))
}

func (this *QSGEngine) CreateRectangleNode() *QSGRectangleNode {
	return newQSGRectangleNode(C.QSGEngine_createRectangleNode(this.h))
}

func (this *QSGEngine) CreateImageNode() *QSGImageNode {
	return newQSGImageNode(C.QSGEngine_createImageNode(this.h))
}

func (this *QSGEngine) CreateNinePatchNode() *QSGNinePatchNode {
	return newQSGNinePatchNode(C.QSGEngine_createNinePatchNode(this.h))
}

func QSGEngine_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGEngine_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGEngine_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGEngine_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGEngine_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGEngine_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGEngine_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGEngine_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSGEngine) CreateTextureFromImage2(image *qt.QImage, options QSGEngine__CreateTextureOption) *QSGTexture {
	return newQSGTexture(C.QSGEngine_createTextureFromImage2(this.h, (*C.QImage)(image.UnsafePointer()), (C.int)(options)))
}

func (this *QSGEngine) CreateTextureFromId3(id uint, size *qt.QSize, options QSGEngine__CreateTextureOption) *QSGTexture {
	return newQSGTexture(C.QSGEngine_createTextureFromId3(this.h, (C.uint)(id), (*C.QSize)(size.UnsafePointer()), (C.int)(options)))
}

func (this *QSGEngine) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QSGEngine_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QSGEngine) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QSGEngine_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_metaObject
func miqt_exec_callback_QSGEngine_metaObject(self *C.QSGEngine, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGEngine{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QSGEngine) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QSGEngine_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QSGEngine) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QSGEngine_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_metacast
func miqt_exec_callback_QSGEngine_metacast(self *C.QSGEngine, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QSGEngine{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QSGEngine) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QSGEngine_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QSGEngine) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QSGEngine_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_metacall
func miqt_exec_callback_QSGEngine_metacall(self *C.QSGEngine, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QSGEngine{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QSGEngine) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QSGEngine_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QSGEngine) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QSGEngine_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_event
func miqt_exec_callback_QSGEngine_event(self *C.QSGEngine, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QSGEngine{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QSGEngine) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QSGEngine_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QSGEngine) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QSGEngine_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_eventFilter
func miqt_exec_callback_QSGEngine_eventFilter(self *C.QSGEngine, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QSGEngine{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QSGEngine) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QSGEngine_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QSGEngine) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QSGEngine_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_timerEvent
func miqt_exec_callback_QSGEngine_timerEvent(self *C.QSGEngine, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QSGEngine{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QSGEngine) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QSGEngine_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QSGEngine) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QSGEngine_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_childEvent
func miqt_exec_callback_QSGEngine_childEvent(self *C.QSGEngine, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QSGEngine{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QSGEngine) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QSGEngine_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QSGEngine) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QSGEngine_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_customEvent
func miqt_exec_callback_QSGEngine_customEvent(self *C.QSGEngine, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QSGEngine{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QSGEngine) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QSGEngine_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QSGEngine) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QSGEngine_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_connectNotify
func miqt_exec_callback_QSGEngine_connectNotify(self *C.QSGEngine, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QSGEngine{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QSGEngine) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QSGEngine_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QSGEngine) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QSGEngine_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGEngine_disconnectNotify
func miqt_exec_callback_QSGEngine_disconnectNotify(self *C.QSGEngine, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QSGEngine{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QSGEngine) Delete() {
	C.QSGEngine_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGEngine) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGEngine) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
