package quick

/*

#include "gen_qqmlengine.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"github.com/mappu/miqt/qt/network"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQmlImageProviderBase__ImageType int

const (
	QQmlImageProviderBase__Image         QQmlImageProviderBase__ImageType = 0
	QQmlImageProviderBase__Pixmap        QQmlImageProviderBase__ImageType = 1
	QQmlImageProviderBase__Texture       QQmlImageProviderBase__ImageType = 2
	QQmlImageProviderBase__Invalid       QQmlImageProviderBase__ImageType = 3
	QQmlImageProviderBase__ImageResponse QQmlImageProviderBase__ImageType = 4
)

type QQmlImageProviderBase__Flag int

const (
	QQmlImageProviderBase__ForceAsynchronousImageLoading QQmlImageProviderBase__Flag = 1
)

type QQmlEngine__ObjectOwnership int

const (
	QQmlEngine__CppOwnership        QQmlEngine__ObjectOwnership = 0
	QQmlEngine__JavaScriptOwnership QQmlEngine__ObjectOwnership = 1
)

type QQmlImageProviderBase struct {
	h *C.QQmlImageProviderBase
}

func (this *QQmlImageProviderBase) cPointer() *C.QQmlImageProviderBase {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQmlImageProviderBase) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQmlImageProviderBase constructs the type using only CGO pointers.
func newQQmlImageProviderBase(h *C.QQmlImageProviderBase) *QQmlImageProviderBase {
	if h == nil {
		return nil
	}

	return &QQmlImageProviderBase{h: h}
}

// UnsafeNewQQmlImageProviderBase constructs the type using only unsafe pointers.
func UnsafeNewQQmlImageProviderBase(h unsafe.Pointer) *QQmlImageProviderBase {
	return newQQmlImageProviderBase((*C.QQmlImageProviderBase)(h))
}

func (this *QQmlImageProviderBase) ImageType() QQmlImageProviderBase__ImageType {
	return (QQmlImageProviderBase__ImageType)(C.QQmlImageProviderBase_imageType(this.h))
}

func (this *QQmlImageProviderBase) Flags() QQmlImageProviderBase__Flag {
	return (QQmlImageProviderBase__Flag)(C.QQmlImageProviderBase_flags(this.h))
}

// Delete this object from C++ memory.
func (this *QQmlImageProviderBase) Delete() {
	C.QQmlImageProviderBase_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQmlImageProviderBase) GoGC() {
	runtime.SetFinalizer(this, func(this *QQmlImageProviderBase) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQmlEngine struct {
	h *C.QQmlEngine
	*QJSEngine
}

func (this *QQmlEngine) cPointer() *C.QQmlEngine {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQmlEngine) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQmlEngine constructs the type using only CGO pointers.
func newQQmlEngine(h *C.QQmlEngine) *QQmlEngine {
	if h == nil {
		return nil
	}
	var outptr_QJSEngine *C.QJSEngine = nil
	C.QQmlEngine_virtbase(h, &outptr_QJSEngine)

	return &QQmlEngine{h: h,
		QJSEngine: newQJSEngine(outptr_QJSEngine)}
}

// UnsafeNewQQmlEngine constructs the type using only unsafe pointers.
func UnsafeNewQQmlEngine(h unsafe.Pointer) *QQmlEngine {
	return newQQmlEngine((*C.QQmlEngine)(h))
}

// NewQQmlEngine constructs a new QQmlEngine object.
func NewQQmlEngine() *QQmlEngine {

	return newQQmlEngine(C.QQmlEngine_new())
}

// NewQQmlEngine2 constructs a new QQmlEngine object.
func NewQQmlEngine2(p *qt.QObject) *QQmlEngine {

	return newQQmlEngine(C.QQmlEngine_new2((*C.QObject)(p.UnsafePointer())))
}

func (this *QQmlEngine) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlEngine_metaObject(this.h)))
}

func (this *QQmlEngine) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQmlEngine_metacast(this.h, param1_Cstring))
}

func (this *QQmlEngine) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQmlEngine_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQmlEngine_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngine_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlEngine_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngine_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlEngine) RootContext() *QQmlContext {
	return newQQmlContext(C.QQmlEngine_rootContext(this.h))
}

func (this *QQmlEngine) ClearComponentCache() {
	C.QQmlEngine_clearComponentCache(this.h)
}

func (this *QQmlEngine) TrimComponentCache() {
	C.QQmlEngine_trimComponentCache(this.h)
}

func (this *QQmlEngine) ImportPathList() []string {
	var _ma C.struct_miqt_array = C.QQmlEngine_importPathList(this.h)
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

func (this *QQmlEngine) SetImportPathList(paths []string) {
	paths_CArray := (*[0xffff]C.struct_miqt_string)(C.malloc(C.size_t(int(unsafe.Sizeof(C.struct_miqt_string{})) * len(paths))))
	defer C.free(unsafe.Pointer(paths_CArray))
	for i := range paths {
		paths_i_ms := C.struct_miqt_string{}
		paths_i_ms.data = C.CString(paths[i])
		paths_i_ms.len = C.size_t(len(paths[i]))
		defer C.free(unsafe.Pointer(paths_i_ms.data))
		paths_CArray[i] = paths_i_ms
	}
	paths_ma := C.struct_miqt_array{len: C.size_t(len(paths)), data: unsafe.Pointer(paths_CArray)}
	C.QQmlEngine_setImportPathList(this.h, paths_ma)
}

func (this *QQmlEngine) AddImportPath(dir string) {
	dir_ms := C.struct_miqt_string{}
	dir_ms.data = C.CString(dir)
	dir_ms.len = C.size_t(len(dir))
	defer C.free(unsafe.Pointer(dir_ms.data))
	C.QQmlEngine_addImportPath(this.h, dir_ms)
}

func (this *QQmlEngine) PluginPathList() []string {
	var _ma C.struct_miqt_array = C.QQmlEngine_pluginPathList(this.h)
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

func (this *QQmlEngine) SetPluginPathList(paths []string) {
	paths_CArray := (*[0xffff]C.struct_miqt_string)(C.malloc(C.size_t(int(unsafe.Sizeof(C.struct_miqt_string{})) * len(paths))))
	defer C.free(unsafe.Pointer(paths_CArray))
	for i := range paths {
		paths_i_ms := C.struct_miqt_string{}
		paths_i_ms.data = C.CString(paths[i])
		paths_i_ms.len = C.size_t(len(paths[i]))
		defer C.free(unsafe.Pointer(paths_i_ms.data))
		paths_CArray[i] = paths_i_ms
	}
	paths_ma := C.struct_miqt_array{len: C.size_t(len(paths)), data: unsafe.Pointer(paths_CArray)}
	C.QQmlEngine_setPluginPathList(this.h, paths_ma)
}

func (this *QQmlEngine) AddPluginPath(dir string) {
	dir_ms := C.struct_miqt_string{}
	dir_ms.data = C.CString(dir)
	dir_ms.len = C.size_t(len(dir))
	defer C.free(unsafe.Pointer(dir_ms.data))
	C.QQmlEngine_addPluginPath(this.h, dir_ms)
}

func (this *QQmlEngine) AddNamedBundle(name string, fileName string) bool {
	name_ms := C.struct_miqt_string{}
	name_ms.data = C.CString(name)
	name_ms.len = C.size_t(len(name))
	defer C.free(unsafe.Pointer(name_ms.data))
	fileName_ms := C.struct_miqt_string{}
	fileName_ms.data = C.CString(fileName)
	fileName_ms.len = C.size_t(len(fileName))
	defer C.free(unsafe.Pointer(fileName_ms.data))
	return (bool)(C.QQmlEngine_addNamedBundle(this.h, name_ms, fileName_ms))
}

func (this *QQmlEngine) ImportPlugin(filePath string, uri string, errors []QQmlError) bool {
	filePath_ms := C.struct_miqt_string{}
	filePath_ms.data = C.CString(filePath)
	filePath_ms.len = C.size_t(len(filePath))
	defer C.free(unsafe.Pointer(filePath_ms.data))
	uri_ms := C.struct_miqt_string{}
	uri_ms.data = C.CString(uri)
	uri_ms.len = C.size_t(len(uri))
	defer C.free(unsafe.Pointer(uri_ms.data))
	errors_CArray := (*[0xffff]*C.QQmlError)(C.malloc(C.size_t(8 * len(errors))))
	defer C.free(unsafe.Pointer(errors_CArray))
	for i := range errors {
		errors_CArray[i] = errors[i].cPointer()
	}
	errors_ma := C.struct_miqt_array{len: C.size_t(len(errors)), data: unsafe.Pointer(errors_CArray)}
	return (bool)(C.QQmlEngine_importPlugin(this.h, filePath_ms, uri_ms, errors_ma))
}

func (this *QQmlEngine) SetNetworkAccessManagerFactory(networkAccessManagerFactory *QQmlNetworkAccessManagerFactory) {
	C.QQmlEngine_setNetworkAccessManagerFactory(this.h, networkAccessManagerFactory.cPointer())
}

func (this *QQmlEngine) NetworkAccessManagerFactory() *QQmlNetworkAccessManagerFactory {
	return newQQmlNetworkAccessManagerFactory(C.QQmlEngine_networkAccessManagerFactory(this.h))
}

func (this *QQmlEngine) NetworkAccessManager() *network.QNetworkAccessManager {
	return network.UnsafeNewQNetworkAccessManager(unsafe.Pointer(C.QQmlEngine_networkAccessManager(this.h)))
}

func (this *QQmlEngine) SetUrlInterceptor(urlInterceptor *QQmlAbstractUrlInterceptor) {
	C.QQmlEngine_setUrlInterceptor(this.h, urlInterceptor.cPointer())
}

func (this *QQmlEngine) UrlInterceptor() *QQmlAbstractUrlInterceptor {
	return newQQmlAbstractUrlInterceptor(C.QQmlEngine_urlInterceptor(this.h))
}

func (this *QQmlEngine) AddImageProvider(id string, param2 *QQmlImageProviderBase) {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))
	C.QQmlEngine_addImageProvider(this.h, id_ms, param2.cPointer())
}

func (this *QQmlEngine) ImageProvider(id string) *QQmlImageProviderBase {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))
	return newQQmlImageProviderBase(C.QQmlEngine_imageProvider(this.h, id_ms))
}

func (this *QQmlEngine) RemoveImageProvider(id string) {
	id_ms := C.struct_miqt_string{}
	id_ms.data = C.CString(id)
	id_ms.len = C.size_t(len(id))
	defer C.free(unsafe.Pointer(id_ms.data))
	C.QQmlEngine_removeImageProvider(this.h, id_ms)
}

func (this *QQmlEngine) SetIncubationController(incubationController *QQmlIncubationController) {
	C.QQmlEngine_setIncubationController(this.h, incubationController.cPointer())
}

func (this *QQmlEngine) IncubationController() *QQmlIncubationController {
	return newQQmlIncubationController(C.QQmlEngine_incubationController(this.h))
}

func (this *QQmlEngine) SetOfflineStoragePath(dir string) {
	dir_ms := C.struct_miqt_string{}
	dir_ms.data = C.CString(dir)
	dir_ms.len = C.size_t(len(dir))
	defer C.free(unsafe.Pointer(dir_ms.data))
	C.QQmlEngine_setOfflineStoragePath(this.h, dir_ms)
}

func (this *QQmlEngine) OfflineStoragePath() string {
	var _ms C.struct_miqt_string = C.QQmlEngine_offlineStoragePath(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlEngine) OfflineStorageDatabaseFilePath(databaseName string) string {
	databaseName_ms := C.struct_miqt_string{}
	databaseName_ms.data = C.CString(databaseName)
	databaseName_ms.len = C.size_t(len(databaseName))
	defer C.free(unsafe.Pointer(databaseName_ms.data))
	var _ms C.struct_miqt_string = C.QQmlEngine_offlineStorageDatabaseFilePath(this.h, databaseName_ms)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlEngine) BaseUrl() *qt.QUrl {
	_goptr := qt.UnsafeNewQUrl(unsafe.Pointer(C.QQmlEngine_baseUrl(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQmlEngine) SetBaseUrl(baseUrl *qt.QUrl) {
	C.QQmlEngine_setBaseUrl(this.h, (*C.QUrl)(baseUrl.UnsafePointer()))
}

func (this *QQmlEngine) OutputWarningsToStandardError() bool {
	return (bool)(C.QQmlEngine_outputWarningsToStandardError(this.h))
}

func (this *QQmlEngine) SetOutputWarningsToStandardError(outputWarningsToStandardError bool) {
	C.QQmlEngine_setOutputWarningsToStandardError(this.h, (C.bool)(outputWarningsToStandardError))
}

func (this *QQmlEngine) Retranslate() {
	C.QQmlEngine_retranslate(this.h)
}

func QQmlEngine_ContextForObject(param1 *qt.QObject) *QQmlContext {
	return newQQmlContext(C.QQmlEngine_contextForObject((*C.QObject)(param1.UnsafePointer())))
}

func QQmlEngine_SetContextForObject(param1 *qt.QObject, param2 *QQmlContext) {
	C.QQmlEngine_setContextForObject((*C.QObject)(param1.UnsafePointer()), param2.cPointer())
}

func QQmlEngine_SetObjectOwnership(param1 *qt.QObject, param2 QQmlEngine__ObjectOwnership) {
	C.QQmlEngine_setObjectOwnership((*C.QObject)(param1.UnsafePointer()), (C.int)(param2))
}

func QQmlEngine_ObjectOwnership(param1 *qt.QObject) QQmlEngine__ObjectOwnership {
	return (QQmlEngine__ObjectOwnership)(C.QQmlEngine_objectOwnership((*C.QObject)(param1.UnsafePointer())))
}

func (this *QQmlEngine) Quit() {
	C.QQmlEngine_quit(this.h)
}
func (this *QQmlEngine) OnQuit(slot func()) {
	C.QQmlEngine_connect_quit(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQmlEngine_quit
func miqt_exec_callback_QQmlEngine_quit(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQmlEngine) Exit(retCode int) {
	C.QQmlEngine_exit(this.h, (C.int)(retCode))
}
func (this *QQmlEngine) OnExit(slot func(retCode int)) {
	C.QQmlEngine_connect_exit(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQmlEngine_exit
func miqt_exec_callback_QQmlEngine_exit(cb C.intptr_t, retCode C.int) {
	gofunc, ok := cgo.Handle(cb).Value().(func(retCode int))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (int)(retCode)

	gofunc(slotval1)
}

func (this *QQmlEngine) Warnings(warnings []QQmlError) {
	warnings_CArray := (*[0xffff]*C.QQmlError)(C.malloc(C.size_t(8 * len(warnings))))
	defer C.free(unsafe.Pointer(warnings_CArray))
	for i := range warnings {
		warnings_CArray[i] = warnings[i].cPointer()
	}
	warnings_ma := C.struct_miqt_array{len: C.size_t(len(warnings)), data: unsafe.Pointer(warnings_CArray)}
	C.QQmlEngine_warnings(this.h, warnings_ma)
}
func (this *QQmlEngine) OnWarnings(slot func(warnings []QQmlError)) {
	C.QQmlEngine_connect_warnings(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQmlEngine_warnings
func miqt_exec_callback_QQmlEngine_warnings(cb C.intptr_t, warnings C.struct_miqt_array) {
	gofunc, ok := cgo.Handle(cb).Value().(func(warnings []QQmlError))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var warnings_ma C.struct_miqt_array = warnings
	warnings_ret := make([]QQmlError, int(warnings_ma.len))
	warnings_outCast := (*[0xffff]*C.QQmlError)(unsafe.Pointer(warnings_ma.data)) // hey ya
	for i := 0; i < int(warnings_ma.len); i++ {
		warnings_lv_goptr := newQQmlError(warnings_outCast[i])
		warnings_lv_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
		warnings_ret[i] = *warnings_lv_goptr
	}
	slotval1 := warnings_ret

	gofunc(slotval1)
}

func QQmlEngine_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngine_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlEngine_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngine_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlEngine_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngine_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQmlEngine_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQmlEngine_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQmlEngine) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQmlEngine_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQmlEngine) OnMetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQmlEngine_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_metaObject
func miqt_exec_callback_QQmlEngine_metaObject(self *C.QQmlEngine, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQmlEngine{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQmlEngine) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQmlEngine_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQmlEngine) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQmlEngine_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_metacast
func miqt_exec_callback_QQmlEngine_metacast(self *C.QQmlEngine, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQmlEngine{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQmlEngine) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQmlEngine_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQmlEngine) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQmlEngine_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_metacall
func miqt_exec_callback_QQmlEngine_metacall(self *C.QQmlEngine, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQmlEngine{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQmlEngine) callVirtualBase_Event(param1 *qt.QEvent) bool {

	return (bool)(C.QQmlEngine_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(param1.UnsafePointer())))

}
func (this *QQmlEngine) OnEvent(slot func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool) {
	ok := C.QQmlEngine_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_event
func miqt_exec_callback_QQmlEngine_event(self *C.QQmlEngine, cb C.intptr_t, param1 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(param1))

	virtualReturn := gofunc((&QQmlEngine{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQmlEngine) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQmlEngine_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQmlEngine) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQmlEngine_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_eventFilter
func miqt_exec_callback_QQmlEngine_eventFilter(self *C.QQmlEngine, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQmlEngine{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQmlEngine) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQmlEngine_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQmlEngine) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQmlEngine_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_timerEvent
func miqt_exec_callback_QQmlEngine_timerEvent(self *C.QQmlEngine, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQmlEngine{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQmlEngine) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQmlEngine_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQmlEngine) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQmlEngine_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_childEvent
func miqt_exec_callback_QQmlEngine_childEvent(self *C.QQmlEngine, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQmlEngine{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQmlEngine) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQmlEngine_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQmlEngine) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQmlEngine_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_customEvent
func miqt_exec_callback_QQmlEngine_customEvent(self *C.QQmlEngine, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQmlEngine{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQmlEngine) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQmlEngine_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlEngine) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlEngine_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_connectNotify
func miqt_exec_callback_QQmlEngine_connectNotify(self *C.QQmlEngine, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlEngine{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQmlEngine) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQmlEngine_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQmlEngine) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQmlEngine_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQmlEngine_disconnectNotify
func miqt_exec_callback_QQmlEngine_disconnectNotify(self *C.QQmlEngine, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQmlEngine{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQmlEngine) Delete() {
	C.QQmlEngine_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQmlEngine) GoGC() {
	runtime.SetFinalizer(this, func(this *QQmlEngine) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
