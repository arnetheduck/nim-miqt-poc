package qt

/*

#include "gen_qstringlistmodel.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QStringListModel struct {
	h *C.QStringListModel
	*QAbstractListModel
}

func (this *QStringListModel) cPointer() *C.QStringListModel {
	if this == nil {
		return nil
	}
	return this.h
}

func newQStringListModel(h *C.QStringListModel) *QStringListModel {
	if h == nil {
		return nil
	}
	return &QStringListModel{h: h, QAbstractListModel: newQAbstractListModel_U(unsafe.Pointer(h))}
}

func newQStringListModel_U(h unsafe.Pointer) *QStringListModel {
	return newQStringListModel((*C.QStringListModel)(h))
}

// NewQStringListModel constructs a new QStringListModel object.
func NewQStringListModel() *QStringListModel {
	ret := C.QStringListModel_new()
	return newQStringListModel(ret)
}

// NewQStringListModel2 constructs a new QStringListModel object.
func NewQStringListModel2(strings []string) *QStringListModel {
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	strings_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(strings))))
	defer C.free(unsafe.Pointer(strings_CArray))
	for i := range strings {
		single_ms := miqt_strdupg(strings[i])
		defer C.free(single_ms)
		strings_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	strings_ma := &C.struct_miqt_array{len: C.size_t(len(strings)), data: unsafe.Pointer(strings_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(strings_ma))
	ret := C.QStringListModel_new2(strings_ma)
	return newQStringListModel(ret)
}

// NewQStringListModel3 constructs a new QStringListModel object.
func NewQStringListModel3(parent *QObject) *QStringListModel {
	ret := C.QStringListModel_new3(parent.cPointer())
	return newQStringListModel(ret)
}

// NewQStringListModel4 constructs a new QStringListModel object.
func NewQStringListModel4(strings []string, parent *QObject) *QStringListModel {
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	strings_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(strings))))
	defer C.free(unsafe.Pointer(strings_CArray))
	for i := range strings {
		single_ms := miqt_strdupg(strings[i])
		defer C.free(single_ms)
		strings_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	strings_ma := &C.struct_miqt_array{len: C.size_t(len(strings)), data: unsafe.Pointer(strings_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(strings_ma))
	ret := C.QStringListModel_new4(strings_ma, parent.cPointer())
	return newQStringListModel(ret)
}

func (this *QStringListModel) MetaObject() *QMetaObject {
	_ret := C.QStringListModel_MetaObject(this.h)
	return newQMetaObject_U(unsafe.Pointer(_ret))
}

func QStringListModel_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QStringListModel_Tr(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QStringListModel_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QStringListModel_TrUtf8(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QStringListModel) RowCount() int {
	_ret := C.QStringListModel_RowCount(this.h)
	return (int)(_ret)
}

func (this *QStringListModel) Sibling(row int, column int, idx *QModelIndex) *QModelIndex {
	_ret := C.QStringListModel_Sibling(this.h, (C.int)(row), (C.int)(column), idx.cPointer())
	_goptr := newQModelIndex(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QStringListModel) Data(index *QModelIndex) *QVariant {
	_ret := C.QStringListModel_Data(this.h, index.cPointer())
	_goptr := newQVariant(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QStringListModel) SetData(index *QModelIndex, value *QVariant) bool {
	_ret := C.QStringListModel_SetData(this.h, index.cPointer(), value.cPointer())
	return (bool)(_ret)
}

func (this *QStringListModel) Flags(index *QModelIndex) int {
	_ret := C.QStringListModel_Flags(this.h, index.cPointer())
	return (int)(_ret)
}

func (this *QStringListModel) InsertRows(row int, count int) bool {
	_ret := C.QStringListModel_InsertRows(this.h, (C.int)(row), (C.int)(count))
	return (bool)(_ret)
}

func (this *QStringListModel) RemoveRows(row int, count int) bool {
	_ret := C.QStringListModel_RemoveRows(this.h, (C.int)(row), (C.int)(count))
	return (bool)(_ret)
}

func (this *QStringListModel) MoveRows(sourceParent *QModelIndex, sourceRow int, count int, destinationParent *QModelIndex, destinationChild int) bool {
	_ret := C.QStringListModel_MoveRows(this.h, sourceParent.cPointer(), (C.int)(sourceRow), (C.int)(count), destinationParent.cPointer(), (C.int)(destinationChild))
	return (bool)(_ret)
}

func (this *QStringListModel) Sort(column int) {
	C.QStringListModel_Sort(this.h, (C.int)(column))
}

func (this *QStringListModel) StringList() []string {
	var _ma *C.struct_miqt_array = C.QStringListModel_StringList(this.h)
	_ret := make([]string, int(_ma.len))
	_outCast := (*[0xffff]*C.struct_miqt_string)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = C.GoStringN(&_outCast[i].data, C.int(int64(_outCast[i].len)))
		C.free(unsafe.Pointer(_outCast[i])) // free the inner miqt_string*
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func (this *QStringListModel) SetStringList(strings []string) {
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	strings_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(strings))))
	defer C.free(unsafe.Pointer(strings_CArray))
	for i := range strings {
		single_ms := miqt_strdupg(strings[i])
		defer C.free(single_ms)
		strings_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	strings_ma := &C.struct_miqt_array{len: C.size_t(len(strings)), data: unsafe.Pointer(strings_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(strings_ma))
	C.QStringListModel_SetStringList(this.h, strings_ma)
}

func (this *QStringListModel) SupportedDropActions() int {
	_ret := C.QStringListModel_SupportedDropActions(this.h)
	return (int)(_ret)
}

func QStringListModel_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QStringListModel_Tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QStringListModel_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QStringListModel_Tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QStringListModel_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QStringListModel_TrUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QStringListModel_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QStringListModel_TrUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QStringListModel) RowCount1(parent *QModelIndex) int {
	_ret := C.QStringListModel_RowCount1(this.h, parent.cPointer())
	return (int)(_ret)
}

func (this *QStringListModel) Data2(index *QModelIndex, role int) *QVariant {
	_ret := C.QStringListModel_Data2(this.h, index.cPointer(), (C.int)(role))
	_goptr := newQVariant(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QStringListModel) SetData3(index *QModelIndex, value *QVariant, role int) bool {
	_ret := C.QStringListModel_SetData3(this.h, index.cPointer(), value.cPointer(), (C.int)(role))
	return (bool)(_ret)
}

func (this *QStringListModel) InsertRows3(row int, count int, parent *QModelIndex) bool {
	_ret := C.QStringListModel_InsertRows3(this.h, (C.int)(row), (C.int)(count), parent.cPointer())
	return (bool)(_ret)
}

func (this *QStringListModel) RemoveRows3(row int, count int, parent *QModelIndex) bool {
	_ret := C.QStringListModel_RemoveRows3(this.h, (C.int)(row), (C.int)(count), parent.cPointer())
	return (bool)(_ret)
}

func (this *QStringListModel) Sort2(column int, order SortOrder) {
	C.QStringListModel_Sort2(this.h, (C.int)(column), (C.uintptr_t)(order))
}

// Delete this object from C++ memory.
func (this *QStringListModel) Delete() {
	C.QStringListModel_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QStringListModel) GoGC() {
	runtime.SetFinalizer(this, func(this *QStringListModel) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
