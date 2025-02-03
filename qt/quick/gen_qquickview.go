package quick

/*

#include "gen_qquickview.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQuickView__ResizeMode int

const (
	QQuickView__SizeViewToRootObject QQuickView__ResizeMode = 0
	QQuickView__SizeRootObjectToView QQuickView__ResizeMode = 1
)

type QQuickView__Status int

const (
	QQuickView__Null    QQuickView__Status = 0
	QQuickView__Ready   QQuickView__Status = 1
	QQuickView__Loading QQuickView__Status = 2
	QQuickView__Error   QQuickView__Status = 3
)

type QQuickView struct {
	h *C.QQuickView
	*QQuickWindow
}

func (this *QQuickView) cPointer() *C.QQuickView {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickView) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickView constructs the type using only CGO pointers.
func newQQuickView(h *C.QQuickView) *QQuickView {
	if h == nil {
		return nil
	}
	var outptr_QQuickWindow *C.QQuickWindow = nil
	C.QQuickView_virtbase(h, &outptr_QQuickWindow)

	return &QQuickView{h: h,
		QQuickWindow: newQQuickWindow(outptr_QQuickWindow)}
}

// UnsafeNewQQuickView constructs the type using only unsafe pointers.
func UnsafeNewQQuickView(h unsafe.Pointer) *QQuickView {
	return newQQuickView((*C.QQuickView)(h))
}

// NewQQuickView constructs a new QQuickView object.
func NewQQuickView() *QQuickView {

	return newQQuickView(C.QQuickView_new())
}

// NewQQuickView2 constructs a new QQuickView object.
func NewQQuickView2(engine *QQmlEngine, parent *qt.QWindow) *QQuickView {

	return newQQuickView(C.QQuickView_new2(engine.cPointer(), (*C.QWindow)(parent.UnsafePointer())))
}

// NewQQuickView3 constructs a new QQuickView object.
func NewQQuickView3(source *qt.QUrl) *QQuickView {

	return newQQuickView(C.QQuickView_new3((*C.QUrl)(source.UnsafePointer())))
}

// NewQQuickView4 constructs a new QQuickView object.
func NewQQuickView4(source *qt.QUrl, renderControl *QQuickRenderControl) *QQuickView {

	return newQQuickView(C.QQuickView_new4((*C.QUrl)(source.UnsafePointer()), renderControl.cPointer()))
}

// NewQQuickView5 constructs a new QQuickView object.
func NewQQuickView5(parent *qt.QWindow) *QQuickView {

	return newQQuickView(C.QQuickView_new5((*C.QWindow)(parent.UnsafePointer())))
}

// NewQQuickView6 constructs a new QQuickView object.
func NewQQuickView6(source *qt.QUrl, parent *qt.QWindow) *QQuickView {

	return newQQuickView(C.QQuickView_new6((*C.QUrl)(source.UnsafePointer()), (*C.QWindow)(parent.UnsafePointer())))
}

func (this *QQuickView) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickView_metaObject(this.h)))
}

func (this *QQuickView) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickView_metacast(this.h, param1_Cstring))
}

func (this *QQuickView) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickView_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickView_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickView_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickView_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickView_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickView) Source() *qt.QUrl {
	_goptr := qt.UnsafeNewQUrl(unsafe.Pointer(C.QQuickView_source(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickView) Engine() *QQmlEngine {
	return newQQmlEngine(C.QQuickView_engine(this.h))
}

func (this *QQuickView) RootContext() *QQmlContext {
	return newQQmlContext(C.QQuickView_rootContext(this.h))
}

func (this *QQuickView) RootObject() *QQuickItem {
	return newQQuickItem(C.QQuickView_rootObject(this.h))
}

func (this *QQuickView) ResizeMode() QQuickView__ResizeMode {
	return (QQuickView__ResizeMode)(C.QQuickView_resizeMode(this.h))
}

func (this *QQuickView) SetResizeMode(resizeMode QQuickView__ResizeMode) {
	C.QQuickView_setResizeMode(this.h, (C.int)(resizeMode))
}

func (this *QQuickView) Status() QQuickView__Status {
	return (QQuickView__Status)(C.QQuickView_status(this.h))
}

func (this *QQuickView) Errors() []QQmlError {
	var _ma C.struct_miqt_array = C.QQuickView_errors(this.h)
	_ret := make([]QQmlError, int(_ma.len))
	_outCast := (*[0xffff]*C.QQmlError)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_lv_goptr := newQQmlError(_outCast[i])
		_lv_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
		_ret[i] = *_lv_goptr
	}
	return _ret
}

func (this *QQuickView) SizeHint() *qt.QSize {
	_goptr := qt.UnsafeNewQSize(unsafe.Pointer(C.QQuickView_sizeHint(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickView) InitialSize() *qt.QSize {
	_goptr := qt.UnsafeNewQSize(unsafe.Pointer(C.QQuickView_initialSize(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickView) SetSource(source *qt.QUrl) {
	C.QQuickView_setSource(this.h, (*C.QUrl)(source.UnsafePointer()))
}

func (this *QQuickView) SetInitialProperties(initialProperties map[string]qt.QVariant) {
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
	C.QQuickView_setInitialProperties(this.h, initialProperties_mm)
}

func (this *QQuickView) SetContent(url *qt.QUrl, component *QQmlComponent, item *qt.QObject) {
	C.QQuickView_setContent(this.h, (*C.QUrl)(url.UnsafePointer()), component.cPointer(), (*C.QObject)(item.UnsafePointer()))
}

func (this *QQuickView) StatusChanged(param1 QQuickView__Status) {
	C.QQuickView_statusChanged(this.h, (C.int)(param1))
}
func (this *QQuickView) OnStatusChanged(slot func(param1 QQuickView__Status)) {
	C.QQuickView_connect_statusChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickView_statusChanged
func miqt_exec_callback_QQuickView_statusChanged(cb C.intptr_t, param1 C.int) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 QQuickView__Status))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QQuickView__Status)(param1)

	gofunc(slotval1)
}

func QQuickView_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickView_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickView_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickView_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickView_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickView_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickView_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickView_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickView) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQuickView_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQuickView) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQuickView_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_metacall
func miqt_exec_callback_QQuickView_metacall(self *C.QQuickView, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQuickView{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQuickView) callVirtualBase_ResizeEvent(param1 *qt.QResizeEvent) {

	C.QQuickView_virtualbase_resizeEvent(unsafe.Pointer(this.h), (*C.QResizeEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnResizeEvent(slot func(super func(param1 *qt.QResizeEvent), param1 *qt.QResizeEvent)) {
	ok := C.QQuickView_override_virtual_resizeEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_resizeEvent
func miqt_exec_callback_QQuickView_resizeEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QResizeEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QResizeEvent), param1 *qt.QResizeEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQResizeEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_ResizeEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_TimerEvent(param1 *qt.QTimerEvent) {

	C.QQuickView_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnTimerEvent(slot func(super func(param1 *qt.QTimerEvent), param1 *qt.QTimerEvent)) {
	ok := C.QQuickView_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_timerEvent
func miqt_exec_callback_QQuickView_timerEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QTimerEvent), param1 *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_KeyPressEvent(param1 *qt.QKeyEvent) {

	C.QQuickView_virtualbase_keyPressEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnKeyPressEvent(slot func(super func(param1 *qt.QKeyEvent), param1 *qt.QKeyEvent)) {
	ok := C.QQuickView_override_virtual_keyPressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_keyPressEvent
func miqt_exec_callback_QQuickView_keyPressEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QKeyEvent), param1 *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_KeyPressEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_KeyReleaseEvent(param1 *qt.QKeyEvent) {

	C.QQuickView_virtualbase_keyReleaseEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnKeyReleaseEvent(slot func(super func(param1 *qt.QKeyEvent), param1 *qt.QKeyEvent)) {
	ok := C.QQuickView_override_virtual_keyReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_keyReleaseEvent
func miqt_exec_callback_QQuickView_keyReleaseEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QKeyEvent), param1 *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_KeyReleaseEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_MousePressEvent(param1 *qt.QMouseEvent) {

	C.QQuickView_virtualbase_mousePressEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnMousePressEvent(slot func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent)) {
	ok := C.QQuickView_override_virtual_mousePressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_mousePressEvent
func miqt_exec_callback_QQuickView_mousePressEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_MousePressEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_MouseReleaseEvent(param1 *qt.QMouseEvent) {

	C.QQuickView_virtualbase_mouseReleaseEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnMouseReleaseEvent(slot func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent)) {
	ok := C.QQuickView_override_virtual_mouseReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_mouseReleaseEvent
func miqt_exec_callback_QQuickView_mouseReleaseEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_MouseReleaseEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_MouseMoveEvent(param1 *qt.QMouseEvent) {

	C.QQuickView_virtualbase_mouseMoveEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnMouseMoveEvent(slot func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent)) {
	ok := C.QQuickView_override_virtual_mouseMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_mouseMoveEvent
func miqt_exec_callback_QQuickView_mouseMoveEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_MouseMoveEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_FocusObject() *qt.QObject {

	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQuickView_virtualbase_focusObject(unsafe.Pointer(this.h))))

}
func (this *QQuickView) OnFocusObject(slot func(super func() *qt.QObject) *qt.QObject) {
	ok := C.QQuickView_override_virtual_focusObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_focusObject
func miqt_exec_callback_QQuickView_focusObject(self *C.QQuickView, cb C.intptr_t) *C.QObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QObject) *qt.QObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickView{h: self}).callVirtualBase_FocusObject)

	return (*C.QObject)(virtualReturn.UnsafePointer())

}

func (this *QQuickView) callVirtualBase_AccessibleRoot() *qt.QAccessibleInterface {

	return qt.UnsafeNewQAccessibleInterface(unsafe.Pointer(C.QQuickView_virtualbase_accessibleRoot(unsafe.Pointer(this.h))))

}
func (this *QQuickView) OnAccessibleRoot(slot func(super func() *qt.QAccessibleInterface) *qt.QAccessibleInterface) {
	ok := C.QQuickView_override_virtual_accessibleRoot(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_accessibleRoot
func miqt_exec_callback_QQuickView_accessibleRoot(self *C.QQuickView, cb C.intptr_t) *C.QAccessibleInterface {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QAccessibleInterface) *qt.QAccessibleInterface)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickView{h: self}).callVirtualBase_AccessibleRoot)

	return (*C.QAccessibleInterface)(virtualReturn.UnsafePointer())

}

func (this *QQuickView) callVirtualBase_ExposeEvent(param1 *qt.QExposeEvent) {

	C.QQuickView_virtualbase_exposeEvent(unsafe.Pointer(this.h), (*C.QExposeEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnExposeEvent(slot func(super func(param1 *qt.QExposeEvent), param1 *qt.QExposeEvent)) {
	ok := C.QQuickView_override_virtual_exposeEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_exposeEvent
func miqt_exec_callback_QQuickView_exposeEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QExposeEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QExposeEvent), param1 *qt.QExposeEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQExposeEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_ExposeEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_ShowEvent(param1 *qt.QShowEvent) {

	C.QQuickView_virtualbase_showEvent(unsafe.Pointer(this.h), (*C.QShowEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnShowEvent(slot func(super func(param1 *qt.QShowEvent), param1 *qt.QShowEvent)) {
	ok := C.QQuickView_override_virtual_showEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_showEvent
func miqt_exec_callback_QQuickView_showEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QShowEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QShowEvent), param1 *qt.QShowEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQShowEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_ShowEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_HideEvent(param1 *qt.QHideEvent) {

	C.QQuickView_virtualbase_hideEvent(unsafe.Pointer(this.h), (*C.QHideEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnHideEvent(slot func(super func(param1 *qt.QHideEvent), param1 *qt.QHideEvent)) {
	ok := C.QQuickView_override_virtual_hideEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_hideEvent
func miqt_exec_callback_QQuickView_hideEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QHideEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QHideEvent), param1 *qt.QHideEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHideEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_HideEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_FocusInEvent(param1 *qt.QFocusEvent) {

	C.QQuickView_virtualbase_focusInEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnFocusInEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickView_override_virtual_focusInEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_focusInEvent
func miqt_exec_callback_QQuickView_focusInEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_FocusInEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_FocusOutEvent(param1 *qt.QFocusEvent) {

	C.QQuickView_virtualbase_focusOutEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnFocusOutEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickView_override_virtual_focusOutEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_focusOutEvent
func miqt_exec_callback_QQuickView_focusOutEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_FocusOutEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_Event(param1 *qt.QEvent) bool {

	return (bool)(C.QQuickView_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(param1.UnsafePointer())))

}
func (this *QQuickView) OnEvent(slot func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool) {
	ok := C.QQuickView_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_event
func miqt_exec_callback_QQuickView_event(self *C.QQuickView, cb C.intptr_t, param1 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(param1))

	virtualReturn := gofunc((&QQuickView{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickView) callVirtualBase_MouseDoubleClickEvent(param1 *qt.QMouseEvent) {

	C.QQuickView_virtualbase_mouseDoubleClickEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnMouseDoubleClickEvent(slot func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent)) {
	ok := C.QQuickView_override_virtual_mouseDoubleClickEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_mouseDoubleClickEvent
func miqt_exec_callback_QQuickView_mouseDoubleClickEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_MouseDoubleClickEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_WheelEvent(param1 *qt.QWheelEvent) {

	C.QQuickView_virtualbase_wheelEvent(unsafe.Pointer(this.h), (*C.QWheelEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnWheelEvent(slot func(super func(param1 *qt.QWheelEvent), param1 *qt.QWheelEvent)) {
	ok := C.QQuickView_override_virtual_wheelEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_wheelEvent
func miqt_exec_callback_QQuickView_wheelEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QWheelEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QWheelEvent), param1 *qt.QWheelEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQWheelEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_WheelEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_TabletEvent(param1 *qt.QTabletEvent) {

	C.QQuickView_virtualbase_tabletEvent(unsafe.Pointer(this.h), (*C.QTabletEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnTabletEvent(slot func(super func(param1 *qt.QTabletEvent), param1 *qt.QTabletEvent)) {
	ok := C.QQuickView_override_virtual_tabletEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_tabletEvent
func miqt_exec_callback_QQuickView_tabletEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QTabletEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QTabletEvent), param1 *qt.QTabletEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTabletEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_TabletEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_SurfaceType() qt.QSurface__SurfaceType {

	return (qt.QSurface__SurfaceType)(C.QQuickView_virtualbase_surfaceType(unsafe.Pointer(this.h)))

}
func (this *QQuickView) OnSurfaceType(slot func(super func() qt.QSurface__SurfaceType) qt.QSurface__SurfaceType) {
	ok := C.QQuickView_override_virtual_surfaceType(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_surfaceType
func miqt_exec_callback_QQuickView_surfaceType(self *C.QQuickView, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() qt.QSurface__SurfaceType) qt.QSurface__SurfaceType)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickView{h: self}).callVirtualBase_SurfaceType)

	return (C.int)(virtualReturn)

}

func (this *QQuickView) callVirtualBase_Format() *qt.QSurfaceFormat {

	_goptr := qt.UnsafeNewQSurfaceFormat(unsafe.Pointer(C.QQuickView_virtualbase_format(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickView) OnFormat(slot func(super func() *qt.QSurfaceFormat) *qt.QSurfaceFormat) {
	ok := C.QQuickView_override_virtual_format(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_format
func miqt_exec_callback_QQuickView_format(self *C.QQuickView, cb C.intptr_t) *C.QSurfaceFormat {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QSurfaceFormat) *qt.QSurfaceFormat)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickView{h: self}).callVirtualBase_Format)

	return (*C.QSurfaceFormat)(virtualReturn.UnsafePointer())

}

func (this *QQuickView) callVirtualBase_Size() *qt.QSize {

	_goptr := qt.UnsafeNewQSize(unsafe.Pointer(C.QQuickView_virtualbase_size(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickView) OnSize(slot func(super func() *qt.QSize) *qt.QSize) {
	ok := C.QQuickView_override_virtual_size(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_size
func miqt_exec_callback_QQuickView_size(self *C.QQuickView, cb C.intptr_t) *C.QSize {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QSize) *qt.QSize)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickView{h: self}).callVirtualBase_Size)

	return (*C.QSize)(virtualReturn.UnsafePointer())

}

func (this *QQuickView) callVirtualBase_MoveEvent(param1 *qt.QMoveEvent) {

	C.QQuickView_virtualbase_moveEvent(unsafe.Pointer(this.h), (*C.QMoveEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnMoveEvent(slot func(super func(param1 *qt.QMoveEvent), param1 *qt.QMoveEvent)) {
	ok := C.QQuickView_override_virtual_moveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_moveEvent
func miqt_exec_callback_QQuickView_moveEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QMoveEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMoveEvent), param1 *qt.QMoveEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMoveEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_MoveEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_TouchEvent(param1 *qt.QTouchEvent) {

	C.QQuickView_virtualbase_touchEvent(unsafe.Pointer(this.h), (*C.QTouchEvent)(param1.UnsafePointer()))

}
func (this *QQuickView) OnTouchEvent(slot func(super func(param1 *qt.QTouchEvent), param1 *qt.QTouchEvent)) {
	ok := C.QQuickView_override_virtual_touchEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_touchEvent
func miqt_exec_callback_QQuickView_touchEvent(self *C.QQuickView, cb C.intptr_t, param1 *C.QTouchEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QTouchEvent), param1 *qt.QTouchEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTouchEvent(unsafe.Pointer(param1))

	gofunc((&QQuickView{h: self}).callVirtualBase_TouchEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_NativeEvent(eventType []byte, message unsafe.Pointer, result *int64) bool {
	eventType_alias := C.struct_miqt_string{}
	if len(eventType) > 0 {
		eventType_alias.data = (*C.char)(unsafe.Pointer(&eventType[0]))
	} else {
		eventType_alias.data = (*C.char)(unsafe.Pointer(nil))
	}
	eventType_alias.len = C.size_t(len(eventType))

	return (bool)(C.QQuickView_virtualbase_nativeEvent(unsafe.Pointer(this.h), eventType_alias, message, (*C.long)(unsafe.Pointer(result))))

}
func (this *QQuickView) OnNativeEvent(slot func(super func(eventType []byte, message unsafe.Pointer, result *int64) bool, eventType []byte, message unsafe.Pointer, result *int64) bool) {
	ok := C.QQuickView_override_virtual_nativeEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_nativeEvent
func miqt_exec_callback_QQuickView_nativeEvent(self *C.QQuickView, cb C.intptr_t, eventType C.struct_miqt_string, message unsafe.Pointer, result *C.long) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(eventType []byte, message unsafe.Pointer, result *int64) bool, eventType []byte, message unsafe.Pointer, result *int64) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var eventType_bytearray C.struct_miqt_string = eventType
	eventType_ret := C.GoBytes(unsafe.Pointer(eventType_bytearray.data), C.int(int64(eventType_bytearray.len)))
	C.free(unsafe.Pointer(eventType_bytearray.data))
	slotval1 := eventType_ret
	slotval2 := (unsafe.Pointer)(message)

	slotval3 := (*int64)(unsafe.Pointer(result))

	virtualReturn := gofunc((&QQuickView{h: self}).callVirtualBase_NativeEvent, slotval1, slotval2, slotval3)

	return (C.bool)(virtualReturn)

}

func (this *QQuickView) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQuickView_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickView) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQuickView_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_eventFilter
func miqt_exec_callback_QQuickView_eventFilter(self *C.QQuickView, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickView{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickView) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQuickView_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQuickView) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQuickView_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_childEvent
func miqt_exec_callback_QQuickView_childEvent(self *C.QQuickView, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQuickView{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQuickView_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQuickView) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQuickView_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_customEvent
func miqt_exec_callback_QQuickView_customEvent(self *C.QQuickView, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQuickView{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQuickView) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQuickView_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickView) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickView_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_connectNotify
func miqt_exec_callback_QQuickView_connectNotify(self *C.QQuickView, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickView{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQuickView) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQuickView_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickView) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickView_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickView_disconnectNotify
func miqt_exec_callback_QQuickView_disconnectNotify(self *C.QQuickView, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickView{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQuickView) Delete() {
	C.QQuickView_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickView) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickView) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
