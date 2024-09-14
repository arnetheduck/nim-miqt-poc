package qt

/*

#include "gen_qtimeline.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QTimeLine__State int

const (
	QTimeLine__State__NotRunning QTimeLine__State = 0
	QTimeLine__State__Paused     QTimeLine__State = 1
	QTimeLine__State__Running    QTimeLine__State = 2
)

type QTimeLine__Direction int

const (
	QTimeLine__Direction__Forward  QTimeLine__Direction = 0
	QTimeLine__Direction__Backward QTimeLine__Direction = 1
)

type QTimeLine__CurveShape int

const (
	QTimeLine__CurveShape__EaseInCurve    QTimeLine__CurveShape = 0
	QTimeLine__CurveShape__EaseOutCurve   QTimeLine__CurveShape = 1
	QTimeLine__CurveShape__EaseInOutCurve QTimeLine__CurveShape = 2
	QTimeLine__CurveShape__LinearCurve    QTimeLine__CurveShape = 3
	QTimeLine__CurveShape__SineCurve      QTimeLine__CurveShape = 4
	QTimeLine__CurveShape__CosineCurve    QTimeLine__CurveShape = 5
)

type QTimeLine struct {
	h *C.QTimeLine
	*QObject
}

func (this *QTimeLine) cPointer() *C.QTimeLine {
	if this == nil {
		return nil
	}
	return this.h
}

func newQTimeLine(h *C.QTimeLine) *QTimeLine {
	if h == nil {
		return nil
	}
	return &QTimeLine{h: h, QObject: newQObject_U(unsafe.Pointer(h))}
}

func newQTimeLine_U(h unsafe.Pointer) *QTimeLine {
	return newQTimeLine((*C.QTimeLine)(h))
}

// NewQTimeLine constructs a new QTimeLine object.
func NewQTimeLine() *QTimeLine {
	ret := C.QTimeLine_new()
	return newQTimeLine(ret)
}

// NewQTimeLine2 constructs a new QTimeLine object.
func NewQTimeLine2(duration int) *QTimeLine {
	ret := C.QTimeLine_new2((C.int)(duration))
	return newQTimeLine(ret)
}

// NewQTimeLine3 constructs a new QTimeLine object.
func NewQTimeLine3(duration int, parent *QObject) *QTimeLine {
	ret := C.QTimeLine_new3((C.int)(duration), parent.cPointer())
	return newQTimeLine(ret)
}

func (this *QTimeLine) MetaObject() *QMetaObject {
	_ret := C.QTimeLine_MetaObject(this.h)
	return newQMetaObject_U(unsafe.Pointer(_ret))
}

func QTimeLine_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QTimeLine_Tr(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QTimeLine_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QTimeLine_TrUtf8(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QTimeLine) State() QTimeLine__State {
	_ret := C.QTimeLine_State(this.h)
	return (QTimeLine__State)(_ret)
}

func (this *QTimeLine) LoopCount() int {
	_ret := C.QTimeLine_LoopCount(this.h)
	return (int)(_ret)
}

func (this *QTimeLine) SetLoopCount(count int) {
	C.QTimeLine_SetLoopCount(this.h, (C.int)(count))
}

func (this *QTimeLine) Direction() QTimeLine__Direction {
	_ret := C.QTimeLine_Direction(this.h)
	return (QTimeLine__Direction)(_ret)
}

func (this *QTimeLine) SetDirection(direction QTimeLine__Direction) {
	C.QTimeLine_SetDirection(this.h, (C.uintptr_t)(direction))
}

func (this *QTimeLine) Duration() int {
	_ret := C.QTimeLine_Duration(this.h)
	return (int)(_ret)
}

func (this *QTimeLine) SetDuration(duration int) {
	C.QTimeLine_SetDuration(this.h, (C.int)(duration))
}

func (this *QTimeLine) StartFrame() int {
	_ret := C.QTimeLine_StartFrame(this.h)
	return (int)(_ret)
}

func (this *QTimeLine) SetStartFrame(frame int) {
	C.QTimeLine_SetStartFrame(this.h, (C.int)(frame))
}

func (this *QTimeLine) EndFrame() int {
	_ret := C.QTimeLine_EndFrame(this.h)
	return (int)(_ret)
}

func (this *QTimeLine) SetEndFrame(frame int) {
	C.QTimeLine_SetEndFrame(this.h, (C.int)(frame))
}

func (this *QTimeLine) SetFrameRange(startFrame int, endFrame int) {
	C.QTimeLine_SetFrameRange(this.h, (C.int)(startFrame), (C.int)(endFrame))
}

func (this *QTimeLine) UpdateInterval() int {
	_ret := C.QTimeLine_UpdateInterval(this.h)
	return (int)(_ret)
}

func (this *QTimeLine) SetUpdateInterval(interval int) {
	C.QTimeLine_SetUpdateInterval(this.h, (C.int)(interval))
}

func (this *QTimeLine) CurveShape() QTimeLine__CurveShape {
	_ret := C.QTimeLine_CurveShape(this.h)
	return (QTimeLine__CurveShape)(_ret)
}

func (this *QTimeLine) SetCurveShape(shape QTimeLine__CurveShape) {
	C.QTimeLine_SetCurveShape(this.h, (C.uintptr_t)(shape))
}

func (this *QTimeLine) EasingCurve() *QEasingCurve {
	_ret := C.QTimeLine_EasingCurve(this.h)
	_goptr := newQEasingCurve(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QTimeLine) SetEasingCurve(curve *QEasingCurve) {
	C.QTimeLine_SetEasingCurve(this.h, curve.cPointer())
}

func (this *QTimeLine) CurrentTime() int {
	_ret := C.QTimeLine_CurrentTime(this.h)
	return (int)(_ret)
}

func (this *QTimeLine) CurrentFrame() int {
	_ret := C.QTimeLine_CurrentFrame(this.h)
	return (int)(_ret)
}

func (this *QTimeLine) CurrentValue() float64 {
	_ret := C.QTimeLine_CurrentValue(this.h)
	return (float64)(_ret)
}

func (this *QTimeLine) FrameForTime(msec int) int {
	_ret := C.QTimeLine_FrameForTime(this.h, (C.int)(msec))
	return (int)(_ret)
}

func (this *QTimeLine) ValueForTime(msec int) float64 {
	_ret := C.QTimeLine_ValueForTime(this.h, (C.int)(msec))
	return (float64)(_ret)
}

func (this *QTimeLine) Start() {
	C.QTimeLine_Start(this.h)
}

func (this *QTimeLine) Resume() {
	C.QTimeLine_Resume(this.h)
}

func (this *QTimeLine) Stop() {
	C.QTimeLine_Stop(this.h)
}

func (this *QTimeLine) SetPaused(paused bool) {
	C.QTimeLine_SetPaused(this.h, (C.bool)(paused))
}

func (this *QTimeLine) SetCurrentTime(msec int) {
	C.QTimeLine_SetCurrentTime(this.h, (C.int)(msec))
}

func (this *QTimeLine) ToggleDirection() {
	C.QTimeLine_ToggleDirection(this.h)
}

func QTimeLine_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QTimeLine_Tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QTimeLine_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QTimeLine_Tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QTimeLine_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QTimeLine_TrUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QTimeLine_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QTimeLine_TrUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

// Delete this object from C++ memory.
func (this *QTimeLine) Delete() {
	C.QTimeLine_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QTimeLine) GoGC() {
	runtime.SetFinalizer(this, func(this *QTimeLine) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
