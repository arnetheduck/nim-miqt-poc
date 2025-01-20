package quick

/*

#include "gen_qjsengine.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QJSEngine__Extension int

const (
	QJSEngine__TranslationExtension       QJSEngine__Extension = 1
	QJSEngine__ConsoleExtension           QJSEngine__Extension = 2
	QJSEngine__GarbageCollectionExtension QJSEngine__Extension = 4
)

type QJSEngine struct {
	h *C.QJSEngine
	*qt.QObject
}

func (this *QJSEngine) cPointer() *C.QJSEngine {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QJSEngine) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQJSEngine constructs the type using only CGO pointers.
func newQJSEngine(h *C.QJSEngine) *QJSEngine {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QJSEngine_virtbase(h, &outptr_QObject)

	return &QJSEngine{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQJSEngine constructs the type using only unsafe pointers.
func UnsafeNewQJSEngine(h unsafe.Pointer) *QJSEngine {
	return newQJSEngine((*C.QJSEngine)(h))
}

// NewQJSEngine constructs a new QJSEngine object.
func NewQJSEngine() *QJSEngine {

	return newQJSEngine(C.QJSEngine_new())
}

// NewQJSEngine2 constructs a new QJSEngine object.
func NewQJSEngine2(parent *qt.QObject) *QJSEngine {

	return newQJSEngine(C.QJSEngine_new2((*C.QObject)(parent.UnsafePointer())))
}

func (this *QJSEngine) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QJSEngine_metaObject(this.h)))
}

func (this *QJSEngine) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QJSEngine_metacast(this.h, param1_Cstring))
}

func (this *QJSEngine) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QJSEngine_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QJSEngine_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QJSEngine_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QJSEngine_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QJSEngine_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QJSEngine) GlobalObject() *QJSValue {
	_goptr := newQJSValue(C.QJSEngine_globalObject(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) Evaluate(program string) *QJSValue {
	program_ms := C.struct_miqt_string{}
	program_ms.data = C.CString(program)
	program_ms.len = C.size_t(len(program))
	defer C.free(unsafe.Pointer(program_ms.data))
	_goptr := newQJSValue(C.QJSEngine_evaluate(this.h, program_ms))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) ImportModule(fileName string) *QJSValue {
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))
	_goptr := newQJSValue(C.QJSEngine_importModule(this.h, fileName_ms))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) NewObject() *QJSValue {
	_goptr := newQJSValue(C.QJSEngine_newObject(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) NewArray() *QJSValue {
	_goptr := newQJSValue(C.QJSEngine_newArray(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) NewQObject(object *qt.QObject) *QJSValue {
	_goptr := newQJSValue(C.QJSEngine_newQObject(this.h, (*C.QObject)(object.UnsafePointer())))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) NewQMetaObject(metaObject *qt.QMetaObject) *QJSValue {
	_goptr := newQJSValue(C.QJSEngine_newQMetaObject(this.h, (*C.QMetaObject)(metaObject.UnsafePointer())))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) NewErrorObject(errorType QJSValue__ErrorType) *QJSValue {
	_goptr := newQJSValue(C.QJSEngine_newErrorObject(this.h, (C.int)(errorType)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) CollectGarbage() {
	C.QJSEngine_collectGarbage(this.h)
}

func (this *QJSEngine) InstallTranslatorFunctions() {
	C.QJSEngine_installTranslatorFunctions(this.h)
}

func (this *QJSEngine) InstallExtensions(extensions QJSEngine__Extension) {
	C.QJSEngine_installExtensions(this.h, (C.int)(extensions))
}

func (this *QJSEngine) SetInterrupted(interrupted bool) {
	C.QJSEngine_setInterrupted(this.h, (C.bool)(interrupted))
}

func (this *QJSEngine) IsInterrupted() bool {
	return (bool)(C.QJSEngine_isInterrupted(this.h))
}

func (this *QJSEngine) ThrowError(message string) {
	message_ms := C.struct_miqt_string{}
	message_ms.data = C.CString(message)
	message_ms.len = C.size_t(len(message))
	defer C.free(unsafe.Pointer(message_ms.data))
	C.QJSEngine_throwError(this.h, message_ms)
}

func (this *QJSEngine) ThrowErrorWithErrorType(errorType QJSValue__ErrorType) {
	C.QJSEngine_throwErrorWithErrorType(this.h, (C.int)(errorType))
}

func (this *QJSEngine) UiLanguage() string {
	var _ms C.struct_miqt_string = C.QJSEngine_uiLanguage(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QJSEngine) SetUiLanguage(language string) {
	language_ms := C.struct_miqt_string{}
	language_ms.data = C.CString(language)
	language_ms.len = C.size_t(len(language))
	defer C.free(unsafe.Pointer(language_ms.data))
	C.QJSEngine_setUiLanguage(this.h, language_ms)
}

func (this *QJSEngine) UiLanguageChanged() {
	C.QJSEngine_uiLanguageChanged(this.h)
}
func (this *QJSEngine) OnUiLanguageChanged(slot func()) {
	C.QJSEngine_connect_uiLanguageChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QJSEngine_uiLanguageChanged
func miqt_exec_callback_QJSEngine_uiLanguageChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QJSEngine_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QJSEngine_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QJSEngine_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QJSEngine_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QJSEngine_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QJSEngine_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QJSEngine_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QJSEngine_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QJSEngine) Evaluate2(program string, fileName string) *QJSValue {
	program_ms := C.struct_miqt_string{}
	program_ms.data = C.CString(program)
	program_ms.len = C.size_t(len(program))
	defer C.free(unsafe.Pointer(program_ms.data))
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))
	_goptr := newQJSValue(C.QJSEngine_evaluate2(this.h, program_ms, fileName_ms))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) Evaluate3(program string, fileName string, lineNumber int) *QJSValue {
	program_ms := C.struct_miqt_string{}
	program_ms.data = C.CString(program)
	program_ms.len = C.size_t(len(program))
	defer C.free(unsafe.Pointer(program_ms.data))
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))
	_goptr := newQJSValue(C.QJSEngine_evaluate3(this.h, program_ms, fileName_ms, (C.int)(lineNumber)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) NewArray1(length uint) *QJSValue {
	_goptr := newQJSValue(C.QJSEngine_newArray1(this.h, (C.uint)(length)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) NewErrorObject2(errorType QJSValue__ErrorType, message string) *QJSValue {
	message_ms := C.struct_miqt_string{}
	message_ms.data = C.CString(message)
	message_ms.len = C.size_t(len(message))
	defer C.free(unsafe.Pointer(message_ms.data))
	_goptr := newQJSValue(C.QJSEngine_newErrorObject2(this.h, (C.int)(errorType), message_ms))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QJSEngine) InstallTranslatorFunctions1(object *QJSValue) {
	C.QJSEngine_installTranslatorFunctions1(this.h, object.cPointer())
}

func (this *QJSEngine) InstallExtensions2(extensions QJSEngine__Extension, object *QJSValue) {
	C.QJSEngine_installExtensions2(this.h, (C.int)(extensions), object.cPointer())
}

func (this *QJSEngine) ThrowError2(errorType QJSValue__ErrorType, message string) {
	message_ms := C.struct_miqt_string{}
	message_ms.data = C.CString(message)
	message_ms.len = C.size_t(len(message))
	defer C.free(unsafe.Pointer(message_ms.data))
	C.QJSEngine_throwError2(this.h, (C.int)(errorType), message_ms)
}

func (this *QJSEngine) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QJSEngine_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QJSEngine) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QJSEngine_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_metaObject
func miqt_exec_callback_QJSEngine_metaObject(self *C.QJSEngine, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QJSEngine{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QJSEngine) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QJSEngine_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QJSEngine) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QJSEngine_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_metacast
func miqt_exec_callback_QJSEngine_metacast(self *C.QJSEngine, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QJSEngine{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QJSEngine) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QJSEngine_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QJSEngine) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QJSEngine_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_metacall
func miqt_exec_callback_QJSEngine_metacall(self *C.QJSEngine, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QJSEngine{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QJSEngine) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QJSEngine_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QJSEngine) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QJSEngine_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_event
func miqt_exec_callback_QJSEngine_event(self *C.QJSEngine, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QJSEngine{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QJSEngine) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QJSEngine_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QJSEngine) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QJSEngine_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_eventFilter
func miqt_exec_callback_QJSEngine_eventFilter(self *C.QJSEngine, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QJSEngine{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QJSEngine) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QJSEngine_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QJSEngine) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QJSEngine_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_timerEvent
func miqt_exec_callback_QJSEngine_timerEvent(self *C.QJSEngine, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QJSEngine{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QJSEngine) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QJSEngine_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QJSEngine) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QJSEngine_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_childEvent
func miqt_exec_callback_QJSEngine_childEvent(self *C.QJSEngine, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QJSEngine{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QJSEngine) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QJSEngine_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QJSEngine) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QJSEngine_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_customEvent
func miqt_exec_callback_QJSEngine_customEvent(self *C.QJSEngine, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QJSEngine{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QJSEngine) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QJSEngine_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QJSEngine) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QJSEngine_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_connectNotify
func miqt_exec_callback_QJSEngine_connectNotify(self *C.QJSEngine, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QJSEngine{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QJSEngine) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QJSEngine_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QJSEngine) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QJSEngine_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QJSEngine_disconnectNotify
func miqt_exec_callback_QJSEngine_disconnectNotify(self *C.QJSEngine, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QJSEngine{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QJSEngine) Delete() {
	C.QJSEngine_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QJSEngine) GoGC() {
	runtime.SetFinalizer(this, func(this *QJSEngine) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
