package qt

/*

#include "gen_qkeysequence.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QKeySequence__StandardKey int

const (
	QKeySequence__StandardKey__UnknownKey               QKeySequence__StandardKey = 0
	QKeySequence__StandardKey__HelpContents             QKeySequence__StandardKey = 1
	QKeySequence__StandardKey__WhatsThis                QKeySequence__StandardKey = 2
	QKeySequence__StandardKey__Open                     QKeySequence__StandardKey = 3
	QKeySequence__StandardKey__Close                    QKeySequence__StandardKey = 4
	QKeySequence__StandardKey__Save                     QKeySequence__StandardKey = 5
	QKeySequence__StandardKey__New                      QKeySequence__StandardKey = 6
	QKeySequence__StandardKey__Delete                   QKeySequence__StandardKey = 7
	QKeySequence__StandardKey__Cut                      QKeySequence__StandardKey = 8
	QKeySequence__StandardKey__Copy                     QKeySequence__StandardKey = 9
	QKeySequence__StandardKey__Paste                    QKeySequence__StandardKey = 10
	QKeySequence__StandardKey__Undo                     QKeySequence__StandardKey = 11
	QKeySequence__StandardKey__Redo                     QKeySequence__StandardKey = 12
	QKeySequence__StandardKey__Back                     QKeySequence__StandardKey = 13
	QKeySequence__StandardKey__Forward                  QKeySequence__StandardKey = 14
	QKeySequence__StandardKey__Refresh                  QKeySequence__StandardKey = 15
	QKeySequence__StandardKey__ZoomIn                   QKeySequence__StandardKey = 16
	QKeySequence__StandardKey__ZoomOut                  QKeySequence__StandardKey = 17
	QKeySequence__StandardKey__Print                    QKeySequence__StandardKey = 18
	QKeySequence__StandardKey__AddTab                   QKeySequence__StandardKey = 19
	QKeySequence__StandardKey__NextChild                QKeySequence__StandardKey = 20
	QKeySequence__StandardKey__PreviousChild            QKeySequence__StandardKey = 21
	QKeySequence__StandardKey__Find                     QKeySequence__StandardKey = 22
	QKeySequence__StandardKey__FindNext                 QKeySequence__StandardKey = 23
	QKeySequence__StandardKey__FindPrevious             QKeySequence__StandardKey = 24
	QKeySequence__StandardKey__Replace                  QKeySequence__StandardKey = 25
	QKeySequence__StandardKey__SelectAll                QKeySequence__StandardKey = 26
	QKeySequence__StandardKey__Bold                     QKeySequence__StandardKey = 27
	QKeySequence__StandardKey__Italic                   QKeySequence__StandardKey = 28
	QKeySequence__StandardKey__Underline                QKeySequence__StandardKey = 29
	QKeySequence__StandardKey__MoveToNextChar           QKeySequence__StandardKey = 30
	QKeySequence__StandardKey__MoveToPreviousChar       QKeySequence__StandardKey = 31
	QKeySequence__StandardKey__MoveToNextWord           QKeySequence__StandardKey = 32
	QKeySequence__StandardKey__MoveToPreviousWord       QKeySequence__StandardKey = 33
	QKeySequence__StandardKey__MoveToNextLine           QKeySequence__StandardKey = 34
	QKeySequence__StandardKey__MoveToPreviousLine       QKeySequence__StandardKey = 35
	QKeySequence__StandardKey__MoveToNextPage           QKeySequence__StandardKey = 36
	QKeySequence__StandardKey__MoveToPreviousPage       QKeySequence__StandardKey = 37
	QKeySequence__StandardKey__MoveToStartOfLine        QKeySequence__StandardKey = 38
	QKeySequence__StandardKey__MoveToEndOfLine          QKeySequence__StandardKey = 39
	QKeySequence__StandardKey__MoveToStartOfBlock       QKeySequence__StandardKey = 40
	QKeySequence__StandardKey__MoveToEndOfBlock         QKeySequence__StandardKey = 41
	QKeySequence__StandardKey__MoveToStartOfDocument    QKeySequence__StandardKey = 42
	QKeySequence__StandardKey__MoveToEndOfDocument      QKeySequence__StandardKey = 43
	QKeySequence__StandardKey__SelectNextChar           QKeySequence__StandardKey = 44
	QKeySequence__StandardKey__SelectPreviousChar       QKeySequence__StandardKey = 45
	QKeySequence__StandardKey__SelectNextWord           QKeySequence__StandardKey = 46
	QKeySequence__StandardKey__SelectPreviousWord       QKeySequence__StandardKey = 47
	QKeySequence__StandardKey__SelectNextLine           QKeySequence__StandardKey = 48
	QKeySequence__StandardKey__SelectPreviousLine       QKeySequence__StandardKey = 49
	QKeySequence__StandardKey__SelectNextPage           QKeySequence__StandardKey = 50
	QKeySequence__StandardKey__SelectPreviousPage       QKeySequence__StandardKey = 51
	QKeySequence__StandardKey__SelectStartOfLine        QKeySequence__StandardKey = 52
	QKeySequence__StandardKey__SelectEndOfLine          QKeySequence__StandardKey = 53
	QKeySequence__StandardKey__SelectStartOfBlock       QKeySequence__StandardKey = 54
	QKeySequence__StandardKey__SelectEndOfBlock         QKeySequence__StandardKey = 55
	QKeySequence__StandardKey__SelectStartOfDocument    QKeySequence__StandardKey = 56
	QKeySequence__StandardKey__SelectEndOfDocument      QKeySequence__StandardKey = 57
	QKeySequence__StandardKey__DeleteStartOfWord        QKeySequence__StandardKey = 58
	QKeySequence__StandardKey__DeleteEndOfWord          QKeySequence__StandardKey = 59
	QKeySequence__StandardKey__DeleteEndOfLine          QKeySequence__StandardKey = 60
	QKeySequence__StandardKey__InsertParagraphSeparator QKeySequence__StandardKey = 61
	QKeySequence__StandardKey__InsertLineSeparator      QKeySequence__StandardKey = 62
	QKeySequence__StandardKey__SaveAs                   QKeySequence__StandardKey = 63
	QKeySequence__StandardKey__Preferences              QKeySequence__StandardKey = 64
	QKeySequence__StandardKey__Quit                     QKeySequence__StandardKey = 65
	QKeySequence__StandardKey__FullScreen               QKeySequence__StandardKey = 66
	QKeySequence__StandardKey__Deselect                 QKeySequence__StandardKey = 67
	QKeySequence__StandardKey__DeleteCompleteLine       QKeySequence__StandardKey = 68
	QKeySequence__StandardKey__Backspace                QKeySequence__StandardKey = 69
	QKeySequence__StandardKey__Cancel                   QKeySequence__StandardKey = 70
)

type QKeySequence__SequenceFormat int

const (
	QKeySequence__SequenceFormat__NativeText   QKeySequence__SequenceFormat = 0
	QKeySequence__SequenceFormat__PortableText QKeySequence__SequenceFormat = 1
)

type QKeySequence__SequenceMatch int

const (
	QKeySequence__SequenceMatch__NoMatch      QKeySequence__SequenceMatch = 0
	QKeySequence__SequenceMatch__PartialMatch QKeySequence__SequenceMatch = 1
	QKeySequence__SequenceMatch__ExactMatch   QKeySequence__SequenceMatch = 2
)

type QKeySequence struct {
	h *C.QKeySequence
}

func (this *QKeySequence) cPointer() *C.QKeySequence {
	if this == nil {
		return nil
	}
	return this.h
}

func newQKeySequence(h *C.QKeySequence) *QKeySequence {
	if h == nil {
		return nil
	}
	return &QKeySequence{h: h}
}

func newQKeySequence_U(h unsafe.Pointer) *QKeySequence {
	return newQKeySequence((*C.QKeySequence)(h))
}

// NewQKeySequence constructs a new QKeySequence object.
func NewQKeySequence() *QKeySequence {
	ret := C.QKeySequence_new()
	return newQKeySequence(ret)
}

// NewQKeySequence2 constructs a new QKeySequence object.
func NewQKeySequence2(key string) *QKeySequence {
	key_ms := miqt_strdupg(key)
	defer C.free(key_ms)
	ret := C.QKeySequence_new2((*C.struct_miqt_string)(key_ms))
	return newQKeySequence(ret)
}

// NewQKeySequence3 constructs a new QKeySequence object.
func NewQKeySequence3(k1 int) *QKeySequence {
	ret := C.QKeySequence_new3((C.int)(k1))
	return newQKeySequence(ret)
}

// NewQKeySequence4 constructs a new QKeySequence object.
func NewQKeySequence4(ks *QKeySequence) *QKeySequence {
	ret := C.QKeySequence_new4(ks.cPointer())
	return newQKeySequence(ret)
}

// NewQKeySequence5 constructs a new QKeySequence object.
func NewQKeySequence5(key QKeySequence__StandardKey) *QKeySequence {
	ret := C.QKeySequence_new5((C.uintptr_t)(key))
	return newQKeySequence(ret)
}

// NewQKeySequence6 constructs a new QKeySequence object.
func NewQKeySequence6(key string, format QKeySequence__SequenceFormat) *QKeySequence {
	key_ms := miqt_strdupg(key)
	defer C.free(key_ms)
	ret := C.QKeySequence_new6((*C.struct_miqt_string)(key_ms), (C.uintptr_t)(format))
	return newQKeySequence(ret)
}

// NewQKeySequence7 constructs a new QKeySequence object.
func NewQKeySequence7(k1 int, k2 int) *QKeySequence {
	ret := C.QKeySequence_new7((C.int)(k1), (C.int)(k2))
	return newQKeySequence(ret)
}

// NewQKeySequence8 constructs a new QKeySequence object.
func NewQKeySequence8(k1 int, k2 int, k3 int) *QKeySequence {
	ret := C.QKeySequence_new8((C.int)(k1), (C.int)(k2), (C.int)(k3))
	return newQKeySequence(ret)
}

// NewQKeySequence9 constructs a new QKeySequence object.
func NewQKeySequence9(k1 int, k2 int, k3 int, k4 int) *QKeySequence {
	ret := C.QKeySequence_new9((C.int)(k1), (C.int)(k2), (C.int)(k3), (C.int)(k4))
	return newQKeySequence(ret)
}

func (this *QKeySequence) Count() int {
	return (int)(C.QKeySequence_Count(this.h))
}

func (this *QKeySequence) IsEmpty() bool {
	return (bool)(C.QKeySequence_IsEmpty(this.h))
}

func (this *QKeySequence) ToString() string {
	var _ms *C.struct_miqt_string = C.QKeySequence_ToString(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QKeySequence_FromString(str string) *QKeySequence {
	str_ms := miqt_strdupg(str)
	defer C.free(str_ms)
	_ret := C.QKeySequence_FromString((*C.struct_miqt_string)(str_ms))
	_goptr := newQKeySequence(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QKeySequence_ListFromString(str string) []QKeySequence {
	str_ms := miqt_strdupg(str)
	defer C.free(str_ms)
	var _ma *C.struct_miqt_array = C.QKeySequence_ListFromString((*C.struct_miqt_string)(str_ms))
	_ret := make([]QKeySequence, int(_ma.len))
	_outCast := (*[0xffff]*C.QKeySequence)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_lv_ret := _outCast[i]
		_lv_goptr := newQKeySequence(_lv_ret)
		_lv_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
		_ret[i] = *_lv_goptr
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func QKeySequence_ListToString(list []QKeySequence) string {
	// For the C ABI, malloc a C array of raw pointers
	list_CArray := (*[0xffff]*C.QKeySequence)(C.malloc(C.size_t(8 * len(list))))
	defer C.free(unsafe.Pointer(list_CArray))
	for i := range list {
		list_CArray[i] = list[i].cPointer()
	}
	list_ma := &C.struct_miqt_array{len: C.size_t(len(list)), data: unsafe.Pointer(list_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(list_ma))
	var _ms *C.struct_miqt_string = C.QKeySequence_ListToString(list_ma)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QKeySequence) Matches(seq *QKeySequence) QKeySequence__SequenceMatch {
	return (QKeySequence__SequenceMatch)(C.QKeySequence_Matches(this.h, seq.cPointer()))
}

func QKeySequence_Mnemonic(text string) *QKeySequence {
	text_ms := miqt_strdupg(text)
	defer C.free(text_ms)
	_ret := C.QKeySequence_Mnemonic((*C.struct_miqt_string)(text_ms))
	_goptr := newQKeySequence(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QKeySequence_KeyBindings(key QKeySequence__StandardKey) []QKeySequence {
	var _ma *C.struct_miqt_array = C.QKeySequence_KeyBindings((C.uintptr_t)(key))
	_ret := make([]QKeySequence, int(_ma.len))
	_outCast := (*[0xffff]*C.QKeySequence)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_lv_ret := _outCast[i]
		_lv_goptr := newQKeySequence(_lv_ret)
		_lv_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
		_ret[i] = *_lv_goptr
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func (this *QKeySequence) OperatorSubscript(i uint) int {
	return (int)(C.QKeySequence_OperatorSubscript(this.h, (C.uint)(i)))
}

func (this *QKeySequence) OperatorAssign(other *QKeySequence) {
	C.QKeySequence_OperatorAssign(this.h, other.cPointer())
}

func (this *QKeySequence) Swap(other *QKeySequence) {
	C.QKeySequence_Swap(this.h, other.cPointer())
}

func (this *QKeySequence) OperatorEqual(other *QKeySequence) bool {
	return (bool)(C.QKeySequence_OperatorEqual(this.h, other.cPointer()))
}

func (this *QKeySequence) OperatorNotEqual(other *QKeySequence) bool {
	return (bool)(C.QKeySequence_OperatorNotEqual(this.h, other.cPointer()))
}

func (this *QKeySequence) OperatorLesser(ks *QKeySequence) bool {
	return (bool)(C.QKeySequence_OperatorLesser(this.h, ks.cPointer()))
}

func (this *QKeySequence) OperatorGreater(other *QKeySequence) bool {
	return (bool)(C.QKeySequence_OperatorGreater(this.h, other.cPointer()))
}

func (this *QKeySequence) OperatorLesserOrEqual(other *QKeySequence) bool {
	return (bool)(C.QKeySequence_OperatorLesserOrEqual(this.h, other.cPointer()))
}

func (this *QKeySequence) OperatorGreaterOrEqual(other *QKeySequence) bool {
	return (bool)(C.QKeySequence_OperatorGreaterOrEqual(this.h, other.cPointer()))
}

func (this *QKeySequence) IsDetached() bool {
	return (bool)(C.QKeySequence_IsDetached(this.h))
}

func (this *QKeySequence) ToString1(format QKeySequence__SequenceFormat) string {
	var _ms *C.struct_miqt_string = C.QKeySequence_ToString1(this.h, (C.uintptr_t)(format))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QKeySequence_FromString2(str string, format QKeySequence__SequenceFormat) *QKeySequence {
	str_ms := miqt_strdupg(str)
	defer C.free(str_ms)
	_ret := C.QKeySequence_FromString2((*C.struct_miqt_string)(str_ms), (C.uintptr_t)(format))
	_goptr := newQKeySequence(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QKeySequence_ListFromString2(str string, format QKeySequence__SequenceFormat) []QKeySequence {
	str_ms := miqt_strdupg(str)
	defer C.free(str_ms)
	var _ma *C.struct_miqt_array = C.QKeySequence_ListFromString2((*C.struct_miqt_string)(str_ms), (C.uintptr_t)(format))
	_ret := make([]QKeySequence, int(_ma.len))
	_outCast := (*[0xffff]*C.QKeySequence)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_lv_ret := _outCast[i]
		_lv_goptr := newQKeySequence(_lv_ret)
		_lv_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
		_ret[i] = *_lv_goptr
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func QKeySequence_ListToString2(list []QKeySequence, format QKeySequence__SequenceFormat) string {
	// For the C ABI, malloc a C array of raw pointers
	list_CArray := (*[0xffff]*C.QKeySequence)(C.malloc(C.size_t(8 * len(list))))
	defer C.free(unsafe.Pointer(list_CArray))
	for i := range list {
		list_CArray[i] = list[i].cPointer()
	}
	list_ma := &C.struct_miqt_array{len: C.size_t(len(list)), data: unsafe.Pointer(list_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(list_ma))
	var _ms *C.struct_miqt_string = C.QKeySequence_ListToString2(list_ma, (C.uintptr_t)(format))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

// Delete this object from C++ memory.
func (this *QKeySequence) Delete() {
	C.QKeySequence_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QKeySequence) GoGC() {
	runtime.SetFinalizer(this, func(this *QKeySequence) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
