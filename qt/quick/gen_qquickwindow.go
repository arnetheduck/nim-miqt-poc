package quick

/*

#include "gen_qquickwindow.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt"
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QQuickWindow__CreateTextureOption int

const (
	QQuickWindow__TextureHasAlphaChannel QQuickWindow__CreateTextureOption = 1
	QQuickWindow__TextureHasMipmaps      QQuickWindow__CreateTextureOption = 2
	QQuickWindow__TextureOwnsGLTexture   QQuickWindow__CreateTextureOption = 4
	QQuickWindow__TextureCanUseAtlas     QQuickWindow__CreateTextureOption = 8
	QQuickWindow__TextureIsOpaque        QQuickWindow__CreateTextureOption = 16
)

type QQuickWindow__RenderStage int

const (
	QQuickWindow__BeforeSynchronizingStage QQuickWindow__RenderStage = 0
	QQuickWindow__AfterSynchronizingStage  QQuickWindow__RenderStage = 1
	QQuickWindow__BeforeRenderingStage     QQuickWindow__RenderStage = 2
	QQuickWindow__AfterRenderingStage      QQuickWindow__RenderStage = 3
	QQuickWindow__AfterSwapStage           QQuickWindow__RenderStage = 4
	QQuickWindow__NoStage                  QQuickWindow__RenderStage = 5
)

type QQuickWindow__SceneGraphError int

const (
	QQuickWindow__ContextNotAvailable QQuickWindow__SceneGraphError = 1
)

type QQuickWindow__TextRenderType int

const (
	QQuickWindow__QtTextRendering     QQuickWindow__TextRenderType = 0
	QQuickWindow__NativeTextRendering QQuickWindow__TextRenderType = 1
)

type QQuickWindow__NativeObjectType int

const (
	QQuickWindow__NativeObjectTexture QQuickWindow__NativeObjectType = 0
)

type QQuickWindow struct {
	h *C.QQuickWindow
	*qt.QWindow
}

func (this *QQuickWindow) cPointer() *C.QQuickWindow {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickWindow) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickWindow constructs the type using only CGO pointers.
func newQQuickWindow(h *C.QQuickWindow) *QQuickWindow {
	if h == nil {
		return nil
	}
	var outptr_QWindow *C.QWindow = nil
	C.QQuickWindow_virtbase(h, &outptr_QWindow)

	return &QQuickWindow{h: h,
		QWindow: qt.UnsafeNewQWindow(unsafe.Pointer(outptr_QWindow))}
}

// UnsafeNewQQuickWindow constructs the type using only unsafe pointers.
func UnsafeNewQQuickWindow(h unsafe.Pointer) *QQuickWindow {
	return newQQuickWindow((*C.QQuickWindow)(h))
}

// NewQQuickWindow constructs a new QQuickWindow object.
func NewQQuickWindow() *QQuickWindow {

	return newQQuickWindow(C.QQuickWindow_new())
}

// NewQQuickWindow2 constructs a new QQuickWindow object.
func NewQQuickWindow2(renderControl *QQuickRenderControl) *QQuickWindow {

	return newQQuickWindow(C.QQuickWindow_new2(renderControl.cPointer()))
}

// NewQQuickWindow3 constructs a new QQuickWindow object.
func NewQQuickWindow3(parent *qt.QWindow) *QQuickWindow {

	return newQQuickWindow(C.QQuickWindow_new3((*C.QWindow)(parent.UnsafePointer())))
}

func (this *QQuickWindow) MetaObject() *qt.QMetaObject {
	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickWindow_metaObject(this.h)))
}

func (this *QQuickWindow) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QQuickWindow_metacast(this.h, param1_Cstring))
}

func (this *QQuickWindow) Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QQuickWindow_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QQuickWindow_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickWindow_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickWindow_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QQuickWindow_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickWindow) ContentItem() *QQuickItem {
	return newQQuickItem(C.QQuickWindow_contentItem(this.h))
}

func (this *QQuickWindow) ActiveFocusItem() *QQuickItem {
	return newQQuickItem(C.QQuickWindow_activeFocusItem(this.h))
}

func (this *QQuickWindow) FocusObject() *qt.QObject {
	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQuickWindow_focusObject(this.h)))
}

func (this *QQuickWindow) MouseGrabberItem() *QQuickItem {
	return newQQuickItem(C.QQuickWindow_mouseGrabberItem(this.h))
}

func (this *QQuickWindow) SendEvent(param1 *QQuickItem, param2 *qt.QEvent) bool {
	return (bool)(C.QQuickWindow_sendEvent(this.h, param1.cPointer(), (*C.QEvent)(param2.UnsafePointer())))
}

func (this *QQuickWindow) GrabWindow() *qt.QImage {
	_goptr := qt.UnsafeNewQImage(unsafe.Pointer(C.QQuickWindow_grabWindow(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickWindow) SetRenderTarget2(fboId uint, size *qt.QSize) {
	C.QQuickWindow_setRenderTarget2(this.h, (C.uint)(fboId), (*C.QSize)(size.UnsafePointer()))
}

func (this *QQuickWindow) RenderTargetId() uint {
	return (uint)(C.QQuickWindow_renderTargetId(this.h))
}

func (this *QQuickWindow) RenderTargetSize() *qt.QSize {
	_goptr := qt.UnsafeNewQSize(unsafe.Pointer(C.QQuickWindow_renderTargetSize(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QQuickWindow) ResetOpenGLState() {
	C.QQuickWindow_resetOpenGLState(this.h)
}

func (this *QQuickWindow) GraphicsStateInfo() *QQuickWindow__GraphicsStateInfo {
	return newQQuickWindow__GraphicsStateInfo(C.QQuickWindow_graphicsStateInfo(this.h))
}

func (this *QQuickWindow) BeginExternalCommands() {
	C.QQuickWindow_beginExternalCommands(this.h)
}

func (this *QQuickWindow) EndExternalCommands() {
	C.QQuickWindow_endExternalCommands(this.h)
}

func (this *QQuickWindow) IncubationController() *QQmlIncubationController {
	return newQQmlIncubationController(C.QQuickWindow_incubationController(this.h))
}

func (this *QQuickWindow) AccessibleRoot() *qt.QAccessibleInterface {
	return qt.UnsafeNewQAccessibleInterface(unsafe.Pointer(C.QQuickWindow_accessibleRoot(this.h)))
}

func (this *QQuickWindow) CreateTextureFromImage(image *qt.QImage) *QSGTexture {
	return newQSGTexture(C.QQuickWindow_createTextureFromImage(this.h, (*C.QImage)(image.UnsafePointer())))
}

func (this *QQuickWindow) CreateTextureFromImage2(image *qt.QImage, options QQuickWindow__CreateTextureOption) *QSGTexture {
	return newQSGTexture(C.QQuickWindow_createTextureFromImage2(this.h, (*C.QImage)(image.UnsafePointer()), (C.int)(options)))
}

func (this *QQuickWindow) CreateTextureFromId(id uint, size *qt.QSize) *QSGTexture {
	return newQSGTexture(C.QQuickWindow_createTextureFromId(this.h, (C.uint)(id), (*C.QSize)(size.UnsafePointer())))
}

func (this *QQuickWindow) CreateTextureFromNativeObject(typeVal QQuickWindow__NativeObjectType, nativeObjectPtr unsafe.Pointer, nativeLayout int, size *qt.QSize) *QSGTexture {
	return newQSGTexture(C.QQuickWindow_createTextureFromNativeObject(this.h, (C.int)(typeVal), nativeObjectPtr, (C.int)(nativeLayout), (*C.QSize)(size.UnsafePointer())))
}

func (this *QQuickWindow) SetClearBeforeRendering(enabled bool) {
	C.QQuickWindow_setClearBeforeRendering(this.h, (C.bool)(enabled))
}

func (this *QQuickWindow) ClearBeforeRendering() bool {
	return (bool)(C.QQuickWindow_clearBeforeRendering(this.h))
}

func (this *QQuickWindow) SetColor(color *qt.QColor) {
	C.QQuickWindow_setColor(this.h, (*C.QColor)(color.UnsafePointer()))
}

func (this *QQuickWindow) Color() *qt.QColor {
	_goptr := qt.UnsafeNewQColor(unsafe.Pointer(C.QQuickWindow_color(this.h)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QQuickWindow_HasDefaultAlphaBuffer() bool {
	return (bool)(C.QQuickWindow_hasDefaultAlphaBuffer())
}

func QQuickWindow_SetDefaultAlphaBuffer(useAlpha bool) {
	C.QQuickWindow_setDefaultAlphaBuffer((C.bool)(useAlpha))
}

func (this *QQuickWindow) SetPersistentOpenGLContext(persistent bool) {
	C.QQuickWindow_setPersistentOpenGLContext(this.h, (C.bool)(persistent))
}

func (this *QQuickWindow) IsPersistentOpenGLContext() bool {
	return (bool)(C.QQuickWindow_isPersistentOpenGLContext(this.h))
}

func (this *QQuickWindow) SetPersistentSceneGraph(persistent bool) {
	C.QQuickWindow_setPersistentSceneGraph(this.h, (C.bool)(persistent))
}

func (this *QQuickWindow) IsPersistentSceneGraph() bool {
	return (bool)(C.QQuickWindow_isPersistentSceneGraph(this.h))
}

func (this *QQuickWindow) IsSceneGraphInitialized() bool {
	return (bool)(C.QQuickWindow_isSceneGraphInitialized(this.h))
}

func (this *QQuickWindow) ScheduleRenderJob(job *qt.QRunnable, schedule QQuickWindow__RenderStage) {
	C.QQuickWindow_scheduleRenderJob(this.h, (*C.QRunnable)(job.UnsafePointer()), (C.int)(schedule))
}

func (this *QQuickWindow) EffectiveDevicePixelRatio() float64 {
	return (float64)(C.QQuickWindow_effectiveDevicePixelRatio(this.h))
}

func (this *QQuickWindow) RendererInterface() *QSGRendererInterface {
	return newQSGRendererInterface(C.QQuickWindow_rendererInterface(this.h))
}

func QQuickWindow_SetSceneGraphBackend(api QSGRendererInterface__GraphicsApi) {
	C.QQuickWindow_setSceneGraphBackend((C.int)(api))
}

func QQuickWindow_SetSceneGraphBackendWithBackend(backend string) {
	backend_ms := C.struct_miqt_string{}
	backend_ms.data = C.CString(backend)
	backend_ms.len = C.size_t(len(backend))
	defer C.free(unsafe.Pointer(backend_ms.data))
	C.QQuickWindow_setSceneGraphBackendWithBackend(backend_ms)
}

func QQuickWindow_SceneGraphBackend() string {
	var _ms C.struct_miqt_string = C.QQuickWindow_sceneGraphBackend()
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickWindow) CreateRectangleNode() *QSGRectangleNode {
	return newQSGRectangleNode(C.QQuickWindow_createRectangleNode(this.h))
}

func (this *QQuickWindow) CreateImageNode() *QSGImageNode {
	return newQSGImageNode(C.QQuickWindow_createImageNode(this.h))
}

func (this *QQuickWindow) CreateNinePatchNode() *QSGNinePatchNode {
	return newQSGNinePatchNode(C.QQuickWindow_createNinePatchNode(this.h))
}

func QQuickWindow_TextRenderType() QQuickWindow__TextRenderType {
	return (QQuickWindow__TextRenderType)(C.QQuickWindow_textRenderType())
}

func QQuickWindow_SetTextRenderType(renderType QQuickWindow__TextRenderType) {
	C.QQuickWindow_setTextRenderType((C.int)(renderType))
}

func (this *QQuickWindow) FrameSwapped() {
	C.QQuickWindow_frameSwapped(this.h)
}
func (this *QQuickWindow) OnFrameSwapped(slot func()) {
	C.QQuickWindow_connect_frameSwapped(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_frameSwapped
func miqt_exec_callback_QQuickWindow_frameSwapped(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) SceneGraphInitialized() {
	C.QQuickWindow_sceneGraphInitialized(this.h)
}
func (this *QQuickWindow) OnSceneGraphInitialized(slot func()) {
	C.QQuickWindow_connect_sceneGraphInitialized(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_sceneGraphInitialized
func miqt_exec_callback_QQuickWindow_sceneGraphInitialized(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) SceneGraphInvalidated() {
	C.QQuickWindow_sceneGraphInvalidated(this.h)
}
func (this *QQuickWindow) OnSceneGraphInvalidated(slot func()) {
	C.QQuickWindow_connect_sceneGraphInvalidated(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_sceneGraphInvalidated
func miqt_exec_callback_QQuickWindow_sceneGraphInvalidated(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) BeforeSynchronizing() {
	C.QQuickWindow_beforeSynchronizing(this.h)
}
func (this *QQuickWindow) OnBeforeSynchronizing(slot func()) {
	C.QQuickWindow_connect_beforeSynchronizing(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_beforeSynchronizing
func miqt_exec_callback_QQuickWindow_beforeSynchronizing(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) AfterSynchronizing() {
	C.QQuickWindow_afterSynchronizing(this.h)
}
func (this *QQuickWindow) OnAfterSynchronizing(slot func()) {
	C.QQuickWindow_connect_afterSynchronizing(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_afterSynchronizing
func miqt_exec_callback_QQuickWindow_afterSynchronizing(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) BeforeRendering() {
	C.QQuickWindow_beforeRendering(this.h)
}
func (this *QQuickWindow) OnBeforeRendering(slot func()) {
	C.QQuickWindow_connect_beforeRendering(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_beforeRendering
func miqt_exec_callback_QQuickWindow_beforeRendering(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) AfterRendering() {
	C.QQuickWindow_afterRendering(this.h)
}
func (this *QQuickWindow) OnAfterRendering(slot func()) {
	C.QQuickWindow_connect_afterRendering(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_afterRendering
func miqt_exec_callback_QQuickWindow_afterRendering(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) AfterAnimating() {
	C.QQuickWindow_afterAnimating(this.h)
}
func (this *QQuickWindow) OnAfterAnimating(slot func()) {
	C.QQuickWindow_connect_afterAnimating(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_afterAnimating
func miqt_exec_callback_QQuickWindow_afterAnimating(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) SceneGraphAboutToStop() {
	C.QQuickWindow_sceneGraphAboutToStop(this.h)
}
func (this *QQuickWindow) OnSceneGraphAboutToStop(slot func()) {
	C.QQuickWindow_connect_sceneGraphAboutToStop(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_sceneGraphAboutToStop
func miqt_exec_callback_QQuickWindow_sceneGraphAboutToStop(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) ColorChanged(param1 *qt.QColor) {
	C.QQuickWindow_colorChanged(this.h, (*C.QColor)(param1.UnsafePointer()))
}
func (this *QQuickWindow) OnColorChanged(slot func(param1 *qt.QColor)) {
	C.QQuickWindow_connect_colorChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_colorChanged
func miqt_exec_callback_QQuickWindow_colorChanged(cb C.intptr_t, param1 *C.QColor) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 *qt.QColor))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQColor(unsafe.Pointer(param1))

	gofunc(slotval1)
}

func (this *QQuickWindow) ActiveFocusItemChanged() {
	C.QQuickWindow_activeFocusItemChanged(this.h)
}
func (this *QQuickWindow) OnActiveFocusItemChanged(slot func()) {
	C.QQuickWindow_connect_activeFocusItemChanged(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_activeFocusItemChanged
func miqt_exec_callback_QQuickWindow_activeFocusItemChanged(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) SceneGraphError(error QQuickWindow__SceneGraphError, message string) {
	message_ms := C.struct_miqt_string{}
	message_ms.data = C.CString(message)
	message_ms.len = C.size_t(len(message))
	defer C.free(unsafe.Pointer(message_ms.data))
	C.QQuickWindow_sceneGraphError(this.h, (C.int)(error), message_ms)
}
func (this *QQuickWindow) OnSceneGraphError(slot func(error QQuickWindow__SceneGraphError, message string)) {
	C.QQuickWindow_connect_sceneGraphError(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_sceneGraphError
func miqt_exec_callback_QQuickWindow_sceneGraphError(cb C.intptr_t, error C.int, message C.struct_miqt_string) {
	gofunc, ok := cgo.Handle(cb).Value().(func(error QQuickWindow__SceneGraphError, message string))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QQuickWindow__SceneGraphError)(error)

	var message_ms C.struct_miqt_string = message
	message_ret := C.GoStringN(message_ms.data, C.int(int64(message_ms.len)))
	C.free(unsafe.Pointer(message_ms.data))
	slotval2 := message_ret

	gofunc(slotval1, slotval2)
}

func (this *QQuickWindow) BeforeRenderPassRecording() {
	C.QQuickWindow_beforeRenderPassRecording(this.h)
}
func (this *QQuickWindow) OnBeforeRenderPassRecording(slot func()) {
	C.QQuickWindow_connect_beforeRenderPassRecording(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_beforeRenderPassRecording
func miqt_exec_callback_QQuickWindow_beforeRenderPassRecording(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) AfterRenderPassRecording() {
	C.QQuickWindow_afterRenderPassRecording(this.h)
}
func (this *QQuickWindow) OnAfterRenderPassRecording(slot func()) {
	C.QQuickWindow_connect_afterRenderPassRecording(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QQuickWindow_afterRenderPassRecording
func miqt_exec_callback_QQuickWindow_afterRenderPassRecording(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QQuickWindow) Update() {
	C.QQuickWindow_update(this.h)
}

func (this *QQuickWindow) ReleaseResources() {
	C.QQuickWindow_releaseResources(this.h)
}

func QQuickWindow_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickWindow_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickWindow_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickWindow_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickWindow_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickWindow_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QQuickWindow_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QQuickWindow_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QQuickWindow) CreateTextureFromId3(id uint, size *qt.QSize, options QQuickWindow__CreateTextureOption) *QSGTexture {
	return newQSGTexture(C.QQuickWindow_createTextureFromId3(this.h, (C.uint)(id), (*C.QSize)(size.UnsafePointer()), (C.int)(options)))
}

func (this *QQuickWindow) CreateTextureFromNativeObject5(typeVal QQuickWindow__NativeObjectType, nativeObjectPtr unsafe.Pointer, nativeLayout int, size *qt.QSize, options QQuickWindow__CreateTextureOption) *QSGTexture {
	return newQSGTexture(C.QQuickWindow_createTextureFromNativeObject5(this.h, (C.int)(typeVal), nativeObjectPtr, (C.int)(nativeLayout), (*C.QSize)(size.UnsafePointer()), (C.int)(options)))
}

func (this *QQuickWindow) callVirtualBase_MetaObject() *qt.QMetaObject {

	return qt.UnsafeNewQMetaObject(unsafe.Pointer(C.QQuickWindow_virtualbase_metaObject(unsafe.Pointer(this.h))))

}
func (this *QQuickWindow) OnMetaObject(slot func(super func() *qt.QMetaObject) *qt.QMetaObject) {
	ok := C.QQuickWindow_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_metaObject
func miqt_exec_callback_QQuickWindow_metaObject(self *C.QQuickWindow, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QMetaObject) *qt.QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_MetaObject)

	return (*C.QMetaObject)(virtualReturn.UnsafePointer())

}

func (this *QQuickWindow) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QQuickWindow_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QQuickWindow) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QQuickWindow_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_metacast
func miqt_exec_callback_QQuickWindow_metacast(self *C.QQuickWindow, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QQuickWindow) callVirtualBase_Metacall(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QQuickWindow_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QQuickWindow) OnMetacall(slot func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QQuickWindow_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_metacall
func miqt_exec_callback_QQuickWindow_metacall(self *C.QQuickWindow, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 qt.QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (qt.QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QQuickWindow) callVirtualBase_FocusObject() *qt.QObject {

	return qt.UnsafeNewQObject(unsafe.Pointer(C.QQuickWindow_virtualbase_focusObject(unsafe.Pointer(this.h))))

}
func (this *QQuickWindow) OnFocusObject(slot func(super func() *qt.QObject) *qt.QObject) {
	ok := C.QQuickWindow_override_virtual_focusObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_focusObject
func miqt_exec_callback_QQuickWindow_focusObject(self *C.QQuickWindow, cb C.intptr_t) *C.QObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QObject) *qt.QObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_FocusObject)

	return (*C.QObject)(virtualReturn.UnsafePointer())

}

func (this *QQuickWindow) callVirtualBase_AccessibleRoot() *qt.QAccessibleInterface {

	return qt.UnsafeNewQAccessibleInterface(unsafe.Pointer(C.QQuickWindow_virtualbase_accessibleRoot(unsafe.Pointer(this.h))))

}
func (this *QQuickWindow) OnAccessibleRoot(slot func(super func() *qt.QAccessibleInterface) *qt.QAccessibleInterface) {
	ok := C.QQuickWindow_override_virtual_accessibleRoot(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_accessibleRoot
func miqt_exec_callback_QQuickWindow_accessibleRoot(self *C.QQuickWindow, cb C.intptr_t) *C.QAccessibleInterface {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QAccessibleInterface) *qt.QAccessibleInterface)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_AccessibleRoot)

	return (*C.QAccessibleInterface)(virtualReturn.UnsafePointer())

}

func (this *QQuickWindow) callVirtualBase_ExposeEvent(param1 *qt.QExposeEvent) {

	C.QQuickWindow_virtualbase_exposeEvent(unsafe.Pointer(this.h), (*C.QExposeEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnExposeEvent(slot func(super func(param1 *qt.QExposeEvent), param1 *qt.QExposeEvent)) {
	ok := C.QQuickWindow_override_virtual_exposeEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_exposeEvent
func miqt_exec_callback_QQuickWindow_exposeEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QExposeEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QExposeEvent), param1 *qt.QExposeEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQExposeEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_ExposeEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_ResizeEvent(param1 *qt.QResizeEvent) {

	C.QQuickWindow_virtualbase_resizeEvent(unsafe.Pointer(this.h), (*C.QResizeEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnResizeEvent(slot func(super func(param1 *qt.QResizeEvent), param1 *qt.QResizeEvent)) {
	ok := C.QQuickWindow_override_virtual_resizeEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_resizeEvent
func miqt_exec_callback_QQuickWindow_resizeEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QResizeEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QResizeEvent), param1 *qt.QResizeEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQResizeEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_ResizeEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_ShowEvent(param1 *qt.QShowEvent) {

	C.QQuickWindow_virtualbase_showEvent(unsafe.Pointer(this.h), (*C.QShowEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnShowEvent(slot func(super func(param1 *qt.QShowEvent), param1 *qt.QShowEvent)) {
	ok := C.QQuickWindow_override_virtual_showEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_showEvent
func miqt_exec_callback_QQuickWindow_showEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QShowEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QShowEvent), param1 *qt.QShowEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQShowEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_ShowEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_HideEvent(param1 *qt.QHideEvent) {

	C.QQuickWindow_virtualbase_hideEvent(unsafe.Pointer(this.h), (*C.QHideEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnHideEvent(slot func(super func(param1 *qt.QHideEvent), param1 *qt.QHideEvent)) {
	ok := C.QQuickWindow_override_virtual_hideEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_hideEvent
func miqt_exec_callback_QQuickWindow_hideEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QHideEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QHideEvent), param1 *qt.QHideEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQHideEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_HideEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_FocusInEvent(param1 *qt.QFocusEvent) {

	C.QQuickWindow_virtualbase_focusInEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnFocusInEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickWindow_override_virtual_focusInEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_focusInEvent
func miqt_exec_callback_QQuickWindow_focusInEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_FocusInEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_FocusOutEvent(param1 *qt.QFocusEvent) {

	C.QQuickWindow_virtualbase_focusOutEvent(unsafe.Pointer(this.h), (*C.QFocusEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnFocusOutEvent(slot func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent)) {
	ok := C.QQuickWindow_override_virtual_focusOutEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_focusOutEvent
func miqt_exec_callback_QQuickWindow_focusOutEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QFocusEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QFocusEvent), param1 *qt.QFocusEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQFocusEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_FocusOutEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_Event(param1 *qt.QEvent) bool {

	return (bool)(C.QQuickWindow_virtualbase_event(unsafe.Pointer(this.h), (*C.QEvent)(param1.UnsafePointer())))

}
func (this *QQuickWindow) OnEvent(slot func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool) {
	ok := C.QQuickWindow_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_event
func miqt_exec_callback_QQuickWindow_event(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QEvent) bool, param1 *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(param1))

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QQuickWindow) callVirtualBase_KeyPressEvent(param1 *qt.QKeyEvent) {

	C.QQuickWindow_virtualbase_keyPressEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnKeyPressEvent(slot func(super func(param1 *qt.QKeyEvent), param1 *qt.QKeyEvent)) {
	ok := C.QQuickWindow_override_virtual_keyPressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_keyPressEvent
func miqt_exec_callback_QQuickWindow_keyPressEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QKeyEvent), param1 *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_KeyPressEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_KeyReleaseEvent(param1 *qt.QKeyEvent) {

	C.QQuickWindow_virtualbase_keyReleaseEvent(unsafe.Pointer(this.h), (*C.QKeyEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnKeyReleaseEvent(slot func(super func(param1 *qt.QKeyEvent), param1 *qt.QKeyEvent)) {
	ok := C.QQuickWindow_override_virtual_keyReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_keyReleaseEvent
func miqt_exec_callback_QQuickWindow_keyReleaseEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QKeyEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QKeyEvent), param1 *qt.QKeyEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQKeyEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_KeyReleaseEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_MousePressEvent(param1 *qt.QMouseEvent) {

	C.QQuickWindow_virtualbase_mousePressEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnMousePressEvent(slot func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent)) {
	ok := C.QQuickWindow_override_virtual_mousePressEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_mousePressEvent
func miqt_exec_callback_QQuickWindow_mousePressEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_MousePressEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_MouseReleaseEvent(param1 *qt.QMouseEvent) {

	C.QQuickWindow_virtualbase_mouseReleaseEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnMouseReleaseEvent(slot func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent)) {
	ok := C.QQuickWindow_override_virtual_mouseReleaseEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_mouseReleaseEvent
func miqt_exec_callback_QQuickWindow_mouseReleaseEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_MouseReleaseEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_MouseDoubleClickEvent(param1 *qt.QMouseEvent) {

	C.QQuickWindow_virtualbase_mouseDoubleClickEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnMouseDoubleClickEvent(slot func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent)) {
	ok := C.QQuickWindow_override_virtual_mouseDoubleClickEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_mouseDoubleClickEvent
func miqt_exec_callback_QQuickWindow_mouseDoubleClickEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_MouseDoubleClickEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_MouseMoveEvent(param1 *qt.QMouseEvent) {

	C.QQuickWindow_virtualbase_mouseMoveEvent(unsafe.Pointer(this.h), (*C.QMouseEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnMouseMoveEvent(slot func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent)) {
	ok := C.QQuickWindow_override_virtual_mouseMoveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_mouseMoveEvent
func miqt_exec_callback_QQuickWindow_mouseMoveEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QMouseEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMouseEvent), param1 *qt.QMouseEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMouseEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_MouseMoveEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_WheelEvent(param1 *qt.QWheelEvent) {

	C.QQuickWindow_virtualbase_wheelEvent(unsafe.Pointer(this.h), (*C.QWheelEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnWheelEvent(slot func(super func(param1 *qt.QWheelEvent), param1 *qt.QWheelEvent)) {
	ok := C.QQuickWindow_override_virtual_wheelEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_wheelEvent
func miqt_exec_callback_QQuickWindow_wheelEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QWheelEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QWheelEvent), param1 *qt.QWheelEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQWheelEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_WheelEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_TabletEvent(param1 *qt.QTabletEvent) {

	C.QQuickWindow_virtualbase_tabletEvent(unsafe.Pointer(this.h), (*C.QTabletEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnTabletEvent(slot func(super func(param1 *qt.QTabletEvent), param1 *qt.QTabletEvent)) {
	ok := C.QQuickWindow_override_virtual_tabletEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_tabletEvent
func miqt_exec_callback_QQuickWindow_tabletEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QTabletEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QTabletEvent), param1 *qt.QTabletEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTabletEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_TabletEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_SurfaceType() qt.QSurface__SurfaceType {

	return (qt.QSurface__SurfaceType)(C.QQuickWindow_virtualbase_surfaceType(unsafe.Pointer(this.h)))

}
func (this *QQuickWindow) OnSurfaceType(slot func(super func() qt.QSurface__SurfaceType) qt.QSurface__SurfaceType) {
	ok := C.QQuickWindow_override_virtual_surfaceType(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_surfaceType
func miqt_exec_callback_QQuickWindow_surfaceType(self *C.QQuickWindow, cb C.intptr_t) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() qt.QSurface__SurfaceType) qt.QSurface__SurfaceType)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_SurfaceType)

	return (C.int)(virtualReturn)

}

func (this *QQuickWindow) callVirtualBase_Format() *qt.QSurfaceFormat {

	_goptr := qt.UnsafeNewQSurfaceFormat(unsafe.Pointer(C.QQuickWindow_virtualbase_format(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickWindow) OnFormat(slot func(super func() *qt.QSurfaceFormat) *qt.QSurfaceFormat) {
	ok := C.QQuickWindow_override_virtual_format(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_format
func miqt_exec_callback_QQuickWindow_format(self *C.QQuickWindow, cb C.intptr_t) *C.QSurfaceFormat {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QSurfaceFormat) *qt.QSurfaceFormat)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_Format)

	return (*C.QSurfaceFormat)(virtualReturn.UnsafePointer())

}

func (this *QQuickWindow) callVirtualBase_Size() *qt.QSize {

	_goptr := qt.UnsafeNewQSize(unsafe.Pointer(C.QQuickWindow_virtualbase_size(unsafe.Pointer(this.h))))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr

}
func (this *QQuickWindow) OnSize(slot func(super func() *qt.QSize) *qt.QSize) {
	ok := C.QQuickWindow_override_virtual_size(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_size
func miqt_exec_callback_QQuickWindow_size(self *C.QQuickWindow, cb C.intptr_t) *C.QSize {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *qt.QSize) *qt.QSize)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_Size)

	return (*C.QSize)(virtualReturn.UnsafePointer())

}

func (this *QQuickWindow) callVirtualBase_MoveEvent(param1 *qt.QMoveEvent) {

	C.QQuickWindow_virtualbase_moveEvent(unsafe.Pointer(this.h), (*C.QMoveEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnMoveEvent(slot func(super func(param1 *qt.QMoveEvent), param1 *qt.QMoveEvent)) {
	ok := C.QQuickWindow_override_virtual_moveEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_moveEvent
func miqt_exec_callback_QQuickWindow_moveEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QMoveEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QMoveEvent), param1 *qt.QMoveEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMoveEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_MoveEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_TouchEvent(param1 *qt.QTouchEvent) {

	C.QQuickWindow_virtualbase_touchEvent(unsafe.Pointer(this.h), (*C.QTouchEvent)(param1.UnsafePointer()))

}
func (this *QQuickWindow) OnTouchEvent(slot func(super func(param1 *qt.QTouchEvent), param1 *qt.QTouchEvent)) {
	ok := C.QQuickWindow_override_virtual_touchEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_touchEvent
func miqt_exec_callback_QQuickWindow_touchEvent(self *C.QQuickWindow, cb C.intptr_t, param1 *C.QTouchEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *qt.QTouchEvent), param1 *qt.QTouchEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTouchEvent(unsafe.Pointer(param1))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_TouchEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_NativeEvent(eventType []byte, message unsafe.Pointer, result *int64) bool {
	eventType_alias := C.struct_miqt_string{}
	if len(eventType) > 0 {
		eventType_alias.data = (*C.char)(unsafe.Pointer(&eventType[0]))
	} else {
		eventType_alias.data = (*C.char)(unsafe.Pointer(nil))
	}
	eventType_alias.len = C.size_t(len(eventType))

	return (bool)(C.QQuickWindow_virtualbase_nativeEvent(unsafe.Pointer(this.h), eventType_alias, message, (*C.long)(unsafe.Pointer(result))))

}
func (this *QQuickWindow) OnNativeEvent(slot func(super func(eventType []byte, message unsafe.Pointer, result *int64) bool, eventType []byte, message unsafe.Pointer, result *int64) bool) {
	ok := C.QQuickWindow_override_virtual_nativeEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_nativeEvent
func miqt_exec_callback_QQuickWindow_nativeEvent(self *C.QQuickWindow, cb C.intptr_t, eventType C.struct_miqt_string, message unsafe.Pointer, result *C.long) C.bool {
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

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_NativeEvent, slotval1, slotval2, slotval3)

	return (C.bool)(virtualReturn)

}

func (this *QQuickWindow) callVirtualBase_EventFilter(watched *qt.QObject, event *qt.QEvent) bool {

	return (bool)(C.QQuickWindow_virtualbase_eventFilter(unsafe.Pointer(this.h), (*C.QObject)(watched.UnsafePointer()), (*C.QEvent)(event.UnsafePointer())))

}
func (this *QQuickWindow) OnEventFilter(slot func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool) {
	ok := C.QQuickWindow_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_eventFilter
func miqt_exec_callback_QQuickWindow_eventFilter(self *C.QQuickWindow, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *qt.QObject, event *qt.QEvent) bool, watched *qt.QObject, event *qt.QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQObject(unsafe.Pointer(watched))

	slotval2 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	virtualReturn := gofunc((&QQuickWindow{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QQuickWindow) callVirtualBase_TimerEvent(event *qt.QTimerEvent) {

	C.QQuickWindow_virtualbase_timerEvent(unsafe.Pointer(this.h), (*C.QTimerEvent)(event.UnsafePointer()))

}
func (this *QQuickWindow) OnTimerEvent(slot func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent)) {
	ok := C.QQuickWindow_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_timerEvent
func miqt_exec_callback_QQuickWindow_timerEvent(self *C.QQuickWindow, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QTimerEvent), event *qt.QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQTimerEvent(unsafe.Pointer(event))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_ChildEvent(event *qt.QChildEvent) {

	C.QQuickWindow_virtualbase_childEvent(unsafe.Pointer(this.h), (*C.QChildEvent)(event.UnsafePointer()))

}
func (this *QQuickWindow) OnChildEvent(slot func(super func(event *qt.QChildEvent), event *qt.QChildEvent)) {
	ok := C.QQuickWindow_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_childEvent
func miqt_exec_callback_QQuickWindow_childEvent(self *C.QQuickWindow, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QChildEvent), event *qt.QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQChildEvent(unsafe.Pointer(event))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_CustomEvent(event *qt.QEvent) {

	C.QQuickWindow_virtualbase_customEvent(unsafe.Pointer(this.h), (*C.QEvent)(event.UnsafePointer()))

}
func (this *QQuickWindow) OnCustomEvent(slot func(super func(event *qt.QEvent), event *qt.QEvent)) {
	ok := C.QQuickWindow_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_customEvent
func miqt_exec_callback_QQuickWindow_customEvent(self *C.QQuickWindow, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *qt.QEvent), event *qt.QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQEvent(unsafe.Pointer(event))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QQuickWindow) callVirtualBase_ConnectNotify(signal *qt.QMetaMethod) {

	C.QQuickWindow_virtualbase_connectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickWindow) OnConnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickWindow_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_connectNotify
func miqt_exec_callback_QQuickWindow_connectNotify(self *C.QQuickWindow, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QQuickWindow) callVirtualBase_DisconnectNotify(signal *qt.QMetaMethod) {

	C.QQuickWindow_virtualbase_disconnectNotify(unsafe.Pointer(this.h), (*C.QMetaMethod)(signal.UnsafePointer()))

}
func (this *QQuickWindow) OnDisconnectNotify(slot func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod)) {
	ok := C.QQuickWindow_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QQuickWindow_disconnectNotify
func miqt_exec_callback_QQuickWindow_disconnectNotify(self *C.QQuickWindow, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *qt.QMetaMethod), signal *qt.QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := qt.UnsafeNewQMetaMethod(unsafe.Pointer(signal))

	gofunc((&QQuickWindow{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QQuickWindow) Delete() {
	C.QQuickWindow_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickWindow) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickWindow) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QQuickWindow__GraphicsStateInfo struct {
	h *C.QQuickWindow__GraphicsStateInfo
}

func (this *QQuickWindow__GraphicsStateInfo) cPointer() *C.QQuickWindow__GraphicsStateInfo {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QQuickWindow__GraphicsStateInfo) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQQuickWindow__GraphicsStateInfo constructs the type using only CGO pointers.
func newQQuickWindow__GraphicsStateInfo(h *C.QQuickWindow__GraphicsStateInfo) *QQuickWindow__GraphicsStateInfo {
	if h == nil {
		return nil
	}

	return &QQuickWindow__GraphicsStateInfo{h: h}
}

// UnsafeNewQQuickWindow__GraphicsStateInfo constructs the type using only unsafe pointers.
func UnsafeNewQQuickWindow__GraphicsStateInfo(h unsafe.Pointer) *QQuickWindow__GraphicsStateInfo {
	return newQQuickWindow__GraphicsStateInfo((*C.QQuickWindow__GraphicsStateInfo)(h))
}

// Delete this object from C++ memory.
func (this *QQuickWindow__GraphicsStateInfo) Delete() {
	C.QQuickWindow__GraphicsStateInfo_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QQuickWindow__GraphicsStateInfo) GoGC() {
	runtime.SetFinalizer(this, func(this *QQuickWindow__GraphicsStateInfo) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
