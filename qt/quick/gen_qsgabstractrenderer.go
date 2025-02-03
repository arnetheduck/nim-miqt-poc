package quick

/*

#include "gen_qsgabstractrenderer.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QSGAbstractRenderer__ClearModeBit int

const (
	QSGAbstractRenderer__ClearColorBuffer   QSGAbstractRenderer__ClearModeBit = 1
	QSGAbstractRenderer__ClearDepthBuffer   QSGAbstractRenderer__ClearModeBit = 2
	QSGAbstractRenderer__ClearStencilBuffer QSGAbstractRenderer__ClearModeBit = 4
)

type QSGAbstractRenderer__MatrixTransformFlag int

const (
	QSGAbstractRenderer__MatrixTransformFlipY QSGAbstractRenderer__MatrixTransformFlag = 1
)

type QSGAbstractRenderer struct {
	h *C.QSGAbstractRenderer
	*qt.QObject
}

func (this *QSGAbstractRenderer) cPointer() *C.QSGAbstractRenderer {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGAbstractRenderer) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGAbstractRenderer constructs the type using only CGO pointers.
func newQSGAbstractRenderer(h *C.QSGAbstractRenderer) *QSGAbstractRenderer {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QSGAbstractRenderer_virtbase(h, &outptr_QObject)

	return &QSGAbstractRenderer{h: h,
		QObject: qt.UnsafeNewQObject(unsafe.Pointer(outptr_QObject))}
}

// UnsafeNewQSGAbstractRenderer constructs the type using only unsafe pointers.
func UnsafeNewQSGAbstractRenderer(h unsafe.Pointer) *QSGAbstractRenderer {
	return newQSGAbstractRenderer((*C.QSGAbstractRenderer)(h))
}

func (this *QSGAbstractRenderer) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QSGAbstractRenderer_metaObject(this.h)))
}

func (this *QSGAbstractRenderer) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QSGAbstractRenderer_metacast(this.h, param1_Cstring))
}

func (this *QSGAbstractRenderer) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QSGAbstractRenderer_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QSGAbstractRenderer_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGAbstractRenderer_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGAbstractRenderer_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSGAbstractRenderer_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSGAbstractRenderer) SetRootNode(node *QSGRootNode) {
	C.QSGAbstractRenderer_setRootNode(this.h, node.cPointer())
}

func (this *QSGAbstractRenderer) RootNode() *QSGRootNode {
	return newQSGRootNode(C.QSGAbstractRenderer_rootNode(this.h))
}

func (this *QSGAbstractRenderer) SetDeviceRect(rect *qt.QRect) {
	C.QSGAbstractRenderer_setDeviceRect(this.h, (*C.QRect)(rect.UnsafePointer()))
}

func (this *QSGAbstractRenderer) SetDeviceRectWithSize(size *qt.QSize) {
	C.QSGAbstractRenderer_setDeviceRectWithSize(this.h, (*C.QSize)(size.UnsafePointer()))
}

func (this *QSGAbstractRenderer) DeviceRect() *qt.QRect {
	_goptr := qt.UnsafeNewQRect(unsafe.Pointer(C.QSGAbstractRenderer_deviceRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGAbstractRenderer) SetViewportRect(rect *qt.QRect) {
	C.QSGAbstractRenderer_setViewportRect(this.h, (*C.QRect)(rect.UnsafePointer()))
}

func (this *QSGAbstractRenderer) SetViewportRectWithSize(size *qt.QSize) {
	C.QSGAbstractRenderer_setViewportRectWithSize(this.h, (*C.QSize)(size.UnsafePointer()))
}

func (this *QSGAbstractRenderer) ViewportRect() *qt.QRect {
	_goptr := qt.UnsafeNewQRect(unsafe.Pointer(C.QSGAbstractRenderer_viewportRect(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGAbstractRenderer) SetProjectionMatrixToRect(rect *qt.QRectF) {
	C.QSGAbstractRenderer_setProjectionMatrixToRect(this.h, (*C.QRectF)(rect.UnsafePointer()))
}

func (this *QSGAbstractRenderer) SetProjectionMatrixToRect2(rect *qt.QRectF, flags QSGAbstractRenderer__MatrixTransformFlag) {
	C.QSGAbstractRenderer_setProjectionMatrixToRect2(this.h, (*C.QRectF)(rect.UnsafePointer()), (C.int)(flags))
}

func (this *QSGAbstractRenderer) SetProjectionMatrix(matrix *qt.QMatrix4x4) {
	C.QSGAbstractRenderer_setProjectionMatrix(this.h, (*C.QMatrix4x4)(matrix.UnsafePointer()))
}

func (this *QSGAbstractRenderer) SetProjectionMatrixWithNativeNDC(matrix *qt.QMatrix4x4) {
	C.QSGAbstractRenderer_setProjectionMatrixWithNativeNDC(this.h, (*C.QMatrix4x4)(matrix.UnsafePointer()))
}

func (this *QSGAbstractRenderer) ProjectionMatrix() *qt.QMatrix4x4 {
	_goptr := qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGAbstractRenderer_projectionMatrix(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGAbstractRenderer) ProjectionMatrixWithNativeNDC() *qt.QMatrix4x4 {
	_goptr := qt.UnsafeNewQMatrix4x4(unsafe.Pointer(C.QSGAbstractRenderer_projectionMatrixWithNativeNDC(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGAbstractRenderer) SetClearColor(color *qt.QColor) {
	C.QSGAbstractRenderer_setClearColor(this.h, (*C.QColor)(color.UnsafePointer()))
}

func (this *QSGAbstractRenderer) ClearColor() *qt.QColor {
	_goptr := qt.UnsafeNewQColor(unsafe.Pointer(C.QSGAbstractRenderer_clearColor(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSGAbstractRenderer) SetClearMode(mode QSGAbstractRenderer__ClearModeBit) {
	C.QSGAbstractRenderer_setClearMode(this.h, (C.int)(mode))
}

func (this *QSGAbstractRenderer) ClearMode() QSGAbstractRenderer__ClearModeBit {
	return (QSGAbstractRenderer__ClearModeBit)(C.QSGAbstractRenderer_clearMode(this.h))
}

func (this *QSGAbstractRenderer) RenderScene(fboId uint) {
	C.QSGAbstractRenderer_renderScene(this.h, (C.uint)(fboId))
}

func (this *QSGAbstractRenderer) SceneGraphChanged() {
	C.QSGAbstractRenderer_sceneGraphChanged(this.h)
}
func (this *QSGAbstractRenderer) OnSceneGraphChanged(slot func()) {
	C.QSGAbstractRenderer_connect_sceneGraphChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QSGAbstractRenderer_sceneGraphChanged
func miqt_exec_callback_QSGAbstractRenderer_sceneGraphChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func QSGAbstractRenderer_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGAbstractRenderer_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGAbstractRenderer_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGAbstractRenderer_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGAbstractRenderer_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGAbstractRenderer_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSGAbstractRenderer_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSGAbstractRenderer_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

// Delete this object from C++ memory.
func (this *QSGAbstractRenderer) Delete() {
	C.QSGAbstractRenderer_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGAbstractRenderer) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGAbstractRenderer) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
