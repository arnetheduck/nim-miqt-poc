package quick

/*

#include "gen_qsgtexture.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGTexture__WrapMode int

const (
	QSGTexture__Repeat         QSGTexture__WrapMode = 0
	QSGTexture__ClampToEdge    QSGTexture__WrapMode = 1
	QSGTexture__MirroredRepeat QSGTexture__WrapMode = 2
)

type QSGTexture__Filtering int

const (
	QSGTexture__None    QSGTexture__Filtering = 0
	QSGTexture__Nearest QSGTexture__Filtering = 1
	QSGTexture__Linear  QSGTexture__Filtering = 2
)

type QSGTexture__AnisotropyLevel int

const (
	QSGTexture__AnisotropyNone QSGTexture__AnisotropyLevel = 0
	QSGTexture__Anisotropy2x   QSGTexture__AnisotropyLevel = 1
	QSGTexture__Anisotropy4x   QSGTexture__AnisotropyLevel = 2
	QSGTexture__Anisotropy8x   QSGTexture__AnisotropyLevel = 3
	QSGTexture__Anisotropy16x  QSGTexture__AnisotropyLevel = 4
)

type QSGTexture struct {
	h *C.QSGTexture
	*qt.QObject
}

func (this *QSGTexture) cPointer() *C.QSGTexture {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGTexture) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGTexture constructs the type using only CGO pointers.
func newQSGTexture(h *C.QSGTexture) *QSGTexture {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QSGTexture_virtbase(h, &outptr_QObject)

	return &QSGTexture{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQSGTexture constructs the type using only unsafe pointers.
func UnsafeNewQSGTexture(h unsafe.Pointer) *QSGTexture {
	return newQSGTexture((*C.QSGTexture)(h))
}

// NewQSGTexture constructs a new QSGTexture object.
func NewQSGTexture() *QSGTexture {

	return newQSGTexture(C.QSGTexture_new())
}

func (this *QSGTexture) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QSGTexture_metaObject(this.h)))
}

func (this *QSGTexture) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QSGTexture_metacast(this.h, param1_Cstring))
}

func (this *QSGTexture) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QSGTexture_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QSGTexture_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGTexture_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGTexture_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGTexture_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSGTexture) TextureId() int {
	return (int)(C.QSGTexture_textureId(this.h))
}

func (this *QSGTexture) NativeTexture() *QSGTexture__NativeTexture {
	_goptr := newQSGTexture__NativeTexture(C.QSGTexture_nativeTexture(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGTexture) TextureSize() *qt.QSize {
	_goptr := qt.UnsafeNewQSize(unsafe.Pointer(C.QSGTexture_textureSize(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGTexture) HasAlphaChannel() bool {
	return (bool)(C.QSGTexture_hasAlphaChannel(this.h))
}

func (this *QSGTexture) HasMipmaps() bool {
	return (bool)(C.QSGTexture_hasMipmaps(this.h))
}

func (this *QSGTexture) NormalizedTextureSubRect() *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGTexture_normalizedTextureSubRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGTexture) IsAtlasTexture() bool {
	return (bool)(C.QSGTexture_isAtlasTexture(this.h))
}

func (this *QSGTexture) RemovedFromAtlas() *QSGTexture {
	return newQSGTexture(C.QSGTexture_removedFromAtlas(this.h))
}

func (this *QSGTexture) Bind() {
	C.QSGTexture_bind(this.h)
}

func (this *QSGTexture) UpdateBindOptions() {
	C.QSGTexture_updateBindOptions(this.h)
}

func (this *QSGTexture) SetMipmapFiltering(filter QSGTexture__Filtering) {
	C.QSGTexture_setMipmapFiltering(this.h, (C.int)(filter))
}

func (this *QSGTexture) MipmapFiltering() QSGTexture__Filtering {
	return (QSGTexture__Filtering)(C.QSGTexture_mipmapFiltering(this.h))
}

func (this *QSGTexture) SetFiltering(filter QSGTexture__Filtering) {
	C.QSGTexture_setFiltering(this.h, (C.int)(filter))
}

func (this *QSGTexture) Filtering() QSGTexture__Filtering {
	return (QSGTexture__Filtering)(C.QSGTexture_filtering(this.h))
}

func (this *QSGTexture) SetAnisotropyLevel(level QSGTexture__AnisotropyLevel) {
	C.QSGTexture_setAnisotropyLevel(this.h, (C.int)(level))
}

func (this *QSGTexture) AnisotropyLevel() QSGTexture__AnisotropyLevel {
	return (QSGTexture__AnisotropyLevel)(C.QSGTexture_anisotropyLevel(this.h))
}

func (this *QSGTexture) SetHorizontalWrapMode(hwrap QSGTexture__WrapMode) {
	C.QSGTexture_setHorizontalWrapMode(this.h, (C.int)(hwrap))
}

func (this *QSGTexture) HorizontalWrapMode() QSGTexture__WrapMode {
	return (QSGTexture__WrapMode)(C.QSGTexture_horizontalWrapMode(this.h))
}

func (this *QSGTexture) SetVerticalWrapMode(vwrap QSGTexture__WrapMode) {
	C.QSGTexture_setVerticalWrapMode(this.h, (C.int)(vwrap))
}

func (this *QSGTexture) VerticalWrapMode() QSGTexture__WrapMode {
	return (QSGTexture__WrapMode)(C.QSGTexture_verticalWrapMode(this.h))
}

func (this *QSGTexture) ConvertToNormalizedSourceRect(rect *qt.QRectF) *qt.QRectF {
	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGTexture_convertToNormalizedSourceRect(this.h, (*C.QRectF)(rect.UnsafePointer()))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGTexture) ComparisonKey() int {
	return (int)(C.QSGTexture_comparisonKey(this.h))
}

func QSGTexture_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGTexture_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGTexture_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGTexture_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGTexture_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGTexture_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGTexture_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGTexture_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSGTexture) UpdateBindOptions1(force bool) {
	C.QSGTexture_updateBindOptions1(this.h, (C.bool)(force))
}

func (this *QSGTexture) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QSGTexture_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QSGTexture) OnMetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QSGTexture_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_metaObject
func miqt_exec_callback_QSGTexture_metaObject(self *C.QSGTexture, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGTexture{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QSGTexture) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QSGTexture_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QSGTexture) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QSGTexture_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_metacast
func miqt_exec_callback_QSGTexture_metacast(self *C.QSGTexture, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QSGTexture{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QSGTexture) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QSGTexture_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QSGTexture) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QSGTexture_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_metacall
func miqt_exec_callback_QSGTexture_metacall(self *C.QSGTexture, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QSGTexture{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QSGTexture) OnTextureId(slot func() int) {
	ok := C.QSGTexture_override_virtual_textureId(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_textureId
func miqt_exec_callback_QSGTexture_textureId(self *C.QSGTexture, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func() int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (C.int)(virtualReturn)

}
func (this *QSGTexture) OnTextureSize(slot func() *qt.QSize) {
	ok := C.QSGTexture_override_virtual_textureSize(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_textureSize
func miqt_exec_callback_QSGTexture_textureSize(self *C.QSGTexture, cb C.intptr_t) *C.QSize {
	gofunc, ok := cgo.Handle(cb).Value().(func() *qt.QSize)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (*C.QSize)(virtualReturn.UnsafePointer())

}
func (this *QSGTexture) OnHasAlphaChannel(slot func() bool) {
	ok := C.QSGTexture_override_virtual_hasAlphaChannel(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_hasAlphaChannel
func miqt_exec_callback_QSGTexture_hasAlphaChannel(self *C.QSGTexture, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func() bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (C.bool)(virtualReturn)

}
func (this *QSGTexture) OnHasMipmaps(slot func() bool) {
	ok := C.QSGTexture_override_virtual_hasMipmaps(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_hasMipmaps
func miqt_exec_callback_QSGTexture_hasMipmaps(self *C.QSGTexture, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func() bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (C.bool)(virtualReturn)

}

func (this *QSGTexture) callVirtualBase_NormalizedTextureSubRect() *qt.QRectF {

	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGTexture_virtualbase_normalizedTextureSubRect(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QSGTexture) OnNormalizedTextureSubRect(slot func(super func() *qt.QRectF) *qt.QRectF) {
	ok := C.QSGTexture_override_virtual_normalizedTextureSubRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_normalizedTextureSubRect
func miqt_exec_callback_QSGTexture_normalizedTextureSubRect(self *C.QSGTexture, cb C.intptr_t) *C.QRectF {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QRectF) *qt.QRectF)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGTexture{h: self}).callVirtualBase_NormalizedTextureSubRect)

	return (*C.QRectF)(virtualReturn.UnsafePointer())

}

func (this *QSGTexture) callVirtualBase_IsAtlasTexture() bool {

	return (bool)(C.QSGTexture_virtualbase_isAtlasTexture(unsafe.Pointer(this.h)))

}
func (this *QSGTexture) OnIsAtlasTexture(slot func(super func() bool) bool) {
	ok := C.QSGTexture_override_virtual_isAtlasTexture(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_isAtlasTexture
func miqt_exec_callback_QSGTexture_isAtlasTexture(self *C.QSGTexture, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGTexture{h: self}).callVirtualBase_IsAtlasTexture)

	return (C.bool)(virtualReturn)

}

func (this *QSGTexture) callVirtualBase_RemovedFromAtlas() *QSGTexture {

	return newQSGTexture(C.QSGTexture_virtualbase_removedFromAtlas(unsafe.Pointer(this.h)))

}
func (this *QSGTexture) OnRemovedFromAtlas(slot func(super func() *QSGTexture) *QSGTexture) {
	ok := C.QSGTexture_override_virtual_removedFromAtlas(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_removedFromAtlas
func miqt_exec_callback_QSGTexture_removedFromAtlas(self *C.QSGTexture, cb C.intptr_t) *C.QSGTexture {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGTexture) *QSGTexture)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGTexture{h: self}).callVirtualBase_RemovedFromAtlas)

	return virtualReturn.cPointer()

}
func (this *QSGTexture) OnBind(slot func()) {
	ok := C.QSGTexture_override_virtual_bind(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_bind
func miqt_exec_callback_QSGTexture_bind(self *C.QSGTexture, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()

}

func (this *QSGTexture) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QSGTexture_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QSGTexture) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QSGTexture_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_event
func miqt_exec_callback_QSGTexture_event(self *C.QSGTexture, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QSGTexture{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QSGTexture) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QSGTexture_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QSGTexture) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QSGTexture_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_eventFilter
func miqt_exec_callback_QSGTexture_eventFilter(self *C.QSGTexture, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QSGTexture{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QSGTexture) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QSGTexture_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QSGTexture) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QSGTexture_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_timerEvent
func miqt_exec_callback_QSGTexture_timerEvent(self *C.QSGTexture, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QSGTexture{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QSGTexture) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QSGTexture_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QSGTexture) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QSGTexture_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_childEvent
func miqt_exec_callback_QSGTexture_childEvent(self *C.QSGTexture, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QSGTexture{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QSGTexture) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QSGTexture_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QSGTexture) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QSGTexture_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_customEvent
func miqt_exec_callback_QSGTexture_customEvent(self *C.QSGTexture, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QSGTexture{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QSGTexture) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QSGTexture_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QSGTexture) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QSGTexture_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_connectNotify
func miqt_exec_callback_QSGTexture_connectNotify(self *C.QSGTexture, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QSGTexture{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QSGTexture) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QSGTexture_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QSGTexture) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QSGTexture_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGTexture_disconnectNotify
func miqt_exec_callback_QSGTexture_disconnectNotify(self *C.QSGTexture, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QSGTexture{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QSGTexture) Delete() {
	C.QSGTexture_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGTexture) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGTexture) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGDynamicTexture struct {
	h *C.QSGDynamicTexture
	*QSGTexture
}

func (this *QSGDynamicTexture) cPointer() *C.QSGDynamicTexture {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGDynamicTexture) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGDynamicTexture constructs the type using only CGO pointers.
func newQSGDynamicTexture(h *C.QSGDynamicTexture) *QSGDynamicTexture {
	if h == nil {
		return nil
	}
	var outptr_QSGTexture *C.QSGTexture = nil
	C.QSGDynamicTexture_virtbase(h, &outptr_QSGTexture)

	return &QSGDynamicTexture{h: h,
		QSGTexture: newQSGTexture(outptr_QSGTexture)}
}

// UnsafeNewQSGDynamicTexture constructs the type using only unsafe pointers.
func UnsafeNewQSGDynamicTexture(h unsafe.Pointer) *QSGDynamicTexture {
	return newQSGDynamicTexture((*C.QSGDynamicTexture)(h))
}

// NewQSGDynamicTexture constructs a new QSGDynamicTexture object.
func NewQSGDynamicTexture() *QSGDynamicTexture {

	return newQSGDynamicTexture(C.QSGDynamicTexture_new())
}

func (this *QSGDynamicTexture) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QSGDynamicTexture_metaObject(this.h)))
}

func (this *QSGDynamicTexture) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QSGDynamicTexture_metacast(this.h, param1_Cstring))
}

func (this *QSGDynamicTexture) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QSGDynamicTexture_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QSGDynamicTexture_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGDynamicTexture_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGDynamicTexture_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGDynamicTexture_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSGDynamicTexture) UpdateTexture() bool {
	return (bool)(C.QSGDynamicTexture_updateTexture(this.h))
}

func QSGDynamicTexture_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGDynamicTexture_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGDynamicTexture_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGDynamicTexture_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGDynamicTexture_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGDynamicTexture_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGDynamicTexture_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGDynamicTexture_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSGDynamicTexture) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QSGDynamicTexture_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QSGDynamicTexture) OnMetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QSGDynamicTexture_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_metaObject
func miqt_exec_callback_QSGDynamicTexture_metaObject(self *C.QSGDynamicTexture, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QSGDynamicTexture) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QSGDynamicTexture_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QSGDynamicTexture) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QSGDynamicTexture_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_metacast
func miqt_exec_callback_QSGDynamicTexture_metacast(self *C.QSGDynamicTexture, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QSGDynamicTexture) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QSGDynamicTexture_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QSGDynamicTexture) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QSGDynamicTexture_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_metacall
func miqt_exec_callback_QSGDynamicTexture_metacall(self *C.QSGDynamicTexture, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}
func (this *QSGDynamicTexture) OnUpdateTexture(slot func() bool) {
	ok := C.QSGDynamicTexture_override_virtual_updateTexture(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_updateTexture
func miqt_exec_callback_QSGDynamicTexture_updateTexture(self *C.QSGDynamicTexture, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func() bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (C.bool)(virtualReturn)

}
func (this *QSGDynamicTexture) OnTextureId(slot func() int) {
	ok := C.QSGDynamicTexture_override_virtual_textureId(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_textureId
func miqt_exec_callback_QSGDynamicTexture_textureId(self *C.QSGDynamicTexture, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func() int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (C.int)(virtualReturn)

}
func (this *QSGDynamicTexture) OnTextureSize(slot func() *qt.QSize) {
	ok := C.QSGDynamicTexture_override_virtual_textureSize(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_textureSize
func miqt_exec_callback_QSGDynamicTexture_textureSize(self *C.QSGDynamicTexture, cb C.intptr_t) *C.QSize {
	gofunc, ok := cgo.Handle(cb).Value().(func() *qt.QSize)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (*C.QSize)(virtualReturn.UnsafePointer())

}
func (this *QSGDynamicTexture) OnHasAlphaChannel(slot func() bool) {
	ok := C.QSGDynamicTexture_override_virtual_hasAlphaChannel(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_hasAlphaChannel
func miqt_exec_callback_QSGDynamicTexture_hasAlphaChannel(self *C.QSGDynamicTexture, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func() bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (C.bool)(virtualReturn)

}
func (this *QSGDynamicTexture) OnHasMipmaps(slot func() bool) {
	ok := C.QSGDynamicTexture_override_virtual_hasMipmaps(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_hasMipmaps
func miqt_exec_callback_QSGDynamicTexture_hasMipmaps(self *C.QSGDynamicTexture, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func() bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc()

	return (C.bool)(virtualReturn)

}

func (this *QSGDynamicTexture) callVirtualBase_NormalizedTextureSubRect() *qt.QRectF {

	_goptr := qt.UnsafeNewQRectF(unsafe.Pointer(C.QSGDynamicTexture_virtualbase_normalizedTextureSubRect(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QSGDynamicTexture) OnNormalizedTextureSubRect(slot func(super func() *qt.QRectF) *qt.QRectF) {
	ok := C.QSGDynamicTexture_override_virtual_normalizedTextureSubRect(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_normalizedTextureSubRect
func miqt_exec_callback_QSGDynamicTexture_normalizedTextureSubRect(self *C.QSGDynamicTexture, cb C.intptr_t) *C.QRectF {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QRectF) *qt.QRectF)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_NormalizedTextureSubRect)

	return (*C.QRectF)(virtualReturn.UnsafePointer())

}

func (this *QSGDynamicTexture) callVirtualBase_IsAtlasTexture() bool {

	return (bool)(C.QSGDynamicTexture_virtualbase_isAtlasTexture(unsafe.Pointer(this.h)))

}
func (this *QSGDynamicTexture) OnIsAtlasTexture(slot func(super func() bool) bool) {
	ok := C.QSGDynamicTexture_override_virtual_isAtlasTexture(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_isAtlasTexture
func miqt_exec_callback_QSGDynamicTexture_isAtlasTexture(self *C.QSGDynamicTexture, cb C.intptr_t) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() bool) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_IsAtlasTexture)

	return (C.bool)(virtualReturn)

}

func (this *QSGDynamicTexture) callVirtualBase_RemovedFromAtlas() *QSGTexture {

	return newQSGTexture(C.QSGDynamicTexture_virtualbase_removedFromAtlas(unsafe.Pointer(this.h)))

}
func (this *QSGDynamicTexture) OnRemovedFromAtlas(slot func(super func() *QSGTexture) *QSGTexture) {
	ok := C.QSGDynamicTexture_override_virtual_removedFromAtlas(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_removedFromAtlas
func miqt_exec_callback_QSGDynamicTexture_removedFromAtlas(self *C.QSGDynamicTexture, cb C.intptr_t) *C.QSGTexture {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QSGTexture) *QSGTexture)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_RemovedFromAtlas)

	return virtualReturn.cPointer()

}
func (this *QSGDynamicTexture) OnBind(slot func()) {
	ok := C.QSGDynamicTexture_override_virtual_bind(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_bind
func miqt_exec_callback_QSGDynamicTexture_bind(self *C.QSGDynamicTexture, cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()

}

func (this *QSGDynamicTexture) callVirtualBase_Event(event *qt.QEvent) bool {

	return (bool)(C.QSGDynamicTexture_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QSGDynamicTexture) OnEvent(slot func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool) {
	ok := C.QSGDynamicTexture_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_event
func miqt_exec_callback_QSGDynamicTexture_event(self *C.QSGDynamicTexture, cb C.intptr_t, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent) bool, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QSGDynamicTexture) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QSGDynamicTexture_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QSGDynamicTexture) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QSGDynamicTexture_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_eventFilter
func miqt_exec_callback_QSGDynamicTexture_eventFilter(self *C.QSGDynamicTexture, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QSGDynamicTexture) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QSGDynamicTexture_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QSGDynamicTexture) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QSGDynamicTexture_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_timerEvent
func miqt_exec_callback_QSGDynamicTexture_timerEvent(self *C.QSGDynamicTexture, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QSGDynamicTexture) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QSGDynamicTexture_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QSGDynamicTexture) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QSGDynamicTexture_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_childEvent
func miqt_exec_callback_QSGDynamicTexture_childEvent(self *C.QSGDynamicTexture, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QSGDynamicTexture) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QSGDynamicTexture_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QSGDynamicTexture) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QSGDynamicTexture_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_customEvent
func miqt_exec_callback_QSGDynamicTexture_customEvent(self *C.QSGDynamicTexture, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QSGDynamicTexture) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QSGDynamicTexture_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QSGDynamicTexture) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QSGDynamicTexture_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_connectNotify
func miqt_exec_callback_QSGDynamicTexture_connectNotify(self *C.QSGDynamicTexture, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QSGDynamicTexture) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QSGDynamicTexture_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QSGDynamicTexture) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QSGDynamicTexture_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QSGDynamicTexture_disconnectNotify
func miqt_exec_callback_QSGDynamicTexture_disconnectNotify(self *C.QSGDynamicTexture, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QSGDynamicTexture{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QSGDynamicTexture) Delete() {
	C.QSGDynamicTexture_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGDynamicTexture) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGDynamicTexture) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QSGTexture__NativeTexture struct {
	h *C.QSGTexture__NativeTexture
}

func (this *QSGTexture__NativeTexture) cPointer() *C.QSGTexture__NativeTexture {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGTexture__NativeTexture) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGTexture__NativeTexture constructs the type using only CGO pointers.
func newQSGTexture__NativeTexture(h *C.QSGTexture__NativeTexture) *QSGTexture__NativeTexture {
	if h == nil {
		return nil
	}

	return &QSGTexture__NativeTexture{h: h}
}

// UnsafeNewQSGTexture__NativeTexture constructs the type using only unsafe pointers.
func UnsafeNewQSGTexture__NativeTexture(h unsafe.Pointer) *QSGTexture__NativeTexture {
	return newQSGTexture__NativeTexture((*C.QSGTexture__NativeTexture)(h))
}

// Delete this object from C++ memory.
func (this *QSGTexture__NativeTexture) Delete() {
	C.QSGTexture__NativeTexture_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGTexture__NativeTexture) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGTexture__NativeTexture) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
