package qt6

/*

#include "gen_qbackingstore.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QBackingStore struct {
	h *C.QBackingStore
}

func (this *QBackingStore) cPointer() *C.QBackingStore {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QBackingStore) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQBackingStore constructs the type using only CGO pointers.
func newQBackingStore(h *C.QBackingStore) *QBackingStore {
	if h == nil {
		return nil
	}

	return &QBackingStore{h: h}
}

// UnsafeNewQBackingStore constructs the type using only unsafe pointers.
func UnsafeNewQBackingStore(h unsafe.Pointer) *QBackingStore {
	return newQBackingStore((*C.QBackingStore)(h))
}

// NewQBackingStore constructs a new QBackingStore object.
func NewQBackingStore(window *QWindow) *QBackingStore {

	return newQBackingStore(C.QBackingStore_new(window.cPointer()))
}

func (this *QBackingStore) Window() *QWindow {
	return newQWindow(C.QBackingStore_window(this.h))
}

func (this *QBackingStore) PaintDevice() *QPaintDevice {
	return newQPaintDevice(C.QBackingStore_paintDevice(this.h))
}

func (this *QBackingStore) Flush(region *QRegion) {
	C.QBackingStore_flush(this.h, region.cPointer())
}

func (this *QBackingStore) Resize(size *QSize) {
	C.QBackingStore_resize(this.h, size.cPointer())
}

func (this *QBackingStore) Size() *QSize {
	_goptr := newQSize(C.QBackingStore_size(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QBackingStore) Scroll(area *QRegion, dx int, dy int) bool {
	return (bool)(C.QBackingStore_scroll(this.h, area.cPointer(), (C.int)(dx), (C.int)(dy)))
}

func (this *QBackingStore) BeginPaint(param1 *QRegion) {
	C.QBackingStore_beginPaint(this.h, param1.cPointer())
}

func (this *QBackingStore) EndPaint() {
	C.QBackingStore_endPaint(this.h)
}

func (this *QBackingStore) SetStaticContents(region *QRegion) {
	C.QBackingStore_setStaticContents(this.h, region.cPointer())
}

func (this *QBackingStore) StaticContents() *QRegion {
	_goptr := newQRegion(C.QBackingStore_staticContents(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QBackingStore) HasStaticContents() bool {
	return (bool)(C.QBackingStore_hasStaticContents(this.h))
}

func (this *QBackingStore) Flush2(region *QRegion, window *QWindow) {
	C.QBackingStore_flush2(this.h, region.cPointer(), window.cPointer())
}

func (this *QBackingStore) Flush3(region *QRegion, window *QWindow, offset *QPoint) {
	C.QBackingStore_flush3(this.h, region.cPointer(), window.cPointer(), offset.cPointer())
}

// Delete this object from C++ memory.
func (this *QBackingStore) Delete() {
	C.QBackingStore_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QBackingStore) GoGC() {
	runtime.SetFinalizer(this, func(this *QBackingStore) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
