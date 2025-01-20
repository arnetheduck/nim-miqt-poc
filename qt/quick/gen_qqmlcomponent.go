package quick

/*

#include "gen_qqmlcomponent.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQmlComponent__CompilationMode int

const (
	QQmlComponent__PreferSynchronous QQmlComponent__CompilationMode = 0
	QQmlComponent__Asynchronous      QQmlComponent__CompilationMode = 1
)

type QQmlComponent__Status int

const (
	QQmlComponent__Null    QQmlComponent__Status = 0
	QQmlComponent__Ready   QQmlComponent__Status = 1
	QQmlComponent__Loading QQmlComponent__Status = 2
	QQmlComponent__Error   QQmlComponent__Status = 3
)

type QQmlComponent struct {
	h *C.QQmlComponent
	*qt.QObject
}

func (this *QQmlComponent) cPointer() *C.QQmlComponent {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQmlComponent) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQmlComponent constructs the type using only CGO pointers.
func newQQmlComponent(h *C.QQmlComponent) *QQmlComponent {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QQmlComponent_virtbase(h, &outptr_QObject)

	return &QQmlComponent{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQQmlComponent constructs the type using only unsafe pointers.
func UnsafeNewQQmlComponent(h unsafe.Pointer) *QQmlComponent {
	return newQQmlComponent((*C.QQmlComponent)(h))
}

// NewQQmlComponent constructs a new QQmlComponent object.
func NewQQmlComponent() *QQmlComponent {

	return newQQmlComponent(C.QQmlComponent_new())
}

// NewQQmlComponent2 constructs a new QQmlComponent object.
func NewQQmlComponent2(param1 *QQmlEngine) *QQmlComponent {

	return newQQmlComponent(C.QQmlComponent_new2(param1.cPointer()))
}

// NewQQmlComponent3 constructs a new QQmlComponent object.
func NewQQmlComponent3(param1 *QQmlEngine, fileName string) *QQmlComponent {
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))

	return newQQmlComponent(C.QQmlComponent_new3(param1.cPointer(), fileName_ms))
}

// NewQQmlComponent4 constructs a new QQmlComponent object.
func NewQQmlComponent4(param1 *QQmlEngine, fileName string, mode QQmlComponent__CompilationMode) *QQmlComponent {
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))

	return newQQmlComponent(C.QQmlComponent_new4(param1.cPointer(), fileName_ms, (C.int)(mode)))
}

// NewQQmlComponent5 constructs a new QQmlComponent object.
func NewQQmlComponent5(param1 *QQmlEngine, url *qt.QUrl) *QQmlComponent {

	return newQQmlComponent(C.QQmlComponent_new5(param1.cPointer(), (*C.QUrl)(url.UnsafePointer())))
}

// NewQQmlComponent6 constructs a new QQmlComponent object.
func NewQQmlComponent6(param1 *QQmlEngine, url *qt.QUrl, mode QQmlComponent__CompilationMode) *QQmlComponent {

	return newQQmlComponent(C.QQmlComponent_new6(param1.cPointer(), (*C.QUrl)(url.UnsafePointer()), (C.int)(mode)))
}

// NewQQmlComponent7 constructs a new QQmlComponent object.
func NewQQmlComponent7(parent *qt.QObject) *QQmlComponent {

	return newQQmlComponent(C.QQmlComponent_new7((*C.QObject)(parent.UnsafePointer())))
}

// NewQQmlComponent8 constructs a new QQmlComponent object.
func NewQQmlComponent8(param1 *QQmlEngine, parent *qt.QObject) *QQmlComponent {

	return newQQmlComponent(C.QQmlComponent_new8(param1.cPointer(), (*C.QObject)(parent.UnsafePointer())))
}

// NewQQmlComponent9 constructs a new QQmlComponent object.
func NewQQmlComponent9(param1 *QQmlEngine, fileName string, parent *qt.QObject) *QQmlComponent {
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))

	return newQQmlComponent(C.QQmlComponent_new9(param1.cPointer(), fileName_ms, (*C.QObject)(parent.UnsafePointer())))
}

// NewQQmlComponent10 constructs a new QQmlComponent object.
func NewQQmlComponent10(param1 *QQmlEngine, fileName string, mode QQmlComponent__CompilationMode, parent *qt.QObject) *QQmlComponent {
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))

	return newQQmlComponent(C.QQmlComponent_new10(param1.cPointer(), fileName_ms, (C.int)(mode), (*C.QObject)(parent.UnsafePointer())))
}

// NewQQmlComponent11 constructs a new QQmlComponent object.
func NewQQmlComponent11(param1 *QQmlEngine, url *qt.QUrl, parent *qt.QObject) *QQmlComponent {

	return newQQmlComponent(C.QQmlComponent_new11(param1.cPointer(), (*C.QUrl)(url.UnsafePointer()), (*C.QObject)(parent.UnsafePointer())))
}

// NewQQmlComponent12 constructs a new QQmlComponent object.
func NewQQmlComponent12(param1 *QQmlEngine, url *qt.QUrl, mode QQmlComponent__CompilationMode, parent *qt.QObject) *QQmlComponent {

	return newQQmlComponent(C.QQmlComponent_new12(param1.cPointer(), (*C.QUrl)(url.UnsafePointer()), (C.int)(mode), (*C.QObject)(parent.UnsafePointer())))
}

func (this *QQmlComponent) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlComponent_metaObject(this.h)))
}

func (this *QQmlComponent) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQmlComponent_metacast(this.h, param1_Cstring))
}

func (this *QQmlComponent) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQmlComponent_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQmlComponent_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlComponent_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlComponent_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlComponent_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlComponent) Status() QQmlComponent__Status {
	return (QQmlComponent__Status)(C.QQmlComponent_status(this.h))
}

func (this *QQmlComponent) IsNull() bool {
	return (bool)(C.QQmlComponent_isNull(this.h))
}

func (this *QQmlComponent) IsReady() bool {
	return (bool)(C.QQmlComponent_isReady(this.h))
}

func (this *QQmlComponent) IsError() bool {
	return (bool)(C.QQmlComponent_isError(this.h))
}

func (this *QQmlComponent) IsLoading() bool {
	return (bool)(C.QQmlComponent_isLoading(this.h))
}

func (this *QQmlComponent) Errors() []QQmlError {
	var _ma C.struct_miqt_array = C.QQmlComponent_errors(this.h)
	_ret := make([]QQmlError, int(_ma.len))
	_outCast := (*[0xffff]*C.QQmlError)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_lv_goptr := newQQmlError(_outCast[i])
		_lv_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
		_ret[i] = *_lv_goptr
	}
	return _ret
}

func (this *QQmlComponent) ErrorString() string {
	var _ms C.struct_miqt_string = C.QQmlComponent_errorString(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlComponent) Progress() float64 {
	return (float64)(C.QQmlComponent_progress(this.h))
}

func (this *QQmlComponent) Url() *qt.QUrl {
	_goptr := qt.UnsafeNewQUrl(unsafe.Pointer(C.QQmlComponent_url(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQmlComponent) Create(context *QQmlContext) *qt.QObject {
	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQmlComponent_create(this.h, context.cPointer())))
}

func (this *QQmlComponent) CreateWithInitialProperties(initialProperties map[string]qt.QVariant) *qt.QObject {
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
	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQmlComponent_createWithInitialProperties(this.h, initialProperties_mm)))
}

func (this *QQmlComponent) SetInitialProperties(component *qt.QObject, properties map[string]qt.QVariant) {
	properties_Keys_CArray := (*[0xffff]C.struct_miqt_string)(C.malloc(C.size_t(int(unsafe.Sizeof(C.struct_miqt_string{})) * len(properties))))
	defer C.free(unsafe.Pointer(properties_Keys_CArray))
	properties_Values_CArray := (*[0xffff]*C.QVariant)(C.malloc(C.size_t(8 * len(properties))))
	defer C.free(unsafe.Pointer(properties_Values_CArray))
	properties_ctr := 0
	for properties_k, properties_v := range properties {
		properties_k_ms := C.struct_miqt_string{}
		properties_k_ms.data = C.CString(properties_k)
		properties_k_ms.len = C.size_t(len(properties_k))
		defer C.free(unsafe.Pointer(properties_k_ms.data))
		properties_Keys_CArray[properties_ctr] = properties_k_ms
		properties_Values_CArray[properties_ctr] = (*C.QVariant)(properties_v.UnsafePointer())
		properties_ctr++
	}
	properties_mm := C.struct_miqt_map{
		len:    C.size_t(len(properties)),
		keys:   unsafe.Pointer(properties_Keys_CArray),
		values: unsafe.Pointer(properties_Values_CArray),
	}
	C.QQmlComponent_setInitialProperties(this.h, (*C.QObject)(component.UnsafePointer()), properties_mm)
}

func (this *QQmlComponent) BeginCreate(param1 *QQmlContext) *qt.QObject {
	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQmlComponent_beginCreate(this.h, param1.cPointer())))
}

func (this *QQmlComponent) CompleteCreate() {
	C.QQmlComponent_completeCreate(this.h)
}

func (this *QQmlComponent) CreateWithQQmlIncubator(param1 *QQmlIncubator) {
	C.QQmlComponent_createWithQQmlIncubator(this.h, param1.cPointer())
}

func (this *QQmlComponent) CreationContext() *QQmlContext {
	return newQQmlContext(C.QQmlComponent_creationContext(this.h))
}

func (this *QQmlComponent) Engine() *QQmlEngine {
	return newQQmlEngine(C.QQmlComponent_engine(this.h))
}

func (this *QQmlComponent) LoadUrl(url *qt.QUrl) {
	C.QQmlComponent_loadUrl(this.h, (*C.QUrl)(url.UnsafePointer()))
}

func (this *QQmlComponent) LoadUrl2(url *qt.QUrl, mode QQmlComponent__CompilationMode) {
	C.QQmlComponent_loadUrl2(this.h, (*C.QUrl)(url.UnsafePointer()), (C.int)(mode))
}

func (this *QQmlComponent) SetData(param1 []byte, baseUrl *qt.QUrl) {
	param1_alias := C.struct_miqt_string{}
	if len(param1) > 0 {
		param1_alias.data = (*C.char)(unsafe.Pointer(&param1[0]))
	} else {
		param1_alias.data = (*C.char)(unsafe.Pointer(nil))
	}
	param1_alias.len = C.size_t(len(param1))
	C.QQmlComponent_setData(this.h, param1_alias, (*C.QUrl)(baseUrl.UnsafePointer()))
}

func (this *QQmlComponent) StatusChanged(param1 QQmlComponent__Status) {
	C.QQmlComponent_statusChanged(this.h, (C.int)(param1))
}
func (this *QQmlComponent) OnStatusChanged(slot func(param1 QQmlComponent__Status)) {
	C.QQmlComponent_connect_statusChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQmlComponent_statusChanged
func miqt_exec_callback_QQmlComponent_statusChanged(cb C.intptr_t, param1 C.int) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 QQmlComponent__Status))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QQmlComponent__Status)(param1)

	gofunc(slotval1)
}

func (this *QQmlComponent) ProgressChanged(param1 float64) {
	C.QQmlComponent_progressChanged(this.h, (C.double)(param1))
}
func (this *QQmlComponent) OnProgressChanged(slot func(param1 float64)) {
	C.QQmlComponent_connect_progressChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQmlComponent_progressChanged
func miqt_exec_callback_QQmlComponent_progressChanged(cb C.intptr_t, param1 C.double) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 float64))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (float64)(param1)

	gofunc(slotval1)
}

func QQmlComponent_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlComponent_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlComponent_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlComponent_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlComponent_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlComponent_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlComponent_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlComponent_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlComponent) CreateWithInitialProperties2(initialProperties map[string]qt.QVariant, context *QQmlContext) *qt.QObject {
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
	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQmlComponent_createWithInitialProperties2(this.h, initialProperties_mm, context.cPointer())))
}

func (this *QQmlComponent) Create2(param1 *QQmlIncubator, context *QQmlContext) {
	C.QQmlComponent_create2(this.h, param1.cPointer(), context.cPointer())
}

func (this *QQmlComponent) Create3(param1 *QQmlIncubator, context *QQmlContext, forContext *QQmlContext) {
	C.QQmlComponent_create3(this.h, param1.cPointer(), context.cPointer(), forContext.cPointer())
}

func (this *QQmlComponent) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlComponent_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQmlComponent) OnmetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQmlComponent_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_metaObject
func miqt_exec_callback_QQmlComponent_metaObject(self *C.QQmlComponent, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQmlComponent{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQmlComponent) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQmlComponent_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQmlComponent) Onmetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQmlComponent_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_metacast
func miqt_exec_callback_QQmlComponent_metacast(self *C.QQmlComponent, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQmlComponent{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQmlComponent) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQmlComponent_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQmlComponent) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQmlComponent_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_metacall
func miqt_exec_callback_QQmlComponent_metacall(self *C.QQmlComponent, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQmlComponent{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQmlComponent) callVirtualBase_Create(context *QQmlContext) *qt.QObject {

	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQmlComponent_virtualbase_create(unsafe.Pointer(this.h), context.cPointer())))

}
func (this *QQmlComponent) OnCreate(slot func(super func(context *QQmlContext) *qt.QObject, context *QQmlContext) *qt.QObject) {
	ok := C.QQmlComponent_override_virtual_create(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_create
func miqt_exec_callback_QQmlComponent_create(self *C.QQmlComponent, cb C.intptr_t, context *C.QQmlContext) *C.QObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(context *QQmlContext) *qt.QObject, context *QQmlContext) *qt.QObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQmlContext(context)

	virtualReturn := gofunc((&QQmlComponent{h: self}).callVirtualBase_Create, slotval1)

	return (*C.QObject)(virtualReturn.UnsafePointer())

}

func (this *QQmlComponent) callVirtualBase_BeginCreate(param1 *QQmlContext) *qt.QObject {

	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQmlComponent_virtualbase_beginCreate(unsafe.Pointer(this.h), param1.cPointer())))

}
func (this *QQmlComponent) OnBeginCreate(slot func(super func(param1 *QQmlContext) *qt.QObject, param1 *QQmlContext) *qt.QObject) {
	ok := C.QQmlComponent_override_virtual_beginCreate(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_beginCreate
func miqt_exec_callback_QQmlComponent_beginCreate(self *C.QQmlComponent, cb C.intptr_t, param1 *C.QQmlContext) *C.QObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *QQmlContext) *qt.QObject, param1 *QQmlContext) *qt.QObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQQmlContext(param1)

	virtualReturn := gofunc((&QQmlComponent{h: self}).callVirtualBase_BeginCreate, slotval1)

	return (*C.QObject)(virtualReturn.UnsafePointer())

}

func (this *QQmlComponent) callVirtualBase_CompleteCreate() {

	C.QQmlComponent_virtualbase_completeCreate(unsafe.Pointer(this.h))

}
func (this *QQmlComponent) OnCompleteCreate(slot func(super func())) {
	ok := C.QQmlComponent_override_virtual_completeCreate(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_completeCreate
func miqt_exec_callback_QQmlComponent_completeCreate(self *C.QQmlComponent, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func()))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc((&QQmlComponent{h: self}).callVirtualBase_CompleteCreate)

}

func (this *QQmlComponent) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QQmlComponent_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlComponent) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QQmlComponent_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_event
func miqt_exec_callback_QQmlComponent_event(self *C.QQmlComponent, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlComponent{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQmlComponent) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQmlComponent_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlComponent) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQmlComponent_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_eventFilter
func miqt_exec_callback_QQmlComponent_eventFilter(self *C.QQmlComponent, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlComponent{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQmlComponent) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQmlComponent_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQmlComponent) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQmlComponent_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_timerEvent
func miqt_exec_callback_QQmlComponent_timerEvent(self *C.QQmlComponent, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQmlComponent{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQmlComponent) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQmlComponent_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQmlComponent) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQmlComponent_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_childEvent
func miqt_exec_callback_QQmlComponent_childEvent(self *C.QQmlComponent, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQmlComponent{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQmlComponent) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQmlComponent_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQmlComponent) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQmlComponent_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_customEvent
func miqt_exec_callback_QQmlComponent_customEvent(self *C.QQmlComponent, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQmlComponent{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQmlComponent) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQmlComponent_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlComponent) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlComponent_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_connectNotify
func miqt_exec_callback_QQmlComponent_connectNotify(self *C.QQmlComponent, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlComponent{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQmlComponent) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQmlComponent_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlComponent) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlComponent_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlComponent_disconnectNotify
func miqt_exec_callback_QQmlComponent_disconnectNotify(self *C.QQmlComponent, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlComponent{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQmlComponent) Delete() {
	C.QQmlComponent_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQmlComponent) GoGC() {
	runtime.SetFinalizer(this, func(this *QQmlComponent) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
