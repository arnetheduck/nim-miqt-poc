package quick

/*

#include "gen_qquickimageprovider.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQuickTextureFactory struct {
	h *C.QQuickTextureFactory
	*qt.QObject
}

func (this *QQuickTextureFactory) cPointer() *C.QQuickTextureFactory {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickTextureFactory) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickTextureFactory constructs the type using only CGO pointers.
func newQQuickTextureFactory(h *C.QQuickTextureFactory) *QQuickTextureFactory {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QQuickTextureFactory_virtbase(h, &outptr_QObject)

	return &QQuickTextureFactory{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQQuickTextureFactory constructs the type using only unsafe pointers.
func UnsafeNewQQuickTextureFactory(h unsafe.Pointer) *QQuickTextureFactory {
	return newQQuickTextureFactory((*C.QQuickTextureFactory)(h))
}

// NewQQuickTextureFactory constructs a new QQuickTextureFactory object.
func NewQQuickTextureFactory() *QQuickTextureFactory {

	return newQQuickTextureFactory(C.QQuickTextureFactory_new())
}

func (this *QQuickTextureFactory) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickTextureFactory_metaObject(this.h)))
}

func (this *QQuickTextureFactory) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickTextureFactory_metacast(this.h, param1_Cstring))
}

func (this *QQuickTextureFactory) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickTextureFactory_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickTextureFactory_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTextureFactory_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickTextureFactory_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTextureFactory_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickTextureFactory) CreateTexture(window *QQuickWindow) *QSGTexture {
	return newQSGTexture(C.QQuickTextureFactory_createTexture(this.h, window.cPointer()))
}

func (this *QQuickTextureFactory) TextureSize() *qt.QSize {
	_goptr := qt.UnsafeNewQSize(unsafe.Pointer(C.QQuickTextureFactory_textureSize(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickTextureFactory) TextureByteCount() int {
	return (int)(C.QQuickTextureFactory_textureByteCount(this.h))
}

func (this *QQuickTextureFactory) Image() *qt.QImage {
	_goptr := qt.UnsafeNewQImage(unsafe.Pointer(C.QQuickTextureFactory_image(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QQuickTextureFactory_TextureFactoryForImage(image *qt.QImage) *QQuickTextureFactory {
	return newQQuickTextureFactory(C.QQuickTextureFactory_textureFactoryForImage((*C.QImage)(image.UnsafePointer())))
}

func QQuickTextureFactory_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTextureFactory_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickTextureFactory_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTextureFactory_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickTextureFactory_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTextureFactory_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickTextureFactory_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTextureFactory_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickTextureFactory) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickTextureFactory_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQuickTextureFactory) OnMetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQuickTextureFactory_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_metaObject
func miqt_exec_callback_QQuickTextureFactory_metaObject(self *C.QQuickTextureFactory, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQuickTextureFactory) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQuickTextureFactory_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQuickTextureFactory) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQuickTextureFactory_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_metacast
func miqt_exec_callback_QQuickTextureFactory_metacast(self *C.QQuickTextureFactory, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQuickTextureFactory) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQuickTextureFactory_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQuickTextureFactory) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQuickTextureFactory_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_metacall
func miqt_exec_callback_QQuickTextureFactory_metacall(self *C.QQuickTextureFactory, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QQuickTextureFactory) OnCreateTexture(slot func(window *QQuickWindow) *QSGTexture) {
	ok := C.QQuickTextureFactory_override_virtual_createTexture(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_createTexture
func miqt_exec_callback_QQuickTextureFactory_createTexture(self *C.QQuickTextureFactory, cb C.intptr_t, window *C.QQuickWindow) *C.QSGTexture {
	gofunc, ok := cgo.Handle(cb).Value().(func(window *QQuickWindow) *QSGTexture)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQuickWindow(window)

	virtualReturn := gofunc(slotval1)

	return virtualReturn.cPointer()

}
func (this *QQuickTextureFactory) OnTextureSize(slot func() *qt.QSize) {
	ok := C.QQuickTextureFactory_override_virtual_textureSize(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_textureSize
func miqt_exec_callback_QQuickTextureFactory_textureSize(self *C.QQuickTextureFactory, cb C.intptr_t) *C.QSize {
	gofunc, ok := cgo.Handle(cb).Value().(func() *qt.QSize)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (*C.QSize)(virtualReturn.UnsafePointer())

}
func (this *QQuickTextureFactory) OnTextureByteCount(slot func() int) {
	ok := C.QQuickTextureFactory_override_virtual_textureByteCount(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_textureByteCount
func miqt_exec_callback_QQuickTextureFactory_textureByteCount(self *C.QQuickTextureFactory, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func() int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (C.int)(virtualReturn)

}

func (this *QQuickTextureFactory) callVirtualBase_Image() *qt.QImage {

	_goptr := qt.UnsafeNewQImage(unsafe.Pointer(C.QQuickTextureFactory_virtualbase_image(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickTextureFactory) OnImage(slot func(super func() *qt.QImage) *qt.QImage) {
	ok := C.QQuickTextureFactory_override_virtual_image(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_image
func miqt_exec_callback_QQuickTextureFactory_image(self *C.QQuickTextureFactory, cb C.intptr_t) *C.QImage {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QImage) *qt.QImage)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_Image)

	return (*C.QImage)(virtualReturn.UnsafePointer())

}

func (this *QQuickTextureFactory) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QQuickTextureFactory_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickTextureFactory) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QQuickTextureFactory_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_event
func miqt_exec_callback_QQuickTextureFactory_event(self *C.QQuickTextureFactory, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickTextureFactory) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQuickTextureFactory_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickTextureFactory) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQuickTextureFactory_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_eventFilter
func miqt_exec_callback_QQuickTextureFactory_eventFilter(self *C.QQuickTextureFactory, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickTextureFactory) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQuickTextureFactory_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQuickTextureFactory) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQuickTextureFactory_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_timerEvent
func miqt_exec_callback_QQuickTextureFactory_timerEvent(self *C.QQuickTextureFactory, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQuickTextureFactory) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQuickTextureFactory_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQuickTextureFactory) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQuickTextureFactory_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_childEvent
func miqt_exec_callback_QQuickTextureFactory_childEvent(self *C.QQuickTextureFactory, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQuickTextureFactory) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQuickTextureFactory_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQuickTextureFactory) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQuickTextureFactory_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_customEvent
func miqt_exec_callback_QQuickTextureFactory_customEvent(self *C.QQuickTextureFactory, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQuickTextureFactory) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQuickTextureFactory_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickTextureFactory) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickTextureFactory_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_connectNotify
func miqt_exec_callback_QQuickTextureFactory_connectNotify(self *C.QQuickTextureFactory, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQuickTextureFactory) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQuickTextureFactory_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickTextureFactory) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickTextureFactory_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTextureFactory_disconnectNotify
func miqt_exec_callback_QQuickTextureFactory_disconnectNotify(self *C.QQuickTextureFactory, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickTextureFactory{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQuickTextureFactory) Delete() {
	C.QQuickTextureFactory_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickTextureFactory) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickTextureFactory) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQuickImageResponse struct {
	h *C.QQuickImageResponse
	*qt.QObject
}

func (this *QQuickImageResponse) cPointer() *C.QQuickImageResponse {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickImageResponse) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickImageResponse constructs the type using only CGO pointers.
func newQQuickImageResponse(h *C.QQuickImageResponse) *QQuickImageResponse {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QQuickImageResponse_virtbase(h, &outptr_QObject)

	return &QQuickImageResponse{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQQuickImageResponse constructs the type using only unsafe pointers.
func UnsafeNewQQuickImageResponse(h unsafe.Pointer) *QQuickImageResponse {
	return newQQuickImageResponse((*C.QQuickImageResponse)(h))
}

// NewQQuickImageResponse constructs a new QQuickImageResponse object.
func NewQQuickImageResponse() *QQuickImageResponse {

	return newQQuickImageResponse(C.QQuickImageResponse_new())
}

func (this *QQuickImageResponse) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickImageResponse_metaObject(this.h)))
}

func (this *QQuickImageResponse) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickImageResponse_metacast(this.h, param1_Cstring))
}

func (this *QQuickImageResponse) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickImageResponse_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickImageResponse_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickImageResponse_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickImageResponse_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickImageResponse_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickImageResponse) TextureFactory() *QQuickTextureFactory {
	return newQQuickTextureFactory(C.QQuickImageResponse_textureFactory(this.h))
}

func (this *QQuickImageResponse) ErrorString() string {
	var _ms C.struct_miqt_string = C.QQuickImageResponse_errorString(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickImageResponse) Cancel() {
	C.QQuickImageResponse_cancel(this.h)
}

func (this *QQuickImageResponse) Finished() {
	C.QQuickImageResponse_finished(this.h)
}
func (this *QQuickImageResponse) OnFinished(slot func()) {
	C.QQuickImageResponse_connect_finished(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickImageResponse_finished
func miqt_exec_callback_QQuickImageResponse_finished(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QQuickImageResponse_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickImageResponse_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickImageResponse_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickImageResponse_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickImageResponse_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickImageResponse_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickImageResponse_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickImageResponse_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickImageResponse) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickImageResponse_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQuickImageResponse) OnMetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQuickImageResponse_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_metaObject
func miqt_exec_callback_QQuickImageResponse_metaObject(self *C.QQuickImageResponse, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickImageResponse{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQuickImageResponse) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQuickImageResponse_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQuickImageResponse) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQuickImageResponse_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_metacast
func miqt_exec_callback_QQuickImageResponse_metacast(self *C.QQuickImageResponse, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQuickImageResponse{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQuickImageResponse) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQuickImageResponse_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQuickImageResponse) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQuickImageResponse_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_metacall
func miqt_exec_callback_QQuickImageResponse_metacall(self *C.QQuickImageResponse, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQuickImageResponse{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QQuickImageResponse) OnTextureFactory(slot func() *QQuickTextureFactory) {
	ok := C.QQuickImageResponse_override_virtual_textureFactory(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_textureFactory
func miqt_exec_callback_QQuickImageResponse_textureFactory(self *C.QQuickImageResponse, cb C.intptr_t) *C.QQuickTextureFactory {
	gofunc, ok := cgo.Handle(cb).Value().(func() *QQuickTextureFactory)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return virtualReturn.cPointer()

}

func (this *QQuickImageResponse) callVirtualBase_ErrorString() string {

	var _ms C.struct_miqt_string = C.QQuickImageResponse_virtualbase_errorString(unsafe.Pointer(this.h))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}
func (this *QQuickImageResponse) OnErrorString(slot func(super func() string) string) {
	ok := C.QQuickImageResponse_override_virtual_errorString(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_errorString
func miqt_exec_callback_QQuickImageResponse_errorString(self *C.QQuickImageResponse, cb C.intptr_t) C.struct_miqt_string {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() string) string)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickImageResponse{h: self}).callVirtualBase_ErrorString)
	virtualReturn_ms := C.struct_miqt_string{}
	virtualReturn_ms.data = C.CString(virtualReturn)
	virtualReturn_ms.len = C.size_t(len(virtualReturn))
	defer C.free(unsafe.Pointer(virtualReturn_ms.data))

	return virtualReturn_ms

}

func (this *QQuickImageResponse) callVirtualBase_Cancel() {

	C.QQuickImageResponse_virtualbase_cancel(unsafe.Pointer(this.h))

}
func (this *QQuickImageResponse) OnCancel(slot func(super func())) {
	ok := C.QQuickImageResponse_override_virtual_cancel(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_cancel
func miqt_exec_callback_QQuickImageResponse_cancel(self *C.QQuickImageResponse, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickImageResponse{h: self}).callVirtualBase_Cancel)

}

func (this *QQuickImageResponse) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QQuickImageResponse_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickImageResponse) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QQuickImageResponse_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_event
func miqt_exec_callback_QQuickImageResponse_event(self *C.QQuickImageResponse, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickImageResponse{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickImageResponse) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQuickImageResponse_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickImageResponse) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQuickImageResponse_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_eventFilter
func miqt_exec_callback_QQuickImageResponse_eventFilter(self *C.QQuickImageResponse, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickImageResponse{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickImageResponse) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQuickImageResponse_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQuickImageResponse) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQuickImageResponse_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_timerEvent
func miqt_exec_callback_QQuickImageResponse_timerEvent(self *C.QQuickImageResponse, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQuickImageResponse{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQuickImageResponse) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQuickImageResponse_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQuickImageResponse) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQuickImageResponse_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_childEvent
func miqt_exec_callback_QQuickImageResponse_childEvent(self *C.QQuickImageResponse, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQuickImageResponse{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQuickImageResponse) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQuickImageResponse_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQuickImageResponse) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQuickImageResponse_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_customEvent
func miqt_exec_callback_QQuickImageResponse_customEvent(self *C.QQuickImageResponse, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQuickImageResponse{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQuickImageResponse) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQuickImageResponse_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickImageResponse) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickImageResponse_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_connectNotify
func miqt_exec_callback_QQuickImageResponse_connectNotify(self *C.QQuickImageResponse, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickImageResponse{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQuickImageResponse) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQuickImageResponse_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickImageResponse) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickImageResponse_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageResponse_disconnectNotify
func miqt_exec_callback_QQuickImageResponse_disconnectNotify(self *C.QQuickImageResponse, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickImageResponse{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQuickImageResponse) Delete() {
	C.QQuickImageResponse_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickImageResponse) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickImageResponse) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQuickImageProvider struct {
	h *C.QQuickImageProvider
	*QQmlImageProviderBase
}

func (this *QQuickImageProvider) cPointer() *C.QQuickImageProvider {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickImageProvider) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickImageProvider constructs the type using only CGO pointers.
func newQQuickImageProvider(h *C.QQuickImageProvider) *QQuickImageProvider {
	if h == nil {
		return nil
	}
	var outptr_QQmlImageProviderBase *C.QQmlImageProviderBase = nil
	C.QQuickImageProvider_virtbase(h, &outptr_QQmlImageProviderBase)

	return &QQuickImageProvider{h: h,
		QQmlImageProviderBase: newQQmlImageProviderBase(outptr_QQmlImageProviderBase)}
}

// UnsafeNewQQuickImageProvider constructs the type using only unsafe pointers.
func UnsafeNewQQuickImageProvider(h unsafe.Pointer) *QQuickImageProvider {
	return newQQuickImageProvider((*C.QQuickImageProvider)(h))
}

// NewQQuickImageProvider constructs a new QQuickImageProvider object.
func NewQQuickImageProvider(typeVal QQmlImageProviderBase__ImageType) *QQuickImageProvider {

	return newQQuickImageProvider(C.QQuickImageProvider_new((C.int)(typeVal)))
}

// NewQQuickImageProvider2 constructs a new QQuickImageProvider object.
func NewQQuickImageProvider2(param1 *QQuickImageProvider) *QQuickImageProvider {

	return newQQuickImageProvider(C.QQuickImageProvider_new2(param1.cPointer()))
}

// NewQQuickImageProvider3 constructs a new QQuickImageProvider object.
func NewQQuickImageProvider3(typeVal QQmlImageProviderBase__ImageType, flags QQmlImageProviderBase__Flag) *QQuickImageProvider {

	return newQQuickImageProvider(C.QQuickImageProvider_new3((C.int)(typeVal), (C.int)(flags)))
}

func (this *QQuickImageProvider) ImageType() QQmlImageProviderBase__ImageType {
	return (QQmlImageProviderBase__ImageType)(C.QQuickImageProvider_imageType(this.h))
}

func (this *QQuickImageProvider) Flags() QQmlImageProviderBase__Flag {
	return (QQmlImageProviderBase__Flag)(C.QQuickImageProvider_flags(this.h))
}

func (this *QQuickImageProvider) RequestImage(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))
	_goptr := qt.UnsafeNewQImage(unsafe.Pointer(C.QQuickImageProvider_requestImage(this.h, id_ms, (*C.QSize)(size.UnsafePointer()), (*C.QSize)(requestedSize.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickImageProvider) RequestPixmap(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))
	_goptr := qt.UnsafeNewQPixmap(unsafe.Pointer(C.QQuickImageProvider_requestPixmap(this.h, id_ms, (*C.QSize)(size.UnsafePointer()), (*C.QSize)(requestedSize.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickImageProvider) RequestTexture(id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))
	return newQQuickTextureFactory(C.QQuickImageProvider_requestTexture(this.h, id_ms, (*C.QSize)(size.UnsafePointer()), (*C.QSize)(requestedSize.UnsafePointer())))
}

func (this *QQuickImageProvider) callVirtualBase_ImageType() QQmlImageProviderBase__ImageType {

	return (QQmlImageProviderBase__ImageType)(C.QQuickImageProvider_virtualbase_imageType(unsafe.Pointer(this.h)))

}
func (this *QQuickImageProvider) OnImageType(slot func(super func() QQmlImageProviderBase__ImageType) QQmlImageProviderBase__ImageType) {
	ok := C.QQuickImageProvider_override_virtual_imageType(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageProvider_imageType
func miqt_exec_callback_QQuickImageProvider_imageType(self *C.QQuickImageProvider, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() QQmlImageProviderBase__ImageType) QQmlImageProviderBase__ImageType)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickImageProvider{h: self}).callVirtualBase_ImageType)

	return (C.int)(virtualReturn)

}

func (this *QQuickImageProvider) callVirtualBase_Flags() QQmlImageProviderBase__Flag {

	return (QQmlImageProviderBase__Flag)(C.QQuickImageProvider_virtualbase_flags(unsafe.Pointer(this.h)))

}
func (this *QQuickImageProvider) OnFlags(slot func(super func() QQmlImageProviderBase__Flag) QQmlImageProviderBase__Flag) {
	ok := C.QQuickImageProvider_override_virtual_flags(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageProvider_flags
func miqt_exec_callback_QQuickImageProvider_flags(self *C.QQuickImageProvider, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() QQmlImageProviderBase__Flag) QQmlImageProviderBase__Flag)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickImageProvider{h: self}).callVirtualBase_Flags)

	return (C.int)(virtualReturn)

}

func (this *QQuickImageProvider) callVirtualBase_RequestImage(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))

	_goptr := qt.UnsafeNewQImage(unsafe.Pointer(C.QQuickImageProvider_virtualbase_requestImage(unsafe.Pointer(this.h), id_ms, (*C.QSize)(size.UnsafePointer()), (*C.QSize)(requestedSize.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickImageProvider) OnRequestImage(slot func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage, id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage) {
	ok := C.QQuickImageProvider_override_virtual_requestImage(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageProvider_requestImage
func miqt_exec_callback_QQuickImageProvider_requestImage(self *C.QQuickImageProvider, cb C.intptr_t, id C.struct_miqt_string, size *C.QSize, requestedSize *C.QSize) *C.QImage {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage, id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var id_ms C.struct_miqt_string = id
	id_ret := C.GoStringN(id_ms.data, C.int(int64(id_ms.len)))
	C.free(unsafe.Pointer(id_ms.data))
	slotval1 := id_ret
	slotval2 := qt.UnsafeNewQSize(unsafe.Pointer(size))

	slotval3 := qt.UnsafeNewQSize(unsafe.Pointer(requestedSize))

	virtualReturn := gofunc((&QQuickImageProvider{h: self}).callVirtualBase_RequestImage, slotval1, slotval2, slotval3)

	return (*C.QImage)(virtualReturn.UnsafePointer())

}

func (this *QQuickImageProvider) callVirtualBase_RequestPixmap(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))

	_goptr := qt.UnsafeNewQPixmap(unsafe.Pointer(C.QQuickImageProvider_virtualbase_requestPixmap(unsafe.Pointer(this.h), id_ms, (*C.QSize)(size.UnsafePointer()), (*C.QSize)(requestedSize.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickImageProvider) OnRequestPixmap(slot func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap, id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap) {
	ok := C.QQuickImageProvider_override_virtual_requestPixmap(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageProvider_requestPixmap
func miqt_exec_callback_QQuickImageProvider_requestPixmap(self *C.QQuickImageProvider, cb C.intptr_t, id C.struct_miqt_string, size *C.QSize, requestedSize *C.QSize) *C.QPixmap {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap, id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var id_ms C.struct_miqt_string = id
	id_ret := C.GoStringN(id_ms.data, C.int(int64(id_ms.len)))
	C.free(unsafe.Pointer(id_ms.data))
	slotval1 := id_ret
	slotval2 := qt.UnsafeNewQSize(unsafe.Pointer(size))

	slotval3 := qt.UnsafeNewQSize(unsafe.Pointer(requestedSize))

	virtualReturn := gofunc((&QQuickImageProvider{h: self}).callVirtualBase_RequestPixmap, slotval1, slotval2, slotval3)

	return (*C.QPixmap)(virtualReturn.UnsafePointer())

}

func (this *QQuickImageProvider) callVirtualBase_RequestTexture(id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))

	return newQQuickTextureFactory(C.QQuickImageProvider_virtualbase_requestTexture(unsafe.Pointer(this.h), id_ms, (*C.QSize)(size.UnsafePointer()), (*C.QSize)(requestedSize.UnsafePointer())))

}
func (this *QQuickImageProvider) OnRequestTexture(slot func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory, id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory) {
	ok := C.QQuickImageProvider_override_virtual_requestTexture(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickImageProvider_requestTexture
func miqt_exec_callback_QQuickImageProvider_requestTexture(self *C.QQuickImageProvider, cb C.intptr_t, id C.struct_miqt_string, size *C.QSize, requestedSize *C.QSize) *C.QQuickTextureFactory {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory, id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var id_ms C.struct_miqt_string = id
	id_ret := C.GoStringN(id_ms.data, C.int(int64(id_ms.len)))
	C.free(unsafe.Pointer(id_ms.data))
	slotval1 := id_ret
	slotval2 := qt.UnsafeNewQSize(unsafe.Pointer(size))

	slotval3 := qt.UnsafeNewQSize(unsafe.Pointer(requestedSize))

	virtualReturn := gofunc((&QQuickImageProvider{h: self}).callVirtualBase_RequestTexture, slotval1, slotval2, slotval3)

	return virtualReturn.cPointer()

}

// Delete this object from C++ memory.
func (this *QQuickImageProvider) Delete() {
	C.QQuickImageProvider_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickImageProvider) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickImageProvider) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQuickAsyncImageProvider struct {
	h *C.QQuickAsyncImageProvider
	*QQuickImageProvider
}

func (this *QQuickAsyncImageProvider) cPointer() *C.QQuickAsyncImageProvider {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickAsyncImageProvider) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickAsyncImageProvider constructs the type using only CGO pointers.
func newQQuickAsyncImageProvider(h *C.QQuickAsyncImageProvider) *QQuickAsyncImageProvider {
	if h == nil {
		return nil
	}
	var outptr_QQuickImageProvider *C.QQuickImageProvider = nil
	C.QQuickAsyncImageProvider_virtbase(h, &outptr_QQuickImageProvider)

	return &QQuickAsyncImageProvider{h: h,
		QQuickImageProvider: newQQuickImageProvider(outptr_QQuickImageProvider)}
}

// UnsafeNewQQuickAsyncImageProvider constructs the type using only unsafe pointers.
func UnsafeNewQQuickAsyncImageProvider(h unsafe.Pointer) *QQuickAsyncImageProvider {
	return newQQuickAsyncImageProvider((*C.QQuickAsyncImageProvider)(h))
}

// NewQQuickAsyncImageProvider constructs a new QQuickAsyncImageProvider object.
func NewQQuickAsyncImageProvider() *QQuickAsyncImageProvider {

	return newQQuickAsyncImageProvider(C.QQuickAsyncImageProvider_new())
}

// NewQQuickAsyncImageProvider2 constructs a new QQuickAsyncImageProvider object.
func NewQQuickAsyncImageProvider2(param1 *QQuickAsyncImageProvider) *QQuickAsyncImageProvider {

	return newQQuickAsyncImageProvider(C.QQuickAsyncImageProvider_new2(param1.cPointer()))
}

func (this *QQuickAsyncImageProvider) RequestImageResponse(id string, requestedSize *qt.QSize) *QQuickImageResponse {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))
	return newQQuickImageResponse(C.QQuickAsyncImageProvider_requestImageResponse(this.h, id_ms, (*C.QSize)(requestedSize.UnsafePointer())))
}
func (this *QQuickAsyncImageProvider) OnRequestImageResponse(slot func(id string, requestedSize *qt.QSize) *QQuickImageResponse) {
	ok := C.QQuickAsyncImageProvider_override_virtual_requestImageResponse(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse
func miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse(self *C.QQuickAsyncImageProvider, cb C.intptr_t, id C.struct_miqt_string, requestedSize *C.QSize) *C.QQuickImageResponse {
	gofunc, ok := cgo.Handle(cb).Value().(func(id string, requestedSize *qt.QSize) *QQuickImageResponse)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var id_ms C.struct_miqt_string = id
	id_ret := C.GoStringN(id_ms.data, C.int(int64(id_ms.len)))
	C.free(unsafe.Pointer(id_ms.data))
	slotval1 := id_ret
	slotval2 := qt.UnsafeNewQSize(unsafe.Pointer(requestedSize))

	virtualReturn := gofunc(slotval1, slotval2)

	return virtualReturn.cPointer()

}

func (this *QQuickAsyncImageProvider) callVirtualBase_ImageType() QQmlImageProviderBase__ImageType {

	return (QQmlImageProviderBase__ImageType)(C.QQuickAsyncImageProvider_virtualbase_imageType(unsafe.Pointer(this.h)))

}
func (this *QQuickAsyncImageProvider) OnImageType(slot func(super func() QQmlImageProviderBase__ImageType) QQmlImageProviderBase__ImageType) {
	ok := C.QQuickAsyncImageProvider_override_virtual_imageType(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickAsyncImageProvider_imageType
func miqt_exec_callback_QQuickAsyncImageProvider_imageType(self *C.QQuickAsyncImageProvider, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() QQmlImageProviderBase__ImageType) QQmlImageProviderBase__ImageType)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickAsyncImageProvider{h: self}).callVirtualBase_ImageType)

	return (C.int)(virtualReturn)

}

func (this *QQuickAsyncImageProvider) callVirtualBase_Flags() QQmlImageProviderBase__Flag {

	return (QQmlImageProviderBase__Flag)(C.QQuickAsyncImageProvider_virtualbase_flags(unsafe.Pointer(this.h)))

}
func (this *QQuickAsyncImageProvider) OnFlags(slot func(super func() QQmlImageProviderBase__Flag) QQmlImageProviderBase__Flag) {
	ok := C.QQuickAsyncImageProvider_override_virtual_flags(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickAsyncImageProvider_flags
func miqt_exec_callback_QQuickAsyncImageProvider_flags(self *C.QQuickAsyncImageProvider, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() QQmlImageProviderBase__Flag) QQmlImageProviderBase__Flag)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickAsyncImageProvider{h: self}).callVirtualBase_Flags)

	return (C.int)(virtualReturn)

}

func (this *QQuickAsyncImageProvider) callVirtualBase_RequestImage(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))

	_goptr := qt.UnsafeNewQImage(unsafe.Pointer(C.QQuickAsyncImageProvider_virtualbase_requestImage(unsafe.Pointer(this.h), id_ms, (*C.QSize)(size.UnsafePointer()), (*C.QSize)(requestedSize.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickAsyncImageProvider) OnRequestImage(slot func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage, id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage) {
	ok := C.QQuickAsyncImageProvider_override_virtual_requestImage(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickAsyncImageProvider_requestImage
func miqt_exec_callback_QQuickAsyncImageProvider_requestImage(self *C.QQuickAsyncImageProvider, cb C.intptr_t, id C.struct_miqt_string, size *C.QSize, requestedSize *C.QSize) *C.QImage {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage, id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QImage)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var id_ms C.struct_miqt_string = id
	id_ret := C.GoStringN(id_ms.data, C.int(int64(id_ms.len)))
	C.free(unsafe.Pointer(id_ms.data))
	slotval1 := id_ret
	slotval2 := qt.UnsafeNewQSize(unsafe.Pointer(size))

	slotval3 := qt.UnsafeNewQSize(unsafe.Pointer(requestedSize))

	virtualReturn := gofunc((&QQuickAsyncImageProvider{h: self}).callVirtualBase_RequestImage, slotval1, slotval2, slotval3)

	return (*C.QImage)(virtualReturn.UnsafePointer())

}

func (this *QQuickAsyncImageProvider) callVirtualBase_RequestPixmap(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))

	_goptr := qt.UnsafeNewQPixmap(unsafe.Pointer(C.QQuickAsyncImageProvider_virtualbase_requestPixmap(unsafe.Pointer(this.h), id_ms, (*C.QSize)(size.UnsafePointer()), (*C.QSize)(requestedSize.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickAsyncImageProvider) OnRequestPixmap(slot func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap, id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap) {
	ok := C.QQuickAsyncImageProvider_override_virtual_requestPixmap(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap
func miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap(self *C.QQuickAsyncImageProvider, cb C.intptr_t, id C.struct_miqt_string, size *C.QSize, requestedSize *C.QSize) *C.QPixmap {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap, id string, size *qt.QSize, requestedSize *qt.QSize) *qt.QPixmap)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var id_ms C.struct_miqt_string = id
	id_ret := C.GoStringN(id_ms.data, C.int(int64(id_ms.len)))
	C.free(unsafe.Pointer(id_ms.data))
	slotval1 := id_ret
	slotval2 := qt.UnsafeNewQSize(unsafe.Pointer(size))

	slotval3 := qt.UnsafeNewQSize(unsafe.Pointer(requestedSize))

	virtualReturn := gofunc((&QQuickAsyncImageProvider{h: self}).callVirtualBase_RequestPixmap, slotval1, slotval2, slotval3)

	return (*C.QPixmap)(virtualReturn.UnsafePointer())

}

func (this *QQuickAsyncImageProvider) callVirtualBase_RequestTexture(id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))

	return newQQuickTextureFactory(C.QQuickAsyncImageProvider_virtualbase_requestTexture(unsafe.Pointer(this.h), id_ms, (*C.QSize)(size.UnsafePointer()), (*C.QSize)(requestedSize.UnsafePointer())))

}
func (this *QQuickAsyncImageProvider) OnRequestTexture(slot func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory, id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory) {
	ok := C.QQuickAsyncImageProvider_override_virtual_requestTexture(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickAsyncImageProvider_requestTexture
func miqt_exec_callback_QQuickAsyncImageProvider_requestTexture(self *C.QQuickAsyncImageProvider, cb C.intptr_t, id C.struct_miqt_string, size *C.QSize, requestedSize *C.QSize) *C.QQuickTextureFactory {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory, id string, size *qt.QSize, requestedSize *qt.QSize) *QQuickTextureFactory)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var id_ms C.struct_miqt_string = id
	id_ret := C.GoStringN(id_ms.data, C.int(int64(id_ms.len)))
	C.free(unsafe.Pointer(id_ms.data))
	slotval1 := id_ret
	slotval2 := qt.UnsafeNewQSize(unsafe.Pointer(size))

	slotval3 := qt.UnsafeNewQSize(unsafe.Pointer(requestedSize))

	virtualReturn := gofunc((&QQuickAsyncImageProvider{h: self}).callVirtualBase_RequestTexture, slotval1, slotval2, slotval3)

	return virtualReturn.cPointer()

}

// Delete this object from C++ memory.
func (this *QQuickAsyncImageProvider) Delete() {
	C.QQuickAsyncImageProvider_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickAsyncImageProvider) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickAsyncImageProvider) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
