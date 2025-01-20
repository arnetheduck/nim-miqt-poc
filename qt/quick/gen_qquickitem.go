package quick

/*

#include "gen_qquickitem.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQuickItem__Flag int

const (
	QQuickItem__ItemClipsChildrenToShape QQuickItem__Flag = 1
	QQuickItem__ItemAcceptsInputMethod   QQuickItem__Flag = 2
	QQuickItem__ItemIsFocusScope         QQuickItem__Flag = 4
	QQuickItem__ItemHasContents          QQuickItem__Flag = 8
	QQuickItem__ItemAcceptsDrops         QQuickItem__Flag = 16
)

type QQuickItem__ItemChange int

const (
	QQuickItem__ItemChildAddedChange           QQuickItem__ItemChange = 0
	QQuickItem__ItemChildRemovedChange         QQuickItem__ItemChange = 1
	QQuickItem__ItemSceneChange                QQuickItem__ItemChange = 2
	QQuickItem__ItemVisibleHasChanged          QQuickItem__ItemChange = 3
	QQuickItem__ItemParentHasChanged           QQuickItem__ItemChange = 4
	QQuickItem__ItemOpacityHasChanged          QQuickItem__ItemChange = 5
	QQuickItem__ItemActiveFocusHasChanged      QQuickItem__ItemChange = 6
	QQuickItem__ItemRotationHasChanged         QQuickItem__ItemChange = 7
	QQuickItem__ItemAntialiasingHasChanged     QQuickItem__ItemChange = 8
	QQuickItem__ItemDevicePixelRatioHasChanged QQuickItem__ItemChange = 9
	QQuickItem__ItemEnabledHasChanged          QQuickItem__ItemChange = 10
)

type QQuickItem__TransformOrigin int

const (
	QQuickItem__TopLeft     QQuickItem__TransformOrigin = 0
	QQuickItem__Top         QQuickItem__TransformOrigin = 1
	QQuickItem__TopRight    QQuickItem__TransformOrigin = 2
	QQuickItem__Left        QQuickItem__TransformOrigin = 3
	QQuickItem__Center      QQuickItem__TransformOrigin = 4
	QQuickItem__Right       QQuickItem__TransformOrigin = 5
	QQuickItem__BottomLeft  QQuickItem__TransformOrigin = 6
	QQuickItem__Bottom      QQuickItem__TransformOrigin = 7
	QQuickItem__BottomRight QQuickItem__TransformOrigin = 8
)

type QQuickTransform struct {
	h *C.QQuickTransform
	*qt.QObject
}

func (this *QQuickTransform) cPointer() *C.QQuickTransform {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickTransform) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickTransform constructs the type using only CGO pointers.
func newQQuickTransform(h *C.QQuickTransform) *QQuickTransform {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QQuickTransform_virtbase(h, &outptr_QObject)

	return &QQuickTransform{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQQuickTransform constructs the type using only unsafe pointers.
func UnsafeNewQQuickTransform(h unsafe.Pointer) *QQuickTransform {
	return newQQuickTransform((*C.QQuickTransform)(h))
}

// NewQQuickTransform constructs a new QQuickTransform object.
func NewQQuickTransform() *QQuickTransform {

	return newQQuickTransform(C.QQuickTransform_new())
}

// NewQQuickTransform2 constructs a new QQuickTransform object.
func NewQQuickTransform2(parent *qt.QObject) *QQuickTransform {

	return newQQuickTransform(C.QQuickTransform_new2((*C.QObject)(parent.UnsafePointer())))
}

func (this *QQuickTransform) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickTransform_metaObject(this.h)))
}

func (this *QQuickTransform) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickTransform_metacast(this.h, param1_Cstring))
}

func (this *QQuickTransform) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickTransform_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickTransform_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTransform_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickTransform_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTransform_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickTransform) AppendToItem(param1 *QQuickItem) {
	C.QQuickTransform_appendToItem(this.h, param1.cPointer())
}

func (this *QQuickTransform) PrependToItem(param1 *QQuickItem) {
	C.QQuickTransform_prependToItem(this.h, param1.cPointer())
}

func (this *QQuickTransform) ApplyTo(matrix *qt.QMatrix4x4) {
	C.QQuickTransform_applyTo(this.h, (*C.QMatrix4x4)(matrix.UnsafePointer()))
}

func QQuickTransform_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTransform_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickTransform_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTransform_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickTransform_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTransform_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickTransform_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickTransform_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickTransform) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickTransform_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQuickTransform) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQuickTransform_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_metaObject
func miqt_exec_callback_QQuickTransform_metaObject(self *C.QQuickTransform, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickTransform{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQuickTransform) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQuickTransform_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQuickTransform) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQuickTransform_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_metacast
func miqt_exec_callback_QQuickTransform_metacast(self *C.QQuickTransform, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQuickTransform{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQuickTransform) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQuickTransform_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQuickTransform) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQuickTransform_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_metacall
func miqt_exec_callback_QQuickTransform_metacall(self *C.QQuickTransform, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQuickTransform{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QQuickTransform) OnApplyTo(slot func(matrix *qt.QMatrix4x4)) {
	ok := C.QQuickTransform_override_virtual_applyTo(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_applyTo
func miqt_exec_callback_QQuickTransform_applyTo(self *C.QQuickTransform, cb C.intptr_t, matrix *C.QMatrix4x4) {
	gofunc, ok := cgo.Handle(cb).Value().(func(matrix *qt.QMatrix4x4))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMatrix4x4(unsafe.Pointer(matrix))

	gofunc(slotval1)

}

func (this *QQuickTransform) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QQuickTransform_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickTransform) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QQuickTransform_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_event
func miqt_exec_callback_QQuickTransform_event(self *C.QQuickTransform, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickTransform{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickTransform) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQuickTransform_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickTransform) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQuickTransform_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_eventFilter
func miqt_exec_callback_QQuickTransform_eventFilter(self *C.QQuickTransform, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickTransform{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickTransform) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQuickTransform_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQuickTransform) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQuickTransform_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_timerEvent
func miqt_exec_callback_QQuickTransform_timerEvent(self *C.QQuickTransform, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQuickTransform{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQuickTransform) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQuickTransform_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQuickTransform) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQuickTransform_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_childEvent
func miqt_exec_callback_QQuickTransform_childEvent(self *C.QQuickTransform, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQuickTransform{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQuickTransform) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQuickTransform_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQuickTransform) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQuickTransform_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_customEvent
func miqt_exec_callback_QQuickTransform_customEvent(self *C.QQuickTransform, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQuickTransform{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQuickTransform) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQuickTransform_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickTransform) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickTransform_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_connectNotify
func miqt_exec_callback_QQuickTransform_connectNotify(self *C.QQuickTransform, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickTransform{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQuickTransform) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQuickTransform_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickTransform) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickTransform_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickTransform_disconnectNotify
func miqt_exec_callback_QQuickTransform_disconnectNotify(self *C.QQuickTransform, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickTransform{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQuickTransform) Delete() {
	C.QQuickTransform_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickTransform) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickTransform) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQuickItem struct {
	h *C.QQuickItem
	*qt.QObject
	*QQmlParserStatus
}

func (this *QQuickItem) cPointer() *C.QQuickItem {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickItem) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickItem constructs the type using only CGO pointers.
func newQQuickItem(h *C.QQuickItem) *QQuickItem {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	var outptr_QQmlParserStatus *C.QQmlParserStatus = nil
	C.QQuickItem_virtbase(h, &outptr_QObject, &outptr_QQmlParserStatus)

	return &QQuickItem{h: h,
		QObject:          qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject)),
		QQmlParserStatus: newQQmlParserStatus(outptr_QQmlParserStatus)}
}

// UnsafeNewQQuickItem constructs the type using only unsafe pointers.
func UnsafeNewQQuickItem(h unsafe.Pointer) *QQuickItem {
	return newQQuickItem((*C.QQuickItem)(h))
}

// NewQQuickItem constructs a new QQuickItem object.
func NewQQuickItem() *QQuickItem {

	return newQQuickItem(C.QQuickItem_new())
}

// NewQQuickItem2 constructs a new QQuickItem object.
func NewQQuickItem2(parent *QQuickItem) *QQuickItem {

	return newQQuickItem(C.QQuickItem_new2(parent.cPointer()))
}

func (this *QQuickItem) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickItem_metaObject(this.h)))
}

func (this *QQuickItem) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickItem_metacast(this.h, param1_Cstring))
}

func (this *QQuickItem) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickItem_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickItem_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItem_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickItem_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItem_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickItem) Window() *QQuickWindow {
	return newQQuickWindow(C.QQuickItem_window(this.h))
}

func (this *QQuickItem) ParentItem() *QQuickItem {
	return newQQuickItem(C.QQuickItem_parentItem(this.h))
}

func (this *QQuickItem) SetParentItem(parent *QQuickItem) {
	C.QQuickItem_setParentItem(this.h, parent.cPointer())
}

func (this *QQuickItem) StackBefore(param1 *QQuickItem) {
	C.QQuickItem_stackBefore(this.h, param1.cPointer())
}

func (this *QQuickItem) StackAfter(param1 *QQuickItem) {
	C.QQuickItem_stackAfter(this.h, param1.cPointer())
}

func (this *QQuickItem) ChildrenRect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickItem_childrenRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) ChildItems() []*QQuickItem {
	var _ma C.struct_miqt_array = C.QQuickItem_childItems(this.h)
	_ret := make([]*QQuickItem, int(_ma.len))
	_outCast := (*[0xffff]*C.QQuickItem)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = newQQuickItem(_outCast[i])
	}
	return _ret
}

func (this *QQuickItem) Clip() bool {
	return (bool)(C.QQuickItem_clip(this.h))
}

func (this *QQuickItem) SetClip(clip bool) {
	C.QQuickItem_setClip(this.h, (C.bool)(clip))
}

func (this *QQuickItem) State() string {
	var _ms C.struct_miqt_string = C.QQuickItem_state(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickItem) SetState(state string) {
	state_ms := C.struct_miqt_string{}
	state_ms.data = C.CString(state)
	state_ms.len = C.size_t(len(state))
	defer C.free(unsafe.Pointer(state_ms.data))
	C.QQuickItem_setState(this.h, state_ms)
}

func (this *QQuickItem) BaselineOffset() float64 {
	return (float64)(C.QQuickItem_baselineOffset(this.h))
}

func (this *QQuickItem) SetBaselineOffset(baselineOffset float64) {
	C.QQuickItem_setBaselineOffset(this.h, (C.double)(baselineOffset))
}

func (this *QQuickItem) X() float64 {
	return (float64)(C.QQuickItem_x(this.h))
}

func (this *QQuickItem) Y() float64 {
	return (float64)(C.QQuickItem_y(this.h))
}

func (this *QQuickItem) Position() *qt.QPointF {
	_goptr := qt.UnsafeNewQPointF(unsafe.Pointer(C.QQuickItem_position(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) SetX(x float64) {
	C.QQuickItem_setX(this.h, (C.double)(x))
}

func (this *QQuickItem) SetY(y float64) {
	C.QQuickItem_setY(this.h, (C.double)(y))
}

func (this *QQuickItem) SetPosition(position *qt.QPointF) {
	C.QQuickItem_setPosition(this.h, (*C.QPointF)(position.UnsafePointer()))
}

func (this *QQuickItem) Width() float64 {
	return (float64)(C.QQuickItem_width(this.h))
}

func (this *QQuickItem) SetWidth(width float64) {
	C.QQuickItem_setWidth(this.h, (C.double)(width))
}

func (this *QQuickItem) ResetWidth() {
	C.QQuickItem_resetWidth(this.h)
}

func (this *QQuickItem) SetImplicitWidth(implicitWidth float64) {
	C.QQuickItem_setImplicitWidth(this.h, (C.double)(implicitWidth))
}

func (this *QQuickItem) ImplicitWidth() float64 {
	return (float64)(C.QQuickItem_implicitWidth(this.h))
}

func (this *QQuickItem) Height() float64 {
	return (float64)(C.QQuickItem_height(this.h))
}

func (this *QQuickItem) SetHeight(height float64) {
	C.QQuickItem_setHeight(this.h, (C.double)(height))
}

func (this *QQuickItem) ResetHeight() {
	C.QQuickItem_resetHeight(this.h)
}

func (this *QQuickItem) SetImplicitHeight(implicitHeight float64) {
	C.QQuickItem_setImplicitHeight(this.h, (C.double)(implicitHeight))
}

func (this *QQuickItem) ImplicitHeight() float64 {
	return (float64)(C.QQuickItem_implicitHeight(this.h))
}

func (this *QQuickItem) Size() *qt.QSizeF {
	_goptr := qt.UnsafeNewQSizeF(unsafe.Pointer(C.QQuickItem_size(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) SetSize(size *qt.QSizeF) {
	C.QQuickItem_setSize(this.h, (*C.QSizeF)(size.UnsafePointer()))
}

func (this *QQuickItem) TransformOrigin() QQuickItem__TransformOrigin {
	return (QQuickItem__TransformOrigin)(C.QQuickItem_transformOrigin(this.h))
}

func (this *QQuickItem) SetTransformOrigin(transformOrigin QQuickItem__TransformOrigin) {
	C.QQuickItem_setTransformOrigin(this.h, (C.int)(transformOrigin))
}

func (this *QQuickItem) TransformOriginPoint() *qt.QPointF {
	_goptr := qt.UnsafeNewQPointF(unsafe.Pointer(C.QQuickItem_transformOriginPoint(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) SetTransformOriginPoint(transformOriginPoint *qt.QPointF) {
	C.QQuickItem_setTransformOriginPoint(this.h, (*C.QPointF)(transformOriginPoint.UnsafePointer()))
}

func (this *QQuickItem) Z() float64 {
	return (float64)(C.QQuickItem_z(this.h))
}

func (this *QQuickItem) SetZ(z float64) {
	C.QQuickItem_setZ(this.h, (C.double)(z))
}

func (this *QQuickItem) Rotation() float64 {
	return (float64)(C.QQuickItem_rotation(this.h))
}

func (this *QQuickItem) SetRotation(rotation float64) {
	C.QQuickItem_setRotation(this.h, (C.double)(rotation))
}

func (this *QQuickItem) Scale() float64 {
	return (float64)(C.QQuickItem_scale(this.h))
}

func (this *QQuickItem) SetScale(scale float64) {
	C.QQuickItem_setScale(this.h, (C.double)(scale))
}

func (this *QQuickItem) Opacity() float64 {
	return (float64)(C.QQuickItem_opacity(this.h))
}

func (this *QQuickItem) SetOpacity(opacity float64) {
	C.QQuickItem_setOpacity(this.h, (C.double)(opacity))
}

func (this *QQuickItem) IsVisible() bool {
	return (bool)(C.QQuickItem_isVisible(this.h))
}

func (this *QQuickItem) SetVisible(visible bool) {
	C.QQuickItem_setVisible(this.h, (C.bool)(visible))
}

func (this *QQuickItem) IsEnabled() bool {
	return (bool)(C.QQuickItem_isEnabled(this.h))
}

func (this *QQuickItem) SetEnabled(enabled bool) {
	C.QQuickItem_setEnabled(this.h, (C.bool)(enabled))
}

func (this *QQuickItem) Smooth() bool {
	return (bool)(C.QQuickItem_smooth(this.h))
}

func (this *QQuickItem) SetSmooth(smooth bool) {
	C.QQuickItem_setSmooth(this.h, (C.bool)(smooth))
}

func (this *QQuickItem) ActiveFocusOnTab() bool {
	return (bool)(C.QQuickItem_activeFocusOnTab(this.h))
}

func (this *QQuickItem) SetActiveFocusOnTab(activeFocusOnTab bool) {
	C.QQuickItem_setActiveFocusOnTab(this.h, (C.bool)(activeFocusOnTab))
}

func (this *QQuickItem) Antialiasing() bool {
	return (bool)(C.QQuickItem_antialiasing(this.h))
}

func (this *QQuickItem) SetAntialiasing(antialiasing bool) {
	C.QQuickItem_setAntialiasing(this.h, (C.bool)(antialiasing))
}

func (this *QQuickItem) ResetAntialiasing() {
	C.QQuickItem_resetAntialiasing(this.h)
}

func (this *QQuickItem) Flags() QQuickItem__Flag {
	return (QQuickItem__Flag)(C.QQuickItem_flags(this.h))
}

func (this *QQuickItem) SetFlag(flag QQuickItem__Flag) {
	C.QQuickItem_setFlag(this.h, (C.int)(flag))
}

func (this *QQuickItem) SetFlags(flags QQuickItem__Flag) {
	C.QQuickItem_setFlags(this.h, (C.int)(flags))
}

func (this *QQuickItem) BoundingRect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickItem_boundingRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) ClipRect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickItem_clipRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) HasActiveFocus() bool {
	return (bool)(C.QQuickItem_hasActiveFocus(this.h))
}

func (this *QQuickItem) HasFocus() bool {
	return (bool)(C.QQuickItem_hasFocus(this.h))
}

func (this *QQuickItem) SetFocus(focus bool) {
	C.QQuickItem_setFocus(this.h, (C.bool)(focus))
}

func (this *QQuickItem) SetFocus2(focus bool, reason qt.FocusReason) {
	C.QQuickItem_setFocus2(this.h, (C.bool)(focus), (C.int)(reason))
}

func (this *QQuickItem) IsFocusScope() bool {
	return (bool)(C.QQuickItem_isFocusScope(this.h))
}

func (this *QQuickItem) ScopedFocusItem() *QQuickItem {
	return newQQuickItem(C.QQuickItem_scopedFocusItem(this.h))
}

func (this *QQuickItem) IsAncestorOf(child *QQuickItem) bool {
	return (bool)(C.QQuickItem_isAncestorOf(this.h, child.cPointer()))
}

func (this *QQuickItem) AcceptedMouseButtons() qt.MouseButton {
	return (qt.MouseButton)(C.QQuickItem_acceptedMouseButtons(this.h))
}

func (this *QQuickItem) SetAcceptedMouseButtons(buttons qt.MouseButton) {
	C.QQuickItem_setAcceptedMouseButtons(this.h, (C.int)(buttons))
}

func (this *QQuickItem) AcceptHoverEvents() bool {
	return (bool)(C.QQuickItem_acceptHoverEvents(this.h))
}

func (this *QQuickItem) SetAcceptHoverEvents(enabled bool) {
	C.QQuickItem_setAcceptHoverEvents(this.h, (C.bool)(enabled))
}

func (this *QQuickItem) AcceptTouchEvents() bool {
	return (bool)(C.QQuickItem_acceptTouchEvents(this.h))
}

func (this *QQuickItem) SetAcceptTouchEvents(accept bool) {
	C.QQuickItem_setAcceptTouchEvents(this.h, (C.bool)(accept))
}

func (this *QQuickItem) Cursor() *qt.QCursor {
	_goptr := qt.UnsafeNewQCursor(unsafe.Pointer(C.QQuickItem_cursor(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) SetCursor(cursor *qt.QCursor) {
	C.QQuickItem_setCursor(this.h, (*C.QCursor)(cursor.UnsafePointer()))
}

func (this *QQuickItem) UnsetCursor() {
	C.QQuickItem_unsetCursor(this.h)
}

func (this *QQuickItem) IsUnderMouse() bool {
	return (bool)(C.QQuickItem_isUnderMouse(this.h))
}

func (this *QQuickItem) GrabMouse() {
	C.QQuickItem_grabMouse(this.h)
}

func (this *QQuickItem) UngrabMouse() {
	C.QQuickItem_ungrabMouse(this.h)
}

func (this *QQuickItem) KeepMouseGrab() bool {
	return (bool)(C.QQuickItem_keepMouseGrab(this.h))
}

func (this *QQuickItem) SetKeepMouseGrab(keepMouseGrab bool) {
	C.QQuickItem_setKeepMouseGrab(this.h, (C.bool)(keepMouseGrab))
}

func (this *QQuickItem) FiltersChildMouseEvents() bool {
	return (bool)(C.QQuickItem_filtersChildMouseEvents(this.h))
}

func (this *QQuickItem) SetFiltersChildMouseEvents(filter bool) {
	C.QQuickItem_setFiltersChildMouseEvents(this.h, (C.bool)(filter))
}

func (this *QQuickItem) GrabTouchPoints(ids []int) {
	ids_CArray := (*[0xffff]C.int)(C.malloc(C.size_t(8 * len(ids))))
	defer C.free(unsafe.Pointer(ids_CArray))
	for i := range ids {
		ids_CArray[i] = (C.int)(ids[i])
	}
	ids_ma := C.struct_miqt_array{len: C.size_t(len(ids)), data: unsafe.Pointer(ids_CArray)}
	C.QQuickItem_grabTouchPoints(this.h, ids_ma)
}

func (this *QQuickItem) UngrabTouchPoints() {
	C.QQuickItem_ungrabTouchPoints(this.h)
}

func (this *QQuickItem) KeepTouchGrab() bool {
	return (bool)(C.QQuickItem_keepTouchGrab(this.h))
}

func (this *QQuickItem) SetKeepTouchGrab(keepTouchGrab bool) {
	C.QQuickItem_setKeepTouchGrab(this.h, (C.bool)(keepTouchGrab))
}

func (this *QQuickItem) GrabToImage(callback *QJSValue) bool {
	return (bool)(C.QQuickItem_grabToImage(this.h, callback.cPointer()))
}

func (this *QQuickItem) Contains(point *qt.QPointF) bool {
	return (bool)(C.QQuickItem_contains(this.h, (*C.QPointF)(point.UnsafePointer())))
}

func (this *QQuickItem) ContainmentMask() *qt.QObject {
	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQuickItem_containmentMask(this.h)))
}

func (this *QQuickItem) SetContainmentMask(mask *qt.QObject) {
	C.QQuickItem_setContainmentMask(this.h, (*C.QObject)(mask.UnsafePointer()))
}

func (this *QQuickItem) ItemTransform(param1 *QQuickItem, param2 *bool) *qt.QTransform {
	_goptr := qt.UnsafeNewQTransform(unsafe.Pointer(C.QQuickItem_itemTransform(this.h, param1.cPointer(), (*C.bool)(unsafe.Pointer(param2)))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapToItem(item *QQuickItem, point *qt.QPointF) *qt.QPointF {
	_goptr := qt.UnsafeNewQPointF(unsafe.Pointer(C.QQuickItem_mapToItem(this.h, item.cPointer(), (*C.QPointF)(point.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapToScene(point *qt.QPointF) *qt.QPointF {
	_goptr := qt.UnsafeNewQPointF(unsafe.Pointer(C.QQuickItem_mapToScene(this.h, (*C.QPointF)(point.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapToGlobal(point *qt.QPointF) *qt.QPointF {
	_goptr := qt.UnsafeNewQPointF(unsafe.Pointer(C.QQuickItem_mapToGlobal(this.h, (*C.QPointF)(point.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapRectToItem(item *QQuickItem, rect *qt.QRectF) *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickItem_mapRectToItem(this.h, item.cPointer(), (*C.QRectF)(rect.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapRectToScene(rect *qt.QRectF) *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickItem_mapRectToScene(this.h, (*C.QRectF)(rect.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapFromItem(item *QQuickItem, point *qt.QPointF) *qt.QPointF {
	_goptr := qt.UnsafeNewQPointF(unsafe.Pointer(C.QQuickItem_mapFromItem(this.h, item.cPointer(), (*C.QPointF)(point.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapFromScene(point *qt.QPointF) *qt.QPointF {
	_goptr := qt.UnsafeNewQPointF(unsafe.Pointer(C.QQuickItem_mapFromScene(this.h, (*C.QPointF)(point.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapFromGlobal(point *qt.QPointF) *qt.QPointF {
	_goptr := qt.UnsafeNewQPointF(unsafe.Pointer(C.QQuickItem_mapFromGlobal(this.h, (*C.QPointF)(point.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapRectFromItem(item *QQuickItem, rect *qt.QRectF) *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickItem_mapRectFromItem(this.h, item.cPointer(), (*C.QRectF)(rect.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) MapRectFromScene(rect *qt.QRectF) *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickItem_mapRectFromScene(this.h, (*C.QRectF)(rect.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) Polish() {
	C.QQuickItem_polish(this.h)
}

func (this *QQuickItem) ForceActiveFocus() {
	C.QQuickItem_forceActiveFocus(this.h)
}

func (this *QQuickItem) ForceActiveFocusWithReason(reason qt.FocusReason) {
	C.QQuickItem_forceActiveFocusWithReason(this.h, (C.int)(reason))
}

func (this *QQuickItem) NextItemInFocusChain() *QQuickItem {
	return newQQuickItem(C.QQuickItem_nextItemInFocusChain(this.h))
}

func (this *QQuickItem) ChildAt(x float64, y float64) *QQuickItem {
	return newQQuickItem(C.QQuickItem_childAt(this.h, (C.double)(x), (C.double)(y)))
}

func (this *QQuickItem) InputMethodQuery(query qt.InputMethodQuery) *qt.QVariant {
	_goptr := qt.UnsafeNewQVariant(unsafe.Pointer(C.QQuickItem_inputMethodQuery(this.h, (C.int)(query))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickItem) IsTextureProvider() bool {
	return (bool)(C.QQuickItem_isTextureProvider(this.h))
}

func (this *QQuickItem) TextureProvider() *QSGTextureProvider {
	return newQSGTextureProvider(C.QQuickItem_textureProvider(this.h))
}

func (this *QQuickItem) Update() {
	C.QQuickItem_update(this.h)
}

func (this *QQuickItem) ChildrenRectChanged(param1 *qt.QRectF) {
	C.QQuickItem_childrenRectChanged(this.h, (*C.QRectF)(param1.UnsafePointer()))
}
func (this *QQuickItem) OnChildrenRectChanged(slot func(param1 *qt.QRectF)) {
	C.QQuickItem_connect_childrenRectChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_childrenRectChanged
func miqt_exec_callback_QQuickItem_childrenRectChanged(cb C.intptr_t, param1 *C.QRectF) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 *qt.QRectF))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQRectF(unsafe.Pointer(param1))

	gofunc(slotval1)
}

func (this *QQuickItem) BaselineOffsetChanged(param1 float64) {
	C.QQuickItem_baselineOffsetChanged(this.h, (C.double)(param1))
}
func (this *QQuickItem) OnBaselineOffsetChanged(slot func(param1 float64)) {
	C.QQuickItem_connect_baselineOffsetChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_baselineOffsetChanged
func miqt_exec_callback_QQuickItem_baselineOffsetChanged(cb C.intptr_t, param1 C.double) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 float64))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (float64)(param1)

	gofunc(slotval1)
}

func (this *QQuickItem) StateChanged(param1 string) {
	param1_ms := C.struct_miqt_string{}
	param1_ms.data = C.CString(param1)
	param1_ms.len = C.size_t(len(param1))
	defer C.free(unsafe.Pointer(param1_ms.data))
	C.QQuickItem_stateChanged(this.h, param1_ms)
}
func (this *QQuickItem) OnStateChanged(slot func(param1 string)) {
	C.QQuickItem_connect_stateChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_stateChanged
func miqt_exec_callback_QQuickItem_stateChanged(cb C.intptr_t, param1 C.struct_miqt_string) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 string))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var param1_ms C.struct_miqt_string = param1
	param1_ret := C.GoStringN(param1_ms.data, C.int(int64(param1_ms.len)))
	C.free(unsafe.Pointer(param1_ms.data))
	slotval1 := param1_ret

	gofunc(slotval1)
}

func (this *QQuickItem) FocusChanged(param1 bool) {
	C.QQuickItem_focusChanged(this.h, (C.bool)(param1))
}
func (this *QQuickItem) OnFocusChanged(slot func(param1 bool)) {
	C.QQuickItem_connect_focusChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_focusChanged
func miqt_exec_callback_QQuickItem_focusChanged(cb C.intptr_t, param1 C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(param1)

	gofunc(slotval1)
}

func (this *QQuickItem) ActiveFocusChanged(param1 bool) {
	C.QQuickItem_activeFocusChanged(this.h, (C.bool)(param1))
}
func (this *QQuickItem) OnActiveFocusChanged(slot func(param1 bool)) {
	C.QQuickItem_connect_activeFocusChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_activeFocusChanged
func miqt_exec_callback_QQuickItem_activeFocusChanged(cb C.intptr_t, param1 C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(param1)

	gofunc(slotval1)
}

func (this *QQuickItem) ActiveFocusOnTabChanged(param1 bool) {
	C.QQuickItem_activeFocusOnTabChanged(this.h, (C.bool)(param1))
}
func (this *QQuickItem) OnActiveFocusOnTabChanged(slot func(param1 bool)) {
	C.QQuickItem_connect_activeFocusOnTabChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_activeFocusOnTabChanged
func miqt_exec_callback_QQuickItem_activeFocusOnTabChanged(cb C.intptr_t, param1 C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(param1)

	gofunc(slotval1)
}

func (this *QQuickItem) ParentChanged(param1 *QQuickItem) {
	C.QQuickItem_parentChanged(this.h, param1.cPointer())
}
func (this *QQuickItem) OnParentChanged(slot func(param1 *QQuickItem)) {
	C.QQuickItem_connect_parentChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_parentChanged
func miqt_exec_callback_QQuickItem_parentChanged(cb C.intptr_t, param1 *C.QQuickItem) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 *QQuickItem))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQuickItem(param1)

	gofunc(slotval1)
}

func (this *QQuickItem) TransformOriginChanged(param1 QQuickItem__TransformOrigin) {
	C.QQuickItem_transformOriginChanged(this.h, (C.int)(param1))
}
func (this *QQuickItem) OnTransformOriginChanged(slot func(param1 QQuickItem__TransformOrigin)) {
	C.QQuickItem_connect_transformOriginChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_transformOriginChanged
func miqt_exec_callback_QQuickItem_transformOriginChanged(cb C.intptr_t, param1 C.int) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 QQuickItem__TransformOrigin))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QQuickItem__TransformOrigin)(param1)

	gofunc(slotval1)
}

func (this *QQuickItem) SmoothChanged(param1 bool) {
	C.QQuickItem_smoothChanged(this.h, (C.bool)(param1))
}
func (this *QQuickItem) OnSmoothChanged(slot func(param1 bool)) {
	C.QQuickItem_connect_smoothChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_smoothChanged
func miqt_exec_callback_QQuickItem_smoothChanged(cb C.intptr_t, param1 C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(param1)

	gofunc(slotval1)
}

func (this *QQuickItem) AntialiasingChanged(param1 bool) {
	C.QQuickItem_antialiasingChanged(this.h, (C.bool)(param1))
}
func (this *QQuickItem) OnAntialiasingChanged(slot func(param1 bool)) {
	C.QQuickItem_connect_antialiasingChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_antialiasingChanged
func miqt_exec_callback_QQuickItem_antialiasingChanged(cb C.intptr_t, param1 C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(param1)

	gofunc(slotval1)
}

func (this *QQuickItem) ClipChanged(param1 bool) {
	C.QQuickItem_clipChanged(this.h, (C.bool)(param1))
}
func (this *QQuickItem) OnClipChanged(slot func(param1 bool)) {
	C.QQuickItem_connect_clipChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_clipChanged
func miqt_exec_callback_QQuickItem_clipChanged(cb C.intptr_t, param1 C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(param1)

	gofunc(slotval1)
}

func (this *QQuickItem) WindowChanged(window *QQuickWindow) {
	C.QQuickItem_windowChanged(this.h, window.cPointer())
}
func (this *QQuickItem) OnWindowChanged(slot func(window *QQuickWindow)) {
	C.QQuickItem_connect_windowChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_windowChanged
func miqt_exec_callback_QQuickItem_windowChanged(cb C.intptr_t, window *C.QQuickWindow) {
	gofunc, ok := cgo.Handle(cb).Value().(func(window *QQuickWindow))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQuickWindow(window)

	gofunc(slotval1)
}

func (this *QQuickItem) ChildrenChanged() {
	C.QQuickItem_childrenChanged(this.h)
}
func (this *QQuickItem) OnChildrenChanged(slot func()) {
	C.QQuickItem_connect_childrenChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_childrenChanged
func miqt_exec_callback_QQuickItem_childrenChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) OpacityChanged() {
	C.QQuickItem_opacityChanged(this.h)
}
func (this *QQuickItem) OnOpacityChanged(slot func()) {
	C.QQuickItem_connect_opacityChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_opacityChanged
func miqt_exec_callback_QQuickItem_opacityChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) EnabledChanged() {
	C.QQuickItem_enabledChanged(this.h)
}
func (this *QQuickItem) OnEnabledChanged(slot func()) {
	C.QQuickItem_connect_enabledChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_enabledChanged
func miqt_exec_callback_QQuickItem_enabledChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) VisibleChanged() {
	C.QQuickItem_visibleChanged(this.h)
}
func (this *QQuickItem) OnVisibleChanged(slot func()) {
	C.QQuickItem_connect_visibleChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_visibleChanged
func miqt_exec_callback_QQuickItem_visibleChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) VisibleChildrenChanged() {
	C.QQuickItem_visibleChildrenChanged(this.h)
}
func (this *QQuickItem) OnVisibleChildrenChanged(slot func()) {
	C.QQuickItem_connect_visibleChildrenChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_visibleChildrenChanged
func miqt_exec_callback_QQuickItem_visibleChildrenChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) RotationChanged() {
	C.QQuickItem_rotationChanged(this.h)
}
func (this *QQuickItem) OnRotationChanged(slot func()) {
	C.QQuickItem_connect_rotationChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_rotationChanged
func miqt_exec_callback_QQuickItem_rotationChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) ScaleChanged() {
	C.QQuickItem_scaleChanged(this.h)
}
func (this *QQuickItem) OnScaleChanged(slot func()) {
	C.QQuickItem_connect_scaleChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_scaleChanged
func miqt_exec_callback_QQuickItem_scaleChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) XChanged() {
	C.QQuickItem_xChanged(this.h)
}
func (this *QQuickItem) OnXChanged(slot func()) {
	C.QQuickItem_connect_xChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_xChanged
func miqt_exec_callback_QQuickItem_xChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) YChanged() {
	C.QQuickItem_yChanged(this.h)
}
func (this *QQuickItem) OnYChanged(slot func()) {
	C.QQuickItem_connect_yChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_yChanged
func miqt_exec_callback_QQuickItem_yChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) WidthChanged() {
	C.QQuickItem_widthChanged(this.h)
}
func (this *QQuickItem) OnWidthChanged(slot func()) {
	C.QQuickItem_connect_widthChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_widthChanged
func miqt_exec_callback_QQuickItem_widthChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) HeightChanged() {
	C.QQuickItem_heightChanged(this.h)
}
func (this *QQuickItem) OnHeightChanged(slot func()) {
	C.QQuickItem_connect_heightChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_heightChanged
func miqt_exec_callback_QQuickItem_heightChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) ZChanged() {
	C.QQuickItem_zChanged(this.h)
}
func (this *QQuickItem) OnZChanged(slot func()) {
	C.QQuickItem_connect_zChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_zChanged
func miqt_exec_callback_QQuickItem_zChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) ImplicitWidthChanged() {
	C.QQuickItem_implicitWidthChanged(this.h)
}
func (this *QQuickItem) OnImplicitWidthChanged(slot func()) {
	C.QQuickItem_connect_implicitWidthChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_implicitWidthChanged
func miqt_exec_callback_QQuickItem_implicitWidthChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) ImplicitHeightChanged() {
	C.QQuickItem_implicitHeightChanged(this.h)
}
func (this *QQuickItem) OnImplicitHeightChanged(slot func()) {
	C.QQuickItem_connect_implicitHeightChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_implicitHeightChanged
func miqt_exec_callback_QQuickItem_implicitHeightChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickItem) ContainmentMaskChanged() {
	C.QQuickItem_containmentMaskChanged(this.h)
}
func (this *QQuickItem) OnContainmentMaskChanged(slot func()) {
	C.QQuickItem_connect_containmentMaskChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickItem_containmentMaskChanged
func miqt_exec_callback_QQuickItem_containmentMaskChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QQuickItem_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItem_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickItem_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItem_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickItem_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItem_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickItem_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickItem_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickItem) SetFlag2(flag QQuickItem__Flag, enabled bool) {
	C.QQuickItem_setFlag2(this.h, (C.int)(flag), (C.bool)(enabled))
}

func (this *QQuickItem) GrabToImage22(callback *QJSValue, targetSize *qt.QSize) bool {
	return (bool)(C.QQuickItem_grabToImage22(this.h, callback.cPointer(), (*C.QSize)(targetSize.UnsafePointer())))
}

func (this *QQuickItem) NextItemInFocusChain1(forward bool) *QQuickItem {
	return newQQuickItem(C.QQuickItem_nextItemInFocusChain1(this.h, (C.bool)(forward)))
}

func (this *QQuickItem) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickItem_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQuickItem) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQuickItem_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_metaObject
func miqt_exec_callback_QQuickItem_metaObject(self *C.QQuickItem, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQuickItem) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQuickItem_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQuickItem) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQuickItem_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_metacast
func miqt_exec_callback_QQuickItem_metacast(self *C.QQuickItem, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQuickItem) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQuickItem_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQuickItem) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQuickItem_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_metacall
func miqt_exec_callback_QQuickItem_metacall(self *C.QQuickItem, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQuickItem) callVirtualBase_BoundingRect() *qt.QRectF {

	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickItem_virtualbase_boundingRect(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickItem) OnBoundingRect(slot func(super func() *qt.QRectF) *qt.QRectF) {
	ok := C.QQuickItem_override_virtual_boundingRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_boundingRect
func miqt_exec_callback_QQuickItem_boundingRect(self *C.QQuickItem, cb C.intptr_t) *C.QRectF {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QRectF) *qt.QRectF)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_BoundingRect)

	return (*C.QRectF)(virtualReturn.UnsafePointer())

}

func (this *QQuickItem) callVirtualBase_ClipRect() *qt.QRectF {

	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QQuickItem_virtualbase_clipRect(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickItem) OnClipRect(slot func(super func() *qt.QRectF) *qt.QRectF) {
	ok := C.QQuickItem_override_virtual_clipRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_clipRect
func miqt_exec_callback_QQuickItem_clipRect(self *C.QQuickItem, cb C.intptr_t) *C.QRectF {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QRectF) *qt.QRectF)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_ClipRect)

	return (*C.QRectF)(virtualReturn.UnsafePointer())

}

func (this *QQuickItem) callVirtualBase_Contains(point *qt.QPointF) bool {

	return (bool)(C.QQuickItem_virtualbase_contains(unsafe.Pointer(this.h), (*C.QPointF)(point.UnsafePointer())))

}
func (this *QQuickItem) OnContains(slot func(super func(point *qt.QPointF) bool, point *qt.QPointF) bool) {
	ok := C.QQuickItem_override_virtual_contains(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_contains
func miqt_exec_callback_QQuickItem_contains(self *C.QQuickItem, cb C.intptr_t, point *C.QPointF) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(point *qt.QPointF) bool, point *qt.QPointF) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQPointF(unsafe.Pointer(point))

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_Contains, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickItem) callVirtualBase_InputMethodQuery(query qt.InputMethodQuery) *qt.QVariant {

	_goptr := qt.UnsafeNewQVariant(unsafe.Pointer(C.QQuickItem_virtualbase_inputMethodQuery(unsafe.Pointer(this.h), (C.int)(query))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickItem) OnInputMethodQuery(slot func(super func(query qt.InputMethodQuery) *qt.QVariant, query qt.InputMethodQuery) *qt.QVariant) {
	ok := C.QQuickItem_override_virtual_inputMethodQuery(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_inputMethodQuery
func miqt_exec_callback_QQuickItem_inputMethodQuery(self *C.QQuickItem, cb C.intptr_t, query C.int) *C.QVariant {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(query qt.InputMethodQuery) *qt.QVariant, query qt.InputMethodQuery) *qt.QVariant)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.InputMethodQuery)(query)

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_InputMethodQuery, slotval1)

	return (*C.QVariant)(virtualReturn.UnsafePointer())

}

func (this *QQuickItem) callVirtualBase_IsTextureProvider() bool {

	return (bool)(C.QQuickItem_virtualbase_isTextureProvider(unsafe.Pointer(this.h)))

}
func (this *QQuickItem) OnIsTextureProvider(slot func(super func() bool) bool) {
	ok := C.QQuickItem_override_virtual_isTextureProvider(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_isTextureProvider
func miqt_exec_callback_QQuickItem_isTextureProvider(self *C.QQuickItem, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_IsTextureProvider)

	return (C.bool)(virtualReturn)

}

func (this *QQuickItem) callVirtualBase_TextureProvider() *QSGTextureProvider {

	return newQSGTextureProvider(C.QQuickItem_virtualbase_textureProvider(unsafe.Pointer(this.h)))

}
func (this *QQuickItem) OnTextureProvider(slot func(super func() *QSGTextureProvider) *QSGTextureProvider) {
	ok := C.QQuickItem_override_virtual_textureProvider(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_textureProvider
func miqt_exec_callback_QQuickItem_textureProvider(self *C.QQuickItem, cb C.intptr_t) *C.QSGTextureProvider {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGTextureProvider) *QSGTextureProvider)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_TextureProvider)

	return virtualReturn.cPointer()

}

func (this *QQuickItem) callVirtualBase_Event(param1 *qt.QEvent) bool {

	return (bool)(C.QQuickItem_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(param1.UnsafePointer())))

}
func (this *QQuickItem) OnEvent(slot func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool) {
	ok := C.QQuickItem_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_event
func miqt_exec_callback_QQuickItem_event(self *C.QQuickItem, cb C.intptr_t, param1 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(param1))

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickItem) callVirtualBase_ItemChange(param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData) {

	C.QQuickItem_virtualbase_itemChange(unsafe.Pointer(this.h), (C.int)(param1), param2.cPointer())

}
func (this *QQuickItem) OnItemChange(slot func(super func(param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData), param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData)) {
	ok := C.QQuickItem_override_virtual_itemChange(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_itemChange
func miqt_exec_callback_QQuickItem_itemChange(self *C.QQuickItem, cb C.intptr_t, param1 C.int, param2 *C.QQuickItem__ItemChangeData) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData), param1 QQuickItem__ItemChange, param2 *QQuickItem__ItemChangeData))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QQuickItem__ItemChange)(param1)

	slotval2 := newQQuickItem__ItemChangeData(param2)

	gofunc((&QQuickItem{h: self}).callVirtualBase_ItemChange, slotval1, slotval2)

}

func (this *QQuickItem) callVirtualBase_ClassBegin() {

	C.QQuickItem_virtualbase_classBegin(unsafe.Pointer(this.h))

}
func (this *QQuickItem) OnClassBegin(slot func(super func())) {
	ok := C.QQuickItem_override_virtual_classBegin(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_classBegin
func miqt_exec_callback_QQuickItem_classBegin(self *C.QQuickItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickItem{h: self}).callVirtualBase_ClassBegin)

}

func (this *QQuickItem) callVirtualBase_ComponentComplete() {

	C.QQuickItem_virtualbase_componentComplete(unsafe.Pointer(this.h))

}
func (this *QQuickItem) OnComponentComplete(slot func(super func())) {
	ok := C.QQuickItem_override_virtual_componentComplete(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_componentComplete
func miqt_exec_callback_QQuickItem_componentComplete(self *C.QQuickItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickItem{h: self}).callVirtualBase_ComponentComplete)

}

func (this *QQuickItem) callVirtualBase_KeyPressEvent(event *qt.QKeyEvent) {

	C.QQuickItem_virtualbase_keyPressEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnKeyPressEvent(slot func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent)) {
	ok := C.QQuickItem_override_virtual_keyPressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_keyPressEvent
func miqt_exec_callback_QQuickItem_keyPressEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_KeyPressEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_KeyReleaseEvent(event *qt.QKeyEvent) {

	C.QQuickItem_virtualbase_keyReleaseEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnKeyReleaseEvent(slot func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent)) {
	ok := C.QQuickItem_override_virtual_keyReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_keyReleaseEvent
func miqt_exec_callback_QQuickItem_keyReleaseEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QKeyEvent), event *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_KeyReleaseEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_InputMethodEvent(param1 *qt.QInputMethodEvent) {

	C.QQuickItem_virtualbase_inputMethodEvent(unsafe.Pointer(this.h), (*C.QInputMethodEvent)(param1.UnsafePointer()))

}
func (this *QQuickItem) OnInputMethodEvent(slot func(super func(param1 *qt.QInputMethodEvent), param1 *qt.QInputMethodEvent)) {
	ok := C.QQuickItem_override_virtual_inputMethodEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_inputMethodEvent
func miqt_exec_callback_QQuickItem_inputMethodEvent(self *C.QQuickItem, cb C.intptr_t, param1 *C.QInputMethodEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QInputMethodEvent), param1 *qt.QInputMethodEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQInputMethodEvent(unsafe.Pointer(param1))

	gofunc((&QQuickItem{h: self}).callVirtualBase_InputMethodEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_FocusInEvent(param1 *qt.QFocusEvent) {

	C.QQuickItem_virtualbase_focusInEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickItem) OnFocusInEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickItem_override_virtual_focusInEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_focusInEvent
func miqt_exec_callback_QQuickItem_focusInEvent(self *C.QQuickItem, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickItem{h: self}).callVirtualBase_FocusInEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_FocusOutEvent(param1 *qt.QFocusEvent) {

	C.QQuickItem_virtualbase_focusOutEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickItem) OnFocusOutEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickItem_override_virtual_focusOutEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_focusOutEvent
func miqt_exec_callback_QQuickItem_focusOutEvent(self *C.QQuickItem, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickItem{h: self}).callVirtualBase_FocusOutEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_MousePressEvent(event *qt.QMouseEvent) {

	C.QQuickItem_virtualbase_mousePressEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnMousePressEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickItem_override_virtual_mousePressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_mousePressEvent
func miqt_exec_callback_QQuickItem_mousePressEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_MousePressEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_MouseMoveEvent(event *qt.QMouseEvent) {

	C.QQuickItem_virtualbase_mouseMoveEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnMouseMoveEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickItem_override_virtual_mouseMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_mouseMoveEvent
func miqt_exec_callback_QQuickItem_mouseMoveEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_MouseMoveEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_MouseReleaseEvent(event *qt.QMouseEvent) {

	C.QQuickItem_virtualbase_mouseReleaseEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnMouseReleaseEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickItem_override_virtual_mouseReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_mouseReleaseEvent
func miqt_exec_callback_QQuickItem_mouseReleaseEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_MouseReleaseEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_MouseDoubleClickEvent(event *qt.QMouseEvent) {

	C.QQuickItem_virtualbase_mouseDoubleClickEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnMouseDoubleClickEvent(slot func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent)) {
	ok := C.QQuickItem_override_virtual_mouseDoubleClickEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_mouseDoubleClickEvent
func miqt_exec_callback_QQuickItem_mouseDoubleClickEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QMouseEvent), event *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_MouseDoubleClickEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_MouseUngrabEvent() {

	C.QQuickItem_virtualbase_mouseUngrabEvent(unsafe.Pointer(this.h))

}
func (this *QQuickItem) OnMouseUngrabEvent(slot func(super func())) {
	ok := C.QQuickItem_override_virtual_mouseUngrabEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_mouseUngrabEvent
func miqt_exec_callback_QQuickItem_mouseUngrabEvent(self *C.QQuickItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickItem{h: self}).callVirtualBase_MouseUngrabEvent)

}

func (this *QQuickItem) callVirtualBase_TouchUngrabEvent() {

	C.QQuickItem_virtualbase_touchUngrabEvent(unsafe.Pointer(this.h))

}
func (this *QQuickItem) OnTouchUngrabEvent(slot func(super func())) {
	ok := C.QQuickItem_override_virtual_touchUngrabEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_touchUngrabEvent
func miqt_exec_callback_QQuickItem_touchUngrabEvent(self *C.QQuickItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickItem{h: self}).callVirtualBase_TouchUngrabEvent)

}

func (this *QQuickItem) callVirtualBase_WheelEvent(event *qt.QWheelEvent) {

	C.QQuickItem_virtualbase_wheelEvent(unsafe.Pointer(this.h), (*C.QWheelEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnWheelEvent(slot func(super func(event *qt.QWheelEvent), event *qt.QWheelEvent)) {
	ok := C.QQuickItem_override_virtual_wheelEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_wheelEvent
func miqt_exec_callback_QQuickItem_wheelEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QWheelEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QWheelEvent), event *qt.QWheelEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQWheelEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_WheelEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_TouchEvent(event *qt.QTouchEvent) {

	C.QQuickItem_virtualbase_touchEvent(unsafe.Pointer(this.h), (*C.QTouchEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnTouchEvent(slot func(super func(event *qt.QTouchEvent), event *qt.QTouchEvent)) {
	ok := C.QQuickItem_override_virtual_touchEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_touchEvent
func miqt_exec_callback_QQuickItem_touchEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QTouchEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTouchEvent), event *qt.QTouchEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTouchEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_TouchEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_HoverEnterEvent(event *qt.QHoverEvent) {

	C.QQuickItem_virtualbase_hoverEnterEvent(unsafe.Pointer(this.h), (*C.QHoverEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnHoverEnterEvent(slot func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent)) {
	ok := C.QQuickItem_override_virtual_hoverEnterEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_hoverEnterEvent
func miqt_exec_callback_QQuickItem_hoverEnterEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QHoverEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHoverEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_HoverEnterEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_HoverMoveEvent(event *qt.QHoverEvent) {

	C.QQuickItem_virtualbase_hoverMoveEvent(unsafe.Pointer(this.h), (*C.QHoverEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnHoverMoveEvent(slot func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent)) {
	ok := C.QQuickItem_override_virtual_hoverMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_hoverMoveEvent
func miqt_exec_callback_QQuickItem_hoverMoveEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QHoverEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHoverEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_HoverMoveEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_HoverLeaveEvent(event *qt.QHoverEvent) {

	C.QQuickItem_virtualbase_hoverLeaveEvent(unsafe.Pointer(this.h), (*C.QHoverEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnHoverLeaveEvent(slot func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent)) {
	ok := C.QQuickItem_override_virtual_hoverLeaveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_hoverLeaveEvent
func miqt_exec_callback_QQuickItem_hoverLeaveEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QHoverEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QHoverEvent), event *qt.QHoverEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHoverEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_HoverLeaveEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_DragEnterEvent(param1 *qt.QDragEnterEvent) {

	C.QQuickItem_virtualbase_dragEnterEvent(unsafe.Pointer(this.h), (*C.QDragEnterEvent)(param1.UnsafePointer()))

}
func (this *QQuickItem) OnDragEnterEvent(slot func(super func(param1 *qt.QDragEnterEvent), param1 *qt.QDragEnterEvent)) {
	ok := C.QQuickItem_override_virtual_dragEnterEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_dragEnterEvent
func miqt_exec_callback_QQuickItem_dragEnterEvent(self *C.QQuickItem, cb C.intptr_t, param1 *C.QDragEnterEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDragEnterEvent), param1 *qt.QDragEnterEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDragEnterEvent(unsafe.Pointer(param1))

	gofunc((&QQuickItem{h: self}).callVirtualBase_DragEnterEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_DragMoveEvent(param1 *qt.QDragMoveEvent) {

	C.QQuickItem_virtualbase_dragMoveEvent(unsafe.Pointer(this.h), (*C.QDragMoveEvent)(param1.UnsafePointer()))

}
func (this *QQuickItem) OnDragMoveEvent(slot func(super func(param1 *qt.QDragMoveEvent), param1 *qt.QDragMoveEvent)) {
	ok := C.QQuickItem_override_virtual_dragMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_dragMoveEvent
func miqt_exec_callback_QQuickItem_dragMoveEvent(self *C.QQuickItem, cb C.intptr_t, param1 *C.QDragMoveEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDragMoveEvent), param1 *qt.QDragMoveEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDragMoveEvent(unsafe.Pointer(param1))

	gofunc((&QQuickItem{h: self}).callVirtualBase_DragMoveEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_DragLeaveEvent(param1 *qt.QDragLeaveEvent) {

	C.QQuickItem_virtualbase_dragLeaveEvent(unsafe.Pointer(this.h), (*C.QDragLeaveEvent)(param1.UnsafePointer()))

}
func (this *QQuickItem) OnDragLeaveEvent(slot func(super func(param1 *qt.QDragLeaveEvent), param1 *qt.QDragLeaveEvent)) {
	ok := C.QQuickItem_override_virtual_dragLeaveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_dragLeaveEvent
func miqt_exec_callback_QQuickItem_dragLeaveEvent(self *C.QQuickItem, cb C.intptr_t, param1 *C.QDragLeaveEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDragLeaveEvent), param1 *qt.QDragLeaveEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDragLeaveEvent(unsafe.Pointer(param1))

	gofunc((&QQuickItem{h: self}).callVirtualBase_DragLeaveEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_DropEvent(param1 *qt.QDropEvent) {

	C.QQuickItem_virtualbase_dropEvent(unsafe.Pointer(this.h), (*C.QDropEvent)(param1.UnsafePointer()))

}
func (this *QQuickItem) OnDropEvent(slot func(super func(param1 *qt.QDropEvent), param1 *qt.QDropEvent)) {
	ok := C.QQuickItem_override_virtual_dropEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_dropEvent
func miqt_exec_callback_QQuickItem_dropEvent(self *C.QQuickItem, cb C.intptr_t, param1 *C.QDropEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QDropEvent), param1 *qt.QDropEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQDropEvent(unsafe.Pointer(param1))

	gofunc((&QQuickItem{h: self}).callVirtualBase_DropEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_ChildMouseEventFilter(param1 *QQuickItem, param2 *qt.QEvent) bool {

	return (bool)(C.QQuickItem_virtualbase_childMouseEventFilter(unsafe.Pointer(this.h), param1.cPointer(), (*C.QEvent)(param2.UnsafePointer())))

}
func (this *QQuickItem) OnChildMouseEventFilter(slot func(super func(param1 *QQuickItem, param2 *qt.QEvent) bool, param1 *QQuickItem, param2 *qt.QEvent) bool) {
	ok := C.QQuickItem_override_virtual_childMouseEventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_childMouseEventFilter
func miqt_exec_callback_QQuickItem_childMouseEventFilter(self *C.QQuickItem, cb C.intptr_t, param1 *C.QQuickItem, param2 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *QQuickItem, param2 *qt.QEvent) bool, param1 *QQuickItem, param2 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQuickItem(param1)

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(param2))

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_ChildMouseEventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickItem) callVirtualBase_WindowDeactivateEvent() {

	C.QQuickItem_virtualbase_windowDeactivateEvent(unsafe.Pointer(this.h))

}
func (this *QQuickItem) OnWindowDeactivateEvent(slot func(super func())) {
	ok := C.QQuickItem_override_virtual_windowDeactivateEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_windowDeactivateEvent
func miqt_exec_callback_QQuickItem_windowDeactivateEvent(self *C.QQuickItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickItem{h: self}).callVirtualBase_WindowDeactivateEvent)

}

func (this *QQuickItem) callVirtualBase_GeometryChanged(newGeometry *qt.QRectF, oldGeometry *qt.QRectF) {

	C.QQuickItem_virtualbase_geometryChanged(unsafe.Pointer(this.h), (*C.QRectF)(newGeometry.UnsafePointer()), (*C.QRectF)(oldGeometry.UnsafePointer()))

}
func (this *QQuickItem) OnGeometryChanged(slot func(super func(newGeometry *qt.QRectF, oldGeometry *qt.QRectF), newGeometry *qt.QRectF, oldGeometry *qt.QRectF)) {
	ok := C.QQuickItem_override_virtual_geometryChanged(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_geometryChanged
func miqt_exec_callback_QQuickItem_geometryChanged(self *C.QQuickItem, cb C.intptr_t, newGeometry *C.QRectF, oldGeometry *C.QRectF) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(newGeometry *qt.QRectF, oldGeometry *qt.QRectF), newGeometry *qt.QRectF, oldGeometry *qt.QRectF))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQRectF(unsafe.Pointer(newGeometry))

	slotval2 := qt.UnsafeNewQRectF(unsafe.Pointer(oldGeometry))

	gofunc((&QQuickItem{h: self}).callVirtualBase_GeometryChanged, slotval1, slotval2)

}

func (this *QQuickItem) callVirtualBase_UpdatePaintNode(param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode {

	return newQSGNode(C.QQuickItem_virtualbase_updatePaintNode(unsafe.Pointer(this.h), param1.cPointer(), param2.cPointer()))

}
func (this *QQuickItem) OnUpdatePaintNode(slot func(super func(param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode, param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode) {
	ok := C.QQuickItem_override_virtual_updatePaintNode(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_updatePaintNode
func miqt_exec_callback_QQuickItem_updatePaintNode(self *C.QQuickItem, cb C.intptr_t, param1 *C.QSGNode, param2 *C.QQuickItem__UpdatePaintNodeData) *C.QSGNode {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode, param1 *QSGNode, param2 *QQuickItem__UpdatePaintNodeData) *QSGNode)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQSGNode(param1)

	slotval2 := newQQuickItem__UpdatePaintNodeData(param2)

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_UpdatePaintNode, slotval1, slotval2)

	return virtualReturn.cPointer()

}

func (this *QQuickItem) callVirtualBase_ReleaseResources() {

	C.QQuickItem_virtualbase_releaseResources(unsafe.Pointer(this.h))

}
func (this *QQuickItem) OnReleaseResources(slot func(super func())) {
	ok := C.QQuickItem_override_virtual_releaseResources(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_releaseResources
func miqt_exec_callback_QQuickItem_releaseResources(self *C.QQuickItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickItem{h: self}).callVirtualBase_ReleaseResources)

}

func (this *QQuickItem) callVirtualBase_UpdatePolish() {

	C.QQuickItem_virtualbase_updatePolish(unsafe.Pointer(this.h))

}
func (this *QQuickItem) OnUpdatePolish(slot func(super func())) {
	ok := C.QQuickItem_override_virtual_updatePolish(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_updatePolish
func miqt_exec_callback_QQuickItem_updatePolish(self *C.QQuickItem, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQuickItem{h: self}).callVirtualBase_UpdatePolish)

}

func (this *QQuickItem) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQuickItem_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickItem) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQuickItem_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_eventFilter
func miqt_exec_callback_QQuickItem_eventFilter(self *C.QQuickItem, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickItem{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickItem) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQuickItem_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQuickItem_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_timerEvent
func miqt_exec_callback_QQuickItem_timerEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQuickItem_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQuickItem_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_childEvent
func miqt_exec_callback_QQuickItem_childEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQuickItem_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQuickItem) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQuickItem_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_customEvent
func miqt_exec_callback_QQuickItem_customEvent(self *C.QQuickItem, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQuickItem{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQuickItem) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQuickItem_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickItem) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickItem_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_connectNotify
func miqt_exec_callback_QQuickItem_connectNotify(self *C.QQuickItem, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickItem{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQuickItem) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQuickItem_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickItem) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickItem_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickItem_disconnectNotify
func miqt_exec_callback_QQuickItem_disconnectNotify(self *C.QQuickItem, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickItem{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQuickItem) Delete() {
	C.QQuickItem_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickItem) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickItem) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQuickItem__ItemChangeData struct {
	h *C.QQuickItem__ItemChangeData
}

func (this *QQuickItem__ItemChangeData) cPointer() *C.QQuickItem__ItemChangeData {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickItem__ItemChangeData) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickItem__ItemChangeData constructs the type using only CGO pointers.
func newQQuickItem__ItemChangeData(h *C.QQuickItem__ItemChangeData) *QQuickItem__ItemChangeData {
	if h == nil {
		return nil
	}

	return &QQuickItem__ItemChangeData{h: h}
}

// UnsafeNewQQuickItem__ItemChangeData constructs the type using only unsafe pointers.
func UnsafeNewQQuickItem__ItemChangeData(h unsafe.Pointer) *QQuickItem__ItemChangeData {
	return newQQuickItem__ItemChangeData((*C.QQuickItem__ItemChangeData)(h))
}

// NewQQuickItem__ItemChangeData constructs a new QQuickItem::ItemChangeData object.
func NewQQuickItem__ItemChangeData(v *QQuickItem) *QQuickItem__ItemChangeData {

	return newQQuickItem__ItemChangeData(C.QQuickItem__ItemChangeData_new(v.cPointer()))
}

// NewQQuickItem__ItemChangeData2 constructs a new QQuickItem::ItemChangeData object.
func NewQQuickItem__ItemChangeData2(v *QQuickWindow) *QQuickItem__ItemChangeData {

	return newQQuickItem__ItemChangeData(C.QQuickItem__ItemChangeData_new2(v.cPointer()))
}

// NewQQuickItem__ItemChangeData3 constructs a new QQuickItem::ItemChangeData object.
func NewQQuickItem__ItemChangeData3(v float64) *QQuickItem__ItemChangeData {

	return newQQuickItem__ItemChangeData(C.QQuickItem__ItemChangeData_new3((C.double)(v)))
}

// NewQQuickItem__ItemChangeData4 constructs a new QQuickItem::ItemChangeData object.
func NewQQuickItem__ItemChangeData4(v bool) *QQuickItem__ItemChangeData {

	return newQQuickItem__ItemChangeData(C.QQuickItem__ItemChangeData_new4((C.bool)(v)))
}

// Delete this object from C++ memory.
func (this *QQuickItem__ItemChangeData) Delete() {
	C.QQuickItem__ItemChangeData_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickItem__ItemChangeData) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickItem__ItemChangeData) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQuickItem__UpdatePaintNodeData struct {
	h *C.QQuickItem__UpdatePaintNodeData
}

func (this *QQuickItem__UpdatePaintNodeData) cPointer() *C.QQuickItem__UpdatePaintNodeData {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickItem__UpdatePaintNodeData) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickItem__UpdatePaintNodeData constructs the type using only CGO pointers.
func newQQuickItem__UpdatePaintNodeData(h *C.QQuickItem__UpdatePaintNodeData) *QQuickItem__UpdatePaintNodeData {
	if h == nil {
		return nil
	}

	return &QQuickItem__UpdatePaintNodeData{h: h}
}

// UnsafeNewQQuickItem__UpdatePaintNodeData constructs the type using only unsafe pointers.
func UnsafeNewQQuickItem__UpdatePaintNodeData(h unsafe.Pointer) *QQuickItem__UpdatePaintNodeData {
	return newQQuickItem__UpdatePaintNodeData((*C.QQuickItem__UpdatePaintNodeData)(h))
}

// Delete this object from C++ memory.
func (this *QQuickItem__UpdatePaintNodeData) Delete() {
	C.QQuickItem__UpdatePaintNodeData_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickItem__UpdatePaintNodeData) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickItem__UpdatePaintNodeData) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
