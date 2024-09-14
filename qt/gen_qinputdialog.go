package qt

/*

#include "gen_qinputdialog.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QInputDialog__InputDialogOption int

const (
	QInputDialog__InputDialogOption__NoButtons                    QInputDialog__InputDialogOption = 1
	QInputDialog__InputDialogOption__UseListViewForComboBoxItems  QInputDialog__InputDialogOption = 2
	QInputDialog__InputDialogOption__UsePlainTextEditForTextInput QInputDialog__InputDialogOption = 4
)

type QInputDialog__InputMode int

const (
	QInputDialog__InputMode__TextInput   QInputDialog__InputMode = 0
	QInputDialog__InputMode__IntInput    QInputDialog__InputMode = 1
	QInputDialog__InputMode__DoubleInput QInputDialog__InputMode = 2
)

type QInputDialog struct {
	h *C.QInputDialog
	*QDialog
}

func (this *QInputDialog) cPointer() *C.QInputDialog {
	if this == nil {
		return nil
	}
	return this.h
}

func newQInputDialog(h *C.QInputDialog) *QInputDialog {
	if h == nil {
		return nil
	}
	return &QInputDialog{h: h, QDialog: newQDialog_U(unsafe.Pointer(h))}
}

func newQInputDialog_U(h unsafe.Pointer) *QInputDialog {
	return newQInputDialog((*C.QInputDialog)(h))
}

// NewQInputDialog constructs a new QInputDialog object.
func NewQInputDialog() *QInputDialog {
	ret := C.QInputDialog_new()
	return newQInputDialog(ret)
}

// NewQInputDialog2 constructs a new QInputDialog object.
func NewQInputDialog2(parent *QWidget) *QInputDialog {
	ret := C.QInputDialog_new2(parent.cPointer())
	return newQInputDialog(ret)
}

// NewQInputDialog3 constructs a new QInputDialog object.
func NewQInputDialog3(parent *QWidget, flags int) *QInputDialog {
	ret := C.QInputDialog_new3(parent.cPointer(), (C.int)(flags))
	return newQInputDialog(ret)
}

func (this *QInputDialog) MetaObject() *QMetaObject {
	_ret := C.QInputDialog_MetaObject(this.h)
	return newQMetaObject_U(unsafe.Pointer(_ret))
}

func QInputDialog_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QInputDialog_Tr(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms *C.struct_miqt_string = C.QInputDialog_TrUtf8(s_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QInputDialog) SetInputMode(mode QInputDialog__InputMode) {
	C.QInputDialog_SetInputMode(this.h, (C.uintptr_t)(mode))
}

func (this *QInputDialog) InputMode() QInputDialog__InputMode {
	_ret := C.QInputDialog_InputMode(this.h)
	return (QInputDialog__InputMode)(_ret)
}

func (this *QInputDialog) SetLabelText(text string) {
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	C.QInputDialog_SetLabelText(this.h, (*C.struct_miqt_string)(text_ms))
}

func (this *QInputDialog) LabelText() string {
	var _ms *C.struct_miqt_string = C.QInputDialog_LabelText(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QInputDialog) SetOption(option QInputDialog__InputDialogOption) {
	C.QInputDialog_SetOption(this.h, (C.uintptr_t)(option))
}

func (this *QInputDialog) TestOption(option QInputDialog__InputDialogOption) bool {
	_ret := C.QInputDialog_TestOption(this.h, (C.uintptr_t)(option))
	return (bool)(_ret)
}

func (this *QInputDialog) SetOptions(options int) {
	C.QInputDialog_SetOptions(this.h, (C.int)(options))
}

func (this *QInputDialog) Options() int {
	_ret := C.QInputDialog_Options(this.h)
	return (int)(_ret)
}

func (this *QInputDialog) SetTextValue(text string) {
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	C.QInputDialog_SetTextValue(this.h, (*C.struct_miqt_string)(text_ms))
}

func (this *QInputDialog) TextValue() string {
	var _ms *C.struct_miqt_string = C.QInputDialog_TextValue(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QInputDialog) SetTextEchoMode(mode QLineEdit__EchoMode) {
	C.QInputDialog_SetTextEchoMode(this.h, (C.uintptr_t)(mode))
}

func (this *QInputDialog) TextEchoMode() QLineEdit__EchoMode {
	_ret := C.QInputDialog_TextEchoMode(this.h)
	return (QLineEdit__EchoMode)(_ret)
}

func (this *QInputDialog) SetComboBoxEditable(editable bool) {
	C.QInputDialog_SetComboBoxEditable(this.h, (C.bool)(editable))
}

func (this *QInputDialog) IsComboBoxEditable() bool {
	_ret := C.QInputDialog_IsComboBoxEditable(this.h)
	return (bool)(_ret)
}

func (this *QInputDialog) SetComboBoxItems(items []string) {
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	items_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(items))))
	defer C.free(unsafe.Pointer(items_CArray))
	for i := range items {
		single_ms := miqt_strdupg(items[i])
		defer C.free(single_ms)
		items_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	items_ma := &C.struct_miqt_array{len: C.size_t(len(items)), data: unsafe.Pointer(items_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(items_ma))
	C.QInputDialog_SetComboBoxItems(this.h, items_ma)
}

func (this *QInputDialog) ComboBoxItems() []string {
	var _ma *C.struct_miqt_array = C.QInputDialog_ComboBoxItems(this.h)
	_ret := make([]string, int(_ma.len))
	_outCast := (*[0xffff]*C.struct_miqt_string)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = C.GoStringN(&_outCast[i].data, C.int(int64(_outCast[i].len)))
		C.free(unsafe.Pointer(_outCast[i])) // free the inner miqt_string*
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func (this *QInputDialog) SetIntValue(value int) {
	C.QInputDialog_SetIntValue(this.h, (C.int)(value))
}

func (this *QInputDialog) IntValue() int {
	_ret := C.QInputDialog_IntValue(this.h)
	return (int)(_ret)
}

func (this *QInputDialog) SetIntMinimum(min int) {
	C.QInputDialog_SetIntMinimum(this.h, (C.int)(min))
}

func (this *QInputDialog) IntMinimum() int {
	_ret := C.QInputDialog_IntMinimum(this.h)
	return (int)(_ret)
}

func (this *QInputDialog) SetIntMaximum(max int) {
	C.QInputDialog_SetIntMaximum(this.h, (C.int)(max))
}

func (this *QInputDialog) IntMaximum() int {
	_ret := C.QInputDialog_IntMaximum(this.h)
	return (int)(_ret)
}

func (this *QInputDialog) SetIntRange(min int, max int) {
	C.QInputDialog_SetIntRange(this.h, (C.int)(min), (C.int)(max))
}

func (this *QInputDialog) SetIntStep(step int) {
	C.QInputDialog_SetIntStep(this.h, (C.int)(step))
}

func (this *QInputDialog) IntStep() int {
	_ret := C.QInputDialog_IntStep(this.h)
	return (int)(_ret)
}

func (this *QInputDialog) SetDoubleValue(value float64) {
	C.QInputDialog_SetDoubleValue(this.h, (C.double)(value))
}

func (this *QInputDialog) DoubleValue() float64 {
	_ret := C.QInputDialog_DoubleValue(this.h)
	return (float64)(_ret)
}

func (this *QInputDialog) SetDoubleMinimum(min float64) {
	C.QInputDialog_SetDoubleMinimum(this.h, (C.double)(min))
}

func (this *QInputDialog) DoubleMinimum() float64 {
	_ret := C.QInputDialog_DoubleMinimum(this.h)
	return (float64)(_ret)
}

func (this *QInputDialog) SetDoubleMaximum(max float64) {
	C.QInputDialog_SetDoubleMaximum(this.h, (C.double)(max))
}

func (this *QInputDialog) DoubleMaximum() float64 {
	_ret := C.QInputDialog_DoubleMaximum(this.h)
	return (float64)(_ret)
}

func (this *QInputDialog) SetDoubleRange(min float64, max float64) {
	C.QInputDialog_SetDoubleRange(this.h, (C.double)(min), (C.double)(max))
}

func (this *QInputDialog) SetDoubleDecimals(decimals int) {
	C.QInputDialog_SetDoubleDecimals(this.h, (C.int)(decimals))
}

func (this *QInputDialog) DoubleDecimals() int {
	_ret := C.QInputDialog_DoubleDecimals(this.h)
	return (int)(_ret)
}

func (this *QInputDialog) SetOkButtonText(text string) {
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	C.QInputDialog_SetOkButtonText(this.h, (*C.struct_miqt_string)(text_ms))
}

func (this *QInputDialog) OkButtonText() string {
	var _ms *C.struct_miqt_string = C.QInputDialog_OkButtonText(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QInputDialog) SetCancelButtonText(text string) {
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	C.QInputDialog_SetCancelButtonText(this.h, (*C.struct_miqt_string)(text_ms))
}

func (this *QInputDialog) CancelButtonText() string {
	var _ms *C.struct_miqt_string = C.QInputDialog_CancelButtonText(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QInputDialog) MinimumSizeHint() *QSize {
	_ret := C.QInputDialog_MinimumSizeHint(this.h)
	_goptr := newQSize(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QInputDialog) SizeHint() *QSize {
	_ret := C.QInputDialog_SizeHint(this.h)
	_goptr := newQSize(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QInputDialog) SetVisible(visible bool) {
	C.QInputDialog_SetVisible(this.h, (C.bool)(visible))
}

func QInputDialog_GetText(parent *QWidget, title string, label string) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetText(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetMultiLineText(parent *QWidget, title string, label string) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetMultiLineText(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetItem(parent *QWidget, title string, label string, items []string) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	items_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(items))))
	defer C.free(unsafe.Pointer(items_CArray))
	for i := range items {
		single_ms := miqt_strdupg(items[i])
		defer C.free(single_ms)
		items_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	items_ma := &C.struct_miqt_array{len: C.size_t(len(items)), data: unsafe.Pointer(items_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(items_ma))
	var _ms *C.struct_miqt_string = C.QInputDialog_GetItem(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), items_ma)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetInt(parent *QWidget, title string, label string) int {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetInt(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms))
	return (int)(_ret)
}

func QInputDialog_GetDouble(parent *QWidget, title string, label string) float64 {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetDouble(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms))
	return (float64)(_ret)
}

func QInputDialog_GetDouble2(parent *QWidget, title string, label string, value float64, minValue float64, maxValue float64, decimals int, ok *bool, flags int, step float64) float64 {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetDouble2(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.double)(value), (C.double)(minValue), (C.double)(maxValue), (C.int)(decimals), (*C.bool)(unsafe.Pointer(ok)), (C.int)(flags), (C.double)(step))
	return (float64)(_ret)
}

func (this *QInputDialog) SetDoubleStep(step float64) {
	C.QInputDialog_SetDoubleStep(this.h, (C.double)(step))
}

func (this *QInputDialog) DoubleStep() float64 {
	_ret := C.QInputDialog_DoubleStep(this.h)
	return (float64)(_ret)
}

func (this *QInputDialog) TextValueChanged(text string) {
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	C.QInputDialog_TextValueChanged(this.h, (*C.struct_miqt_string)(text_ms))
}
func (this *QInputDialog) OnTextValueChanged(slot func(text string)) {
	C.QInputDialog_connect_TextValueChanged(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QInputDialog_TextValueChanged
func miqt_exec_callback_QInputDialog_TextValueChanged(cb *C.void, text *C.struct_miqt_string) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(text string))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var text_ms *C.struct_miqt_string = text
	text_ret := C.GoStringN(&text_ms.data, C.int(int64(text_ms.len)))
	C.free(unsafe.Pointer(text_ms))
	slotval1 := text_ret

	gofunc(slotval1)
}

func (this *QInputDialog) TextValueSelected(text string) {
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	C.QInputDialog_TextValueSelected(this.h, (*C.struct_miqt_string)(text_ms))
}
func (this *QInputDialog) OnTextValueSelected(slot func(text string)) {
	C.QInputDialog_connect_TextValueSelected(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QInputDialog_TextValueSelected
func miqt_exec_callback_QInputDialog_TextValueSelected(cb *C.void, text *C.struct_miqt_string) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(text string))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	var text_ms *C.struct_miqt_string = text
	text_ret := C.GoStringN(&text_ms.data, C.int(int64(text_ms.len)))
	C.free(unsafe.Pointer(text_ms))
	slotval1 := text_ret

	gofunc(slotval1)
}

func (this *QInputDialog) IntValueChanged(value int) {
	C.QInputDialog_IntValueChanged(this.h, (C.int)(value))
}
func (this *QInputDialog) OnIntValueChanged(slot func(value int)) {
	C.QInputDialog_connect_IntValueChanged(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QInputDialog_IntValueChanged
func miqt_exec_callback_QInputDialog_IntValueChanged(cb *C.void, value C.int) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(value int))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	value_ret := value
	slotval1 := (int)(value_ret)

	gofunc(slotval1)
}

func (this *QInputDialog) IntValueSelected(value int) {
	C.QInputDialog_IntValueSelected(this.h, (C.int)(value))
}
func (this *QInputDialog) OnIntValueSelected(slot func(value int)) {
	C.QInputDialog_connect_IntValueSelected(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QInputDialog_IntValueSelected
func miqt_exec_callback_QInputDialog_IntValueSelected(cb *C.void, value C.int) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(value int))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	value_ret := value
	slotval1 := (int)(value_ret)

	gofunc(slotval1)
}

func (this *QInputDialog) DoubleValueChanged(value float64) {
	C.QInputDialog_DoubleValueChanged(this.h, (C.double)(value))
}
func (this *QInputDialog) OnDoubleValueChanged(slot func(value float64)) {
	C.QInputDialog_connect_DoubleValueChanged(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QInputDialog_DoubleValueChanged
func miqt_exec_callback_QInputDialog_DoubleValueChanged(cb *C.void, value C.double) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(value float64))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	value_ret := value
	slotval1 := (float64)(value_ret)

	gofunc(slotval1)
}

func (this *QInputDialog) DoubleValueSelected(value float64) {
	C.QInputDialog_DoubleValueSelected(this.h, (C.double)(value))
}
func (this *QInputDialog) OnDoubleValueSelected(slot func(value float64)) {
	C.QInputDialog_connect_DoubleValueSelected(this.h, unsafe.Pointer(uintptr(cgo.NewHandle(slot))))
}

//export miqt_exec_callback_QInputDialog_DoubleValueSelected
func miqt_exec_callback_QInputDialog_DoubleValueSelected(cb *C.void, value C.double) {
	gofunc, ok := (cgo.Handle(uintptr(unsafe.Pointer(cb))).Value()).(func(value float64))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	value_ret := value
	slotval1 := (float64)(value_ret)

	gofunc(slotval1)
}

func (this *QInputDialog) Done(result int) {
	C.QInputDialog_Done(this.h, (C.int)(result))
}

func QInputDialog_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QInputDialog_Tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QInputDialog_Tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QInputDialog_TrUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms *C.struct_miqt_string = C.QInputDialog_TrUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QInputDialog) SetOption2(option QInputDialog__InputDialogOption, on bool) {
	C.QInputDialog_SetOption2(this.h, (C.uintptr_t)(option), (C.bool)(on))
}

func QInputDialog_GetText4(parent *QWidget, title string, label string, echo QLineEdit__EchoMode) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetText4(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.uintptr_t)(echo))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetText5(parent *QWidget, title string, label string, echo QLineEdit__EchoMode, text string) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetText5(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.uintptr_t)(echo), (*C.struct_miqt_string)(text_ms))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetText6(parent *QWidget, title string, label string, echo QLineEdit__EchoMode, text string, ok *bool) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetText6(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.uintptr_t)(echo), (*C.struct_miqt_string)(text_ms), (*C.bool)(unsafe.Pointer(ok)))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetText7(parent *QWidget, title string, label string, echo QLineEdit__EchoMode, text string, ok *bool, flags int) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetText7(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.uintptr_t)(echo), (*C.struct_miqt_string)(text_ms), (*C.bool)(unsafe.Pointer(ok)), (C.int)(flags))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetText8(parent *QWidget, title string, label string, echo QLineEdit__EchoMode, text string, ok *bool, flags int, inputMethodHints int) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetText8(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.uintptr_t)(echo), (*C.struct_miqt_string)(text_ms), (*C.bool)(unsafe.Pointer(ok)), (C.int)(flags), (C.int)(inputMethodHints))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetMultiLineText4(parent *QWidget, title string, label string, text string) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetMultiLineText4(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (*C.struct_miqt_string)(text_ms))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetMultiLineText5(parent *QWidget, title string, label string, text string, ok *bool) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetMultiLineText5(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (*C.struct_miqt_string)(text_ms), (*C.bool)(unsafe.Pointer(ok)))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetMultiLineText6(parent *QWidget, title string, label string, text string, ok *bool, flags int) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetMultiLineText6(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (*C.struct_miqt_string)(text_ms), (*C.bool)(unsafe.Pointer(ok)), (C.int)(flags))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetMultiLineText7(parent *QWidget, title string, label string, text string, ok *bool, flags int, inputMethodHints int) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	var _ms *C.struct_miqt_string = C.QInputDialog_GetMultiLineText7(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (*C.struct_miqt_string)(text_ms), (*C.bool)(unsafe.Pointer(ok)), (C.int)(flags), (C.int)(inputMethodHints))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetItem5(parent *QWidget, title string, label string, items []string, current int) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	items_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(items))))
	defer C.free(unsafe.Pointer(items_CArray))
	for i := range items {
		single_ms := miqt_strdupg(items[i])
		defer C.free(single_ms)
		items_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	items_ma := &C.struct_miqt_array{len: C.size_t(len(items)), data: unsafe.Pointer(items_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(items_ma))
	var _ms *C.struct_miqt_string = C.QInputDialog_GetItem5(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), items_ma, (C.int)(current))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetItem6(parent *QWidget, title string, label string, items []string, current int, editable bool) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	items_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(items))))
	defer C.free(unsafe.Pointer(items_CArray))
	for i := range items {
		single_ms := miqt_strdupg(items[i])
		defer C.free(single_ms)
		items_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	items_ma := &C.struct_miqt_array{len: C.size_t(len(items)), data: unsafe.Pointer(items_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(items_ma))
	var _ms *C.struct_miqt_string = C.QInputDialog_GetItem6(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), items_ma, (C.int)(current), (C.bool)(editable))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetItem7(parent *QWidget, title string, label string, items []string, current int, editable bool, ok *bool) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	items_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(items))))
	defer C.free(unsafe.Pointer(items_CArray))
	for i := range items {
		single_ms := miqt_strdupg(items[i])
		defer C.free(single_ms)
		items_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	items_ma := &C.struct_miqt_array{len: C.size_t(len(items)), data: unsafe.Pointer(items_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(items_ma))
	var _ms *C.struct_miqt_string = C.QInputDialog_GetItem7(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), items_ma, (C.int)(current), (C.bool)(editable), (*C.bool)(unsafe.Pointer(ok)))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetItem8(parent *QWidget, title string, label string, items []string, current int, editable bool, ok *bool, flags int) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	items_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(items))))
	defer C.free(unsafe.Pointer(items_CArray))
	for i := range items {
		single_ms := miqt_strdupg(items[i])
		defer C.free(single_ms)
		items_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	items_ma := &C.struct_miqt_array{len: C.size_t(len(items)), data: unsafe.Pointer(items_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(items_ma))
	var _ms *C.struct_miqt_string = C.QInputDialog_GetItem8(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), items_ma, (C.int)(current), (C.bool)(editable), (*C.bool)(unsafe.Pointer(ok)), (C.int)(flags))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetItem9(parent *QWidget, title string, label string, items []string, current int, editable bool, ok *bool, flags int, inputMethodHints int) string {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	items_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(items))))
	defer C.free(unsafe.Pointer(items_CArray))
	for i := range items {
		single_ms := miqt_strdupg(items[i])
		defer C.free(single_ms)
		items_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	items_ma := &C.struct_miqt_array{len: C.size_t(len(items)), data: unsafe.Pointer(items_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(items_ma))
	var _ms *C.struct_miqt_string = C.QInputDialog_GetItem9(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), items_ma, (C.int)(current), (C.bool)(editable), (*C.bool)(unsafe.Pointer(ok)), (C.int)(flags), (C.int)(inputMethodHints))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QInputDialog_GetInt4(parent *QWidget, title string, label string, value int) int {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetInt4(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.int)(value))
	return (int)(_ret)
}

func QInputDialog_GetInt5(parent *QWidget, title string, label string, value int, minValue int) int {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetInt5(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.int)(value), (C.int)(minValue))
	return (int)(_ret)
}

func QInputDialog_GetInt6(parent *QWidget, title string, label string, value int, minValue int, maxValue int) int {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetInt6(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.int)(value), (C.int)(minValue), (C.int)(maxValue))
	return (int)(_ret)
}

func QInputDialog_GetInt7(parent *QWidget, title string, label string, value int, minValue int, maxValue int, step int) int {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetInt7(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.int)(value), (C.int)(minValue), (C.int)(maxValue), (C.int)(step))
	return (int)(_ret)
}

func QInputDialog_GetInt8(parent *QWidget, title string, label string, value int, minValue int, maxValue int, step int, ok *bool) int {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetInt8(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.int)(value), (C.int)(minValue), (C.int)(maxValue), (C.int)(step), (*C.bool)(unsafe.Pointer(ok)))
	return (int)(_ret)
}

func QInputDialog_GetInt9(parent *QWidget, title string, label string, value int, minValue int, maxValue int, step int, ok *bool, flags int) int {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetInt9(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.int)(value), (C.int)(minValue), (C.int)(maxValue), (C.int)(step), (*C.bool)(unsafe.Pointer(ok)), (C.int)(flags))
	return (int)(_ret)
}

func QInputDialog_GetDouble4(parent *QWidget, title string, label string, value float64) float64 {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetDouble4(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.double)(value))
	return (float64)(_ret)
}

func QInputDialog_GetDouble5(parent *QWidget, title string, label string, value float64, minValue float64) float64 {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetDouble5(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.double)(value), (C.double)(minValue))
	return (float64)(_ret)
}

func QInputDialog_GetDouble6(parent *QWidget, title string, label string, value float64, minValue float64, maxValue float64) float64 {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetDouble6(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.double)(value), (C.double)(minValue), (C.double)(maxValue))
	return (float64)(_ret)
}

func QInputDialog_GetDouble7(parent *QWidget, title string, label string, value float64, minValue float64, maxValue float64, decimals int) float64 {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetDouble7(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.double)(value), (C.double)(minValue), (C.double)(maxValue), (C.int)(decimals))
	return (float64)(_ret)
}

func QInputDialog_GetDouble8(parent *QWidget, title string, label string, value float64, minValue float64, maxValue float64, decimals int, ok *bool) float64 {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetDouble8(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.double)(value), (C.double)(minValue), (C.double)(maxValue), (C.int)(decimals), (*C.bool)(unsafe.Pointer(ok)))
	return (float64)(_ret)
}

func QInputDialog_GetDouble9(parent *QWidget, title string, label string, value float64, minValue float64, maxValue float64, decimals int, ok *bool, flags int) float64 {
	title_ms := miqt_strdupg(title)
	defer C.free(title_ms)
	label_ms := miqt_strdupg(label)
	defer C.free(label_ms)
	_ret := C.QInputDialog_GetDouble9(parent.cPointer(), (*C.struct_miqt_string)(title_ms), (*C.struct_miqt_string)(label_ms), (C.double)(value), (C.double)(minValue), (C.double)(maxValue), (C.int)(decimals), (*C.bool)(unsafe.Pointer(ok)), (C.int)(flags))
	return (float64)(_ret)
}

// Delete this object from C++ memory.
func (this *QInputDialog) Delete() {
	C.QInputDialog_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QInputDialog) GoGC() {
	runtime.SetFinalizer(this, func(this *QInputDialog) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
