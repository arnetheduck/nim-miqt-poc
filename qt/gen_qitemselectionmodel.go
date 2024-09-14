package qt

/*

#include "gen_qitemselectionmodel.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QItemSelectionModel__SelectionFlag int

const (
	QItemSelectionModel__SelectionFlag__NoUpdate       QItemSelectionModel__SelectionFlag = 0
	QItemSelectionModel__SelectionFlag__Clear          QItemSelectionModel__SelectionFlag = 1
	QItemSelectionModel__SelectionFlag__Select         QItemSelectionModel__SelectionFlag = 2
	QItemSelectionModel__SelectionFlag__Deselect       QItemSelectionModel__SelectionFlag = 4
	QItemSelectionModel__SelectionFlag__Toggle         QItemSelectionModel__SelectionFlag = 8
	QItemSelectionModel__SelectionFlag__Current        QItemSelectionModel__SelectionFlag = 16
	QItemSelectionModel__SelectionFlag__Rows           QItemSelectionModel__SelectionFlag = 32
	QItemSelectionModel__SelectionFlag__Columns        QItemSelectionModel__SelectionFlag = 64
	QItemSelectionModel__SelectionFlag__SelectCurrent  QItemSelectionModel__SelectionFlag = 18
	QItemSelectionModel__SelectionFlag__ToggleCurrent  QItemSelectionModel__SelectionFlag = 24
	QItemSelectionModel__SelectionFlag__ClearAndSelect QItemSelectionModel__SelectionFlag = 3
)

type QItemSelectionRange struct {
	h *C.QItemSelectionRange
}

func (this *QItemSelectionRange) cPointer() *C.QItemSelectionRange {
	if this == nil {
		return nil
	}
	return this.h
}

func newQItemSelectionRange(h *C.QItemSelectionRange) *QItemSelectionRange {
	if h == nil {
		return nil
	}
	return &QItemSelectionRange{h: h}
}

func newQItemSelectionRange_U(h unsafe.Pointer) *QItemSelectionRange {
	return newQItemSelectionRange((*C.QItemSelectionRange)(h))
}

// NewQItemSelectionRange constructs a new QItemSelectionRange object.
func NewQItemSelectionRange() *QItemSelectionRange {
	ret := C.QItemSelectionRange_new()
	return newQItemSelectionRange(ret)
}

// NewQItemSelectionRange2 constructs a new QItemSelectionRange object.
func NewQItemSelectionRange2(other *QItemSelectionRange) *QItemSelectionRange {
	ret := C.QItemSelectionRange_new2(other.cPointer())
	return newQItemSelectionRange(ret)
}

// NewQItemSelectionRange3 constructs a new QItemSelectionRange object.
func NewQItemSelectionRange3(topL *QModelIndex, bottomR *QModelIndex) *QItemSelectionRange {
	ret := C.QItemSelectionRange_new3(topL.cPointer(), bottomR.cPointer())
	return newQItemSelectionRange(ret)
}

// NewQItemSelectionRange4 constructs a new QItemSelectionRange object.
func NewQItemSelectionRange4(index *QModelIndex) *QItemSelectionRange {
	ret := C.QItemSelectionRange_new4(index.cPointer())
	return newQItemSelectionRange(ret)
}

func (this *QItemSelectionRange) OperatorAssign(other *QItemSelectionRange) {
	C.QItemSelectionRange_OperatorAssign(this.h, other.cPointer())
}

func (this *QItemSelectionRange) Swap(other *QItemSelectionRange) {
	C.QItemSelectionRange_Swap(this.h, other.cPointer())
}

func (this *QItemSelectionRange) Top() int {
	_ret := C.QItemSelectionRange_Top(this.h)
	return (int)(_ret)
}

func (this *QItemSelectionRange) Left() int {
	_ret := C.QItemSelectionRange_Left(this.h)
	return (int)(_ret)
}

func (this *QItemSelectionRange) Bottom() int {
	_ret := C.QItemSelectionRange_Bottom(this.h)
	return (int)(_ret)
}

func (this *QItemSelectionRange) Right() int {
	_ret := C.QItemSelectionRange_Right(this.h)
	return (int)(_ret)
}

func (this *QItemSelectionRange) Width() int {
	_ret := C.QItemSelectionRange_Width(this.h)
	return (int)(_ret)
}

func (this *QItemSelectionRange) Height() int {
	_ret := C.QItemSelectionRange_Height(this.h)
	return (int)(_ret)
}

func (this *QItemSelectionRange) TopLeft() *QPersistentModelIndex {
	_ret := C.QItemSelectionRange_TopLeft(this.h)
	return newQPersistentModelIndex_U(unsafe.Pointer(_ret))
}

func (this *QItemSelectionRange) BottomRight() *QPersistentModelIndex {
	_ret := C.QItemSelectionRange_BottomRight(this.h)
	return newQPersistentModelIndex_U(unsafe.Pointer(_ret))
}

func (this *QItemSelectionRange) Parent() *QModelIndex {
	_ret := C.QItemSelectionRange_Parent(this.h)
	_goptr := newQModelIndex(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QItemSelectionRange) Model() *QAbstractItemModel {
	_ret := C.QItemSelectionRange_Model(this.h)
	return newQAbstractItemModel_U(unsafe.Pointer(_ret))
}

func (this *QItemSelectionRange) Contains(index *QModelIndex) bool {
	_ret := C.QItemSelectionRange_Contains(this.h, index.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionRange) Contains2(row int, column int, parentIndex *QModelIndex) bool {
	_ret := C.QItemSelectionRange_Contains2(this.h, (C.int)(row), (C.int)(column), parentIndex.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionRange) Intersects(other *QItemSelectionRange) bool {
	_ret := C.QItemSelectionRange_Intersects(this.h, other.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionRange) Intersected(other *QItemSelectionRange) *QItemSelectionRange {
	_ret := C.QItemSelectionRange_Intersected(this.h, other.cPointer())
	_goptr := newQItemSelectionRange(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QItemSelectionRange) OperatorEqual(other *QItemSelectionRange) bool {
	_ret := C.QItemSelectionRange_OperatorEqual(this.h, other.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionRange) OperatorNotEqual(other *QItemSelectionRange) bool {
	_ret := C.QItemSelectionRange_OperatorNotEqual(this.h, other.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionRange) OperatorLesser(other *QItemSelectionRange) bool {
	_ret := C.QItemSelectionRange_OperatorLesser(this.h, other.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionRange) IsValid() bool {
	_ret := C.QItemSelectionRange_IsValid(this.h)
	return (bool)(_ret)
}

func (this *QItemSelectionRange) IsEmpty() bool {
	_ret := C.QItemSelectionRange_IsEmpty(this.h)
	return (bool)(_ret)
}

func (this *QItemSelectionRange) Indexes() []QModelIndex {
	var _ma *C.struct_miqt_array = C.QItemSelectionRange_Indexes(this.h)
	_ret := make([]QModelIndex, int(_ma.len))
	_outCast := (*[0xffff]*C.QModelIndex)(unsafe.Pointer(_ma.data)) // mrs jackson
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = *newQModelIndex(_outCast[i])
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

// Delete this object from C++ memory.
func (this *QItemSelectionRange) Delete() {
	C.QItemSelectionRange_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QItemSelectionRange) GoGC() {
	runtime.SetFinalizer(this, func(this *QItemSelectionRange) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QItemSelectionModel struct {
	h *C.QItemSelectionModel
	*QObject
}

func (this *QItemSelectionModel) cPointer() *C.QItemSelectionModel {
	if this == nil {
		return nil
	}
	return this.h
}

func newQItemSelectionModel(h *C.QItemSelectionModel) *QItemSelectionModel {
	if h == nil {
		return nil
	}
	return &QItemSelectionModel{h: h, QObject: newQObject_U(unsafe.Pointer(h))}
}

func newQItemSelectionModel_U(h unsafe.Pointer) *QItemSelectionModel {
	return newQItemSelectionModel((*C.QItemSelectionModel)(h))
}

// NewQItemSelectionModel constructs a new QItemSelectionModel object.
func NewQItemSelectionModel() *QItemSelectionModel {
	ret := C.QItemSelectionModel_new()
	return newQItemSelectionModel(ret)
}

// NewQItemSelectionModel2 constructs a new QItemSelectionModel object.
func NewQItemSelectionModel2(model *QAbstractItemModel, parent *QObject) *QItemSelectionModel {
	ret := C.QItemSelectionModel_new2(model.cPointer(), parent.cPointer())
	return newQItemSelectionModel(ret)
}

// NewQItemSelectionModel3 constructs a new QItemSelectionModel object.
func NewQItemSelectionModel3(model *QAbstractItemModel) *QItemSelectionModel {
	ret := C.QItemSelectionModel_new3(model.cPointer())
	return newQItemSelectionModel(ret)
}

func (this *QItemSelectionModel) MetaObject() *QMetaObject {
	_ret := C.QItemSelectionModel_MetaObject(this.h)
	return newQMetaObject_U(unsafe.Pointer(_ret))
}

func QItemSelectionModel_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QItemSelectionModel_Tr(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QItemSelectionModel_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QItemSelectionModel_TrUtf8(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QItemSelectionModel) CurrentIndex() *QModelIndex {
	_ret := C.QItemSelectionModel_CurrentIndex(this.h)
	_goptr := newQModelIndex(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QItemSelectionModel) IsSelected(index *QModelIndex) bool {
	_ret := C.QItemSelectionModel_IsSelected(this.h, index.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionModel) IsRowSelected(row int) bool {
	_ret := C.QItemSelectionModel_IsRowSelected(this.h, (C.int)(row))
	return (bool)(_ret)
}

func (this *QItemSelectionModel) IsColumnSelected(column int) bool {
	_ret := C.QItemSelectionModel_IsColumnSelected(this.h, (C.int)(column))
	return (bool)(_ret)
}

func (this *QItemSelectionModel) RowIntersectsSelection(row int) bool {
	_ret := C.QItemSelectionModel_RowIntersectsSelection(this.h, (C.int)(row))
	return (bool)(_ret)
}

func (this *QItemSelectionModel) ColumnIntersectsSelection(column int) bool {
	_ret := C.QItemSelectionModel_ColumnIntersectsSelection(this.h, (C.int)(column))
	return (bool)(_ret)
}

func (this *QItemSelectionModel) HasSelection() bool {
	_ret := C.QItemSelectionModel_HasSelection(this.h)
	return (bool)(_ret)
}

func (this *QItemSelectionModel) SelectedIndexes() []QModelIndex {
	var _ma *C.struct_miqt_array = C.QItemSelectionModel_SelectedIndexes(this.h)
	_ret := make([]QModelIndex, int(_ma.len))
	_outCast := (*[0xffff]*C.QModelIndex)(unsafe.Pointer(_ma.data)) // mrs jackson
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = *newQModelIndex(_outCast[i])
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func (this *QItemSelectionModel) SelectedRows() []QModelIndex {
	var _ma *C.struct_miqt_array = C.QItemSelectionModel_SelectedRows(this.h)
	_ret := make([]QModelIndex, int(_ma.len))
	_outCast := (*[0xffff]*C.QModelIndex)(unsafe.Pointer(_ma.data)) // mrs jackson
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = *newQModelIndex(_outCast[i])
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func (this *QItemSelectionModel) SelectedColumns() []QModelIndex {
	var _ma *C.struct_miqt_array = C.QItemSelectionModel_SelectedColumns(this.h)
	_ret := make([]QModelIndex, int(_ma.len))
	_outCast := (*[0xffff]*C.QModelIndex)(unsafe.Pointer(_ma.data)) // mrs jackson
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = *newQModelIndex(_outCast[i])
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func (this *QItemSelectionModel) Model() *QAbstractItemModel {
	_ret := C.QItemSelectionModel_Model(this.h)
	return newQAbstractItemModel_U(unsafe.Pointer(_ret))
}

func (this *QItemSelectionModel) Model2() *QAbstractItemModel {
	_ret := C.QItemSelectionModel_Model2(this.h)
	return newQAbstractItemModel_U(unsafe.Pointer(_ret))
}

func (this *QItemSelectionModel) SetModel(model *QAbstractItemModel) {
	C.QItemSelectionModel_SetModel(this.h, model.cPointer())
}

func (this *QItemSelectionModel) SetCurrentIndex(index *QModelIndex, command int) {
	C.QItemSelectionModel_SetCurrentIndex(this.h, index.cPointer(), (C.int)(command))
}

func (this *QItemSelectionModel) Select(index *QModelIndex, command int) {
	C.QItemSelectionModel_Select(this.h, index.cPointer(), (C.int)(command))
}

func (this *QItemSelectionModel) Clear() {
	C.QItemSelectionModel_Clear(this.h)
}

func (this *QItemSelectionModel) Reset() {
	C.QItemSelectionModel_Reset(this.h)
}

func (this *QItemSelectionModel) ClearSelection() {
	C.QItemSelectionModel_ClearSelection(this.h)
}

func (this *QItemSelectionModel) ClearCurrentIndex() {
	C.QItemSelectionModel_ClearCurrentIndex(this.h)
}

func (this *QItemSelectionModel) CurrentChanged(current *QModelIndex, previous *QModelIndex) {
	C.QItemSelectionModel_CurrentChanged(this.h, current.cPointer(), previous.cPointer())
}
func (this *QItemSelectionModel) OnCurrentChanged(slot func(current *QModelIndex, previous *QModelIndex)) {
	C.QItemSelectionModel_connect_CurrentChanged(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QItemSelectionModel_CurrentChanged
func miqt_exec_callback_QItemSelectionModel_CurrentChanged(cb *C.void, current *C.QModelIndex, previous *C.QModelIndex) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(current *QModelIndex, previous *QModelIndex))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	current_ret := current
	slotval1 := newQModelIndex_U(unsafe.Pointer(current_ret))
	previous_ret := previous
	slotval2 := newQModelIndex_U(unsafe.Pointer(previous_ret))

	gofunc(slotval1, slotval2)
}

func (this *QItemSelectionModel) CurrentRowChanged(current *QModelIndex, previous *QModelIndex) {
	C.QItemSelectionModel_CurrentRowChanged(this.h, current.cPointer(), previous.cPointer())
}
func (this *QItemSelectionModel) OnCurrentRowChanged(slot func(current *QModelIndex, previous *QModelIndex)) {
	C.QItemSelectionModel_connect_CurrentRowChanged(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QItemSelectionModel_CurrentRowChanged
func miqt_exec_callback_QItemSelectionModel_CurrentRowChanged(cb *C.void, current *C.QModelIndex, previous *C.QModelIndex) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(current *QModelIndex, previous *QModelIndex))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	current_ret := current
	slotval1 := newQModelIndex_U(unsafe.Pointer(current_ret))
	previous_ret := previous
	slotval2 := newQModelIndex_U(unsafe.Pointer(previous_ret))

	gofunc(slotval1, slotval2)
}

func (this *QItemSelectionModel) CurrentColumnChanged(current *QModelIndex, previous *QModelIndex) {
	C.QItemSelectionModel_CurrentColumnChanged(this.h, current.cPointer(), previous.cPointer())
}
func (this *QItemSelectionModel) OnCurrentColumnChanged(slot func(current *QModelIndex, previous *QModelIndex)) {
	C.QItemSelectionModel_connect_CurrentColumnChanged(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QItemSelectionModel_CurrentColumnChanged
func miqt_exec_callback_QItemSelectionModel_CurrentColumnChanged(cb *C.void, current *C.QModelIndex, previous *C.QModelIndex) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(current *QModelIndex, previous *QModelIndex))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	current_ret := current
	slotval1 := newQModelIndex_U(unsafe.Pointer(current_ret))
	previous_ret := previous
	slotval2 := newQModelIndex_U(unsafe.Pointer(previous_ret))

	gofunc(slotval1, slotval2)
}

func (this *QItemSelectionModel) ModelChanged(model *QAbstractItemModel) {
	C.QItemSelectionModel_ModelChanged(this.h, model.cPointer())
}
func (this *QItemSelectionModel) OnModelChanged(slot func(model *QAbstractItemModel)) {
	C.QItemSelectionModel_connect_ModelChanged(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QItemSelectionModel_ModelChanged
func miqt_exec_callback_QItemSelectionModel_ModelChanged(cb *C.void, model *C.QAbstractItemModel) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(model *QAbstractItemModel))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	model_ret := model
	slotval1 := newQAbstractItemModel_U(unsafe.Pointer(model_ret))

	gofunc(slotval1)
}

func QItemSelectionModel_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QItemSelectionModel_Tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QItemSelectionModel_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QItemSelectionModel_Tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QItemSelectionModel_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QItemSelectionModel_TrUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QItemSelectionModel_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QItemSelectionModel_TrUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QItemSelectionModel) IsRowSelected2(row int, parent *QModelIndex) bool {
	_ret := C.QItemSelectionModel_IsRowSelected2(this.h, (C.int)(row), parent.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionModel) IsColumnSelected2(column int, parent *QModelIndex) bool {
	_ret := C.QItemSelectionModel_IsColumnSelected2(this.h, (C.int)(column), parent.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionModel) RowIntersectsSelection2(row int, parent *QModelIndex) bool {
	_ret := C.QItemSelectionModel_RowIntersectsSelection2(this.h, (C.int)(row), parent.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionModel) ColumnIntersectsSelection2(column int, parent *QModelIndex) bool {
	_ret := C.QItemSelectionModel_ColumnIntersectsSelection2(this.h, (C.int)(column), parent.cPointer())
	return (bool)(_ret)
}

func (this *QItemSelectionModel) SelectedRows1(column int) []QModelIndex {
	var _ma *C.struct_miqt_array = C.QItemSelectionModel_SelectedRows1(this.h, (C.int)(column))
	_ret := make([]QModelIndex, int(_ma.len))
	_outCast := (*[0xffff]*C.QModelIndex)(unsafe.Pointer(_ma.data)) // mrs jackson
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = *newQModelIndex(_outCast[i])
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func (this *QItemSelectionModel) SelectedColumns1(row int) []QModelIndex {
	var _ma *C.struct_miqt_array = C.QItemSelectionModel_SelectedColumns1(this.h, (C.int)(row))
	_ret := make([]QModelIndex, int(_ma.len))
	_outCast := (*[0xffff]*C.QModelIndex)(unsafe.Pointer(_ma.data)) // mrs jackson
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = *newQModelIndex(_outCast[i])
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

// Delete this object from C++ memory.
func (this *QItemSelectionModel) Delete() {
	C.QItemSelectionModel_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QItemSelectionModel) GoGC() {
	runtime.SetFinalizer(this, func(this *QItemSelectionModel) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
