package qt

/*

#include "gen_qconcatenatetablesproxymodel.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QConcatenateTablesProxyModel struct {
	h *C.QConcatenateTablesProxyModel
	*QAbstractItemModel
}

func (this *QConcatenateTablesProxyModel) cPointer() *C.QConcatenateTablesProxyModel {
	if this == nil {
		return nil
	}
	return this.h
}

func newQConcatenateTablesProxyModel(h *C.QConcatenateTablesProxyModel) *QConcatenateTablesProxyModel {
	if h == nil {
		return nil
	}
	return &QConcatenateTablesProxyModel{h: h, QAbstractItemModel: newQAbstractItemModel_U(unsafe.Pointer(h))}
}

func newQConcatenateTablesProxyModel_U(h unsafe.Pointer) *QConcatenateTablesProxyModel {
	return newQConcatenateTablesProxyModel((*C.QConcatenateTablesProxyModel)(h))
}

// NewQConcatenateTablesProxyModel constructs a new QConcatenateTablesProxyModel object.
func NewQConcatenateTablesProxyModel() *QConcatenateTablesProxyModel {
	ret := C.QConcatenateTablesProxyModel_new()
	return newQConcatenateTablesProxyModel(ret)
}

// NewQConcatenateTablesProxyModel2 constructs a new QConcatenateTablesProxyModel object.
func NewQConcatenateTablesProxyModel2(parent *QObject) *QConcatenateTablesProxyModel {
	ret := C.QConcatenateTablesProxyModel_new2(parent.cPointer())
	return newQConcatenateTablesProxyModel(ret)
}

func (this *QConcatenateTablesProxyModel) MetaObject() *QMetaObject {
	_ret := C.QConcatenateTablesProxyModel_MetaObject(this.h)
	return newQMetaObject_U(unsafe.Pointer(_ret))
}

func QConcatenateTablesProxyModel_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QConcatenateTablesProxyModel_Tr(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QConcatenateTablesProxyModel_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QConcatenateTablesProxyModel_TrUtf8(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QConcatenateTablesProxyModel) SourceModels() []*QAbstractItemModel {
	var _ma *C.struct_miqt_array = C.QConcatenateTablesProxyModel_SourceModels(this.h)
	_ret := make([]*QAbstractItemModel, int(_ma.len))
	_outCast := (*[0xffff]*C.QAbstractItemModel)(unsafe.Pointer(_ma.data)) // mrs jackson
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = newQAbstractItemModel(_outCast[i])
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func (this *QConcatenateTablesProxyModel) AddSourceModel(sourceModel *QAbstractItemModel) {
	C.QConcatenateTablesProxyModel_AddSourceModel(this.h, sourceModel.cPointer())
}

func (this *QConcatenateTablesProxyModel) RemoveSourceModel(sourceModel *QAbstractItemModel) {
	C.QConcatenateTablesProxyModel_RemoveSourceModel(this.h, sourceModel.cPointer())
}

func (this *QConcatenateTablesProxyModel) MapFromSource(sourceIndex *QModelIndex) *QModelIndex {
	_ret := C.QConcatenateTablesProxyModel_MapFromSource(this.h, sourceIndex.cPointer())
	_goptr := newQModelIndex(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QConcatenateTablesProxyModel) MapToSource(proxyIndex *QModelIndex) *QModelIndex {
	_ret := C.QConcatenateTablesProxyModel_MapToSource(this.h, proxyIndex.cPointer())
	_goptr := newQModelIndex(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QConcatenateTablesProxyModel) Data(index *QModelIndex) *QVariant {
	_ret := C.QConcatenateTablesProxyModel_Data(this.h, index.cPointer())
	_goptr := newQVariant(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QConcatenateTablesProxyModel) SetData(index *QModelIndex, value *QVariant) bool {
	_ret := C.QConcatenateTablesProxyModel_SetData(this.h, index.cPointer(), value.cPointer())
	return (bool)(_ret)
}

func (this *QConcatenateTablesProxyModel) Flags(index *QModelIndex) int {
	_ret := C.QConcatenateTablesProxyModel_Flags(this.h, index.cPointer())
	return (int)(_ret)
}

func (this *QConcatenateTablesProxyModel) Index(row int, column int) *QModelIndex {
	_ret := C.QConcatenateTablesProxyModel_Index(this.h, (C.int)(row), (C.int)(column))
	_goptr := newQModelIndex(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QConcatenateTablesProxyModel) Parent(index *QModelIndex) *QModelIndex {
	_ret := C.QConcatenateTablesProxyModel_Parent(this.h, index.cPointer())
	_goptr := newQModelIndex(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QConcatenateTablesProxyModel) RowCount() int {
	_ret := C.QConcatenateTablesProxyModel_RowCount(this.h)
	return (int)(_ret)
}

func (this *QConcatenateTablesProxyModel) HeaderData(section int, orientation Orientation) *QVariant {
	_ret := C.QConcatenateTablesProxyModel_HeaderData(this.h, (C.int)(section), (C.uintptr_t)(orientation))
	_goptr := newQVariant(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QConcatenateTablesProxyModel) ColumnCount() int {
	_ret := C.QConcatenateTablesProxyModel_ColumnCount(this.h)
	return (int)(_ret)
}

func (this *QConcatenateTablesProxyModel) MimeTypes() []string {
	var _ma *C.struct_miqt_array = C.QConcatenateTablesProxyModel_MimeTypes(this.h)
	_ret := make([]string, int(_ma.len))
	_outCast := (*[0xffff]*C.struct_miqt_string)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = C.GoStringN(&_outCast[i].data, C.int(int64(_outCast[i].len)))
		C.free(unsafe.Pointer(_outCast[i])) // free the inner miqt_string*
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func (this *QConcatenateTablesProxyModel) MimeData(indexes []QModelIndex) *QMimeData {
	// For the C ABI, malloc a C array of raw pointers
	indexes_CArray := (*[0xffff]*C.QModelIndex)(C.malloc(C.size_t(8 * len(indexes))))
	defer C.free(unsafe.Pointer(indexes_CArray))
	for i := range indexes {
		indexes_CArray[i] = indexes[i].cPointer()
	}
	indexes_ma := &C.struct_miqt_array{len: C.size_t(len(indexes)), data: unsafe.Pointer(indexes_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(indexes_ma))
	_ret := C.QConcatenateTablesProxyModel_MimeData(this.h, indexes_ma)
	return newQMimeData_U(unsafe.Pointer(_ret))
}

func (this *QConcatenateTablesProxyModel) CanDropMimeData(data *QMimeData, action DropAction, row int, column int, parent *QModelIndex) bool {
	_ret := C.QConcatenateTablesProxyModel_CanDropMimeData(this.h, data.cPointer(), (C.uintptr_t)(action), (C.int)(row), (C.int)(column), parent.cPointer())
	return (bool)(_ret)
}

func (this *QConcatenateTablesProxyModel) DropMimeData(data *QMimeData, action DropAction, row int, column int, parent *QModelIndex) bool {
	_ret := C.QConcatenateTablesProxyModel_DropMimeData(this.h, data.cPointer(), (C.uintptr_t)(action), (C.int)(row), (C.int)(column), parent.cPointer())
	return (bool)(_ret)
}

func (this *QConcatenateTablesProxyModel) Span(index *QModelIndex) *QSize {
	_ret := C.QConcatenateTablesProxyModel_Span(this.h, index.cPointer())
	_goptr := newQSize(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QConcatenateTablesProxyModel_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QConcatenateTablesProxyModel_Tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QConcatenateTablesProxyModel_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QConcatenateTablesProxyModel_Tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QConcatenateTablesProxyModel_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QConcatenateTablesProxyModel_TrUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QConcatenateTablesProxyModel_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QConcatenateTablesProxyModel_TrUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QConcatenateTablesProxyModel) Data2(index *QModelIndex, role int) *QVariant {
	_ret := C.QConcatenateTablesProxyModel_Data2(this.h, index.cPointer(), (C.int)(role))
	_goptr := newQVariant(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QConcatenateTablesProxyModel) SetData3(index *QModelIndex, value *QVariant, role int) bool {
	_ret := C.QConcatenateTablesProxyModel_SetData3(this.h, index.cPointer(), value.cPointer(), (C.int)(role))
	return (bool)(_ret)
}

func (this *QConcatenateTablesProxyModel) Index3(row int, column int, parent *QModelIndex) *QModelIndex {
	_ret := C.QConcatenateTablesProxyModel_Index3(this.h, (C.int)(row), (C.int)(column), parent.cPointer())
	_goptr := newQModelIndex(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QConcatenateTablesProxyModel) RowCount1(parent *QModelIndex) int {
	_ret := C.QConcatenateTablesProxyModel_RowCount1(this.h, parent.cPointer())
	return (int)(_ret)
}

func (this *QConcatenateTablesProxyModel) HeaderData3(section int, orientation Orientation, role int) *QVariant {
	_ret := C.QConcatenateTablesProxyModel_HeaderData3(this.h, (C.int)(section), (C.uintptr_t)(orientation), (C.int)(role))
	_goptr := newQVariant(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QConcatenateTablesProxyModel) ColumnCount1(parent *QModelIndex) int {
	_ret := C.QConcatenateTablesProxyModel_ColumnCount1(this.h, parent.cPointer())
	return (int)(_ret)
}

// Delete this object from C++ memory.
func (this *QConcatenateTablesProxyModel) Delete() {
	C.QConcatenateTablesProxyModel_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QConcatenateTablesProxyModel) GoGC() {
	runtime.SetFinalizer(this, func(this *QConcatenateTablesProxyModel) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
