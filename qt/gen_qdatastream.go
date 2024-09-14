package qt

/*

#include "gen_qdatastream.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QDataStream__Version int

const (
	QDataStream__Version__Qt_1_0                    QDataStream__Version = 1
	QDataStream__Version__Qt_2_0                    QDataStream__Version = 2
	QDataStream__Version__Qt_2_1                    QDataStream__Version = 3
	QDataStream__Version__Qt_3_0                    QDataStream__Version = 4
	QDataStream__Version__Qt_3_1                    QDataStream__Version = 5
	QDataStream__Version__Qt_3_3                    QDataStream__Version = 6
	QDataStream__Version__Qt_4_0                    QDataStream__Version = 7
	QDataStream__Version__Qt_4_1                    QDataStream__Version = 7
	QDataStream__Version__Qt_4_2                    QDataStream__Version = 8
	QDataStream__Version__Qt_4_3                    QDataStream__Version = 9
	QDataStream__Version__Qt_4_4                    QDataStream__Version = 10
	QDataStream__Version__Qt_4_5                    QDataStream__Version = 11
	QDataStream__Version__Qt_4_6                    QDataStream__Version = 12
	QDataStream__Version__Qt_4_7                    QDataStream__Version = 12
	QDataStream__Version__Qt_4_8                    QDataStream__Version = 12
	QDataStream__Version__Qt_4_9                    QDataStream__Version = 12
	QDataStream__Version__Qt_5_0                    QDataStream__Version = 13
	QDataStream__Version__Qt_5_1                    QDataStream__Version = 14
	QDataStream__Version__Qt_5_2                    QDataStream__Version = 15
	QDataStream__Version__Qt_5_3                    QDataStream__Version = 15
	QDataStream__Version__Qt_5_4                    QDataStream__Version = 16
	QDataStream__Version__Qt_5_5                    QDataStream__Version = 16
	QDataStream__Version__Qt_5_6                    QDataStream__Version = 17
	QDataStream__Version__Qt_5_7                    QDataStream__Version = 17
	QDataStream__Version__Qt_5_8                    QDataStream__Version = 17
	QDataStream__Version__Qt_5_9                    QDataStream__Version = 17
	QDataStream__Version__Qt_5_10                   QDataStream__Version = 17
	QDataStream__Version__Qt_5_11                   QDataStream__Version = 17
	QDataStream__Version__Qt_5_12                   QDataStream__Version = 18
	QDataStream__Version__Qt_5_13                   QDataStream__Version = 19
	QDataStream__Version__Qt_5_14                   QDataStream__Version = 19
	QDataStream__Version__Qt_5_15                   QDataStream__Version = 19
	QDataStream__Version__Qt_DefaultCompiledVersion QDataStream__Version = 19
)

type QDataStream__ByteOrder int

const (
	QDataStream__ByteOrder__BigEndian    QDataStream__ByteOrder = 0
	QDataStream__ByteOrder__LittleEndian QDataStream__ByteOrder = 1
)

type QDataStream__Status int

const (
	QDataStream__Status__Ok              QDataStream__Status = 0
	QDataStream__Status__ReadPastEnd     QDataStream__Status = 1
	QDataStream__Status__ReadCorruptData QDataStream__Status = 2
	QDataStream__Status__WriteFailed     QDataStream__Status = 3
)

type QDataStream__FloatingPointPrecision int

const (
	QDataStream__FloatingPointPrecision__SinglePrecision QDataStream__FloatingPointPrecision = 0
	QDataStream__FloatingPointPrecision__DoublePrecision QDataStream__FloatingPointPrecision = 1
)

type QDataStream struct {
	h *C.QDataStream
}

func (this *QDataStream) cPointer() *C.QDataStream {
	if this == nil {
		return nil
	}
	return this.h
}

func newQDataStream(h *C.QDataStream) *QDataStream {
	if h == nil {
		return nil
	}
	return &QDataStream{h: h}
}

func newQDataStream_U(h unsafe.Pointer) *QDataStream {
	return newQDataStream((*C.QDataStream)(h))
}

// NewQDataStream constructs a new QDataStream object.
func NewQDataStream() *QDataStream {
	ret := C.QDataStream_new()
	return newQDataStream(ret)
}

// NewQDataStream2 constructs a new QDataStream object.
func NewQDataStream2(param1 *QIODevice) *QDataStream {
	ret := C.QDataStream_new2(param1.cPointer())
	return newQDataStream(ret)
}

// NewQDataStream3 constructs a new QDataStream object.
func NewQDataStream3(param1 *QByteArray, flags int) *QDataStream {
	ret := C.QDataStream_new3(param1.cPointer(), (C.int)(flags))
	return newQDataStream(ret)
}

// NewQDataStream4 constructs a new QDataStream object.
func NewQDataStream4(param1 *QByteArray) *QDataStream {
	ret := C.QDataStream_new4(param1.cPointer())
	return newQDataStream(ret)
}

func (this *QDataStream) Device() *QIODevice {
	_ret := C.QDataStream_Device(this.h)
	return newQIODevice_U(unsafe.Pointer(_ret))
}

func (this *QDataStream) SetDevice(device *QIODevice) {
	C.QDataStream_SetDevice(this.h, device.cPointer())
}

func (this *QDataStream) UnsetDevice() {
	C.QDataStream_UnsetDevice(this.h)
}

func (this *QDataStream) AtEnd() bool {
	_ret := C.QDataStream_AtEnd(this.h)
	return (bool)(_ret)
}

func (this *QDataStream) Status() QDataStream__Status {
	_ret := C.QDataStream_Status(this.h)
	return (QDataStream__Status)(_ret)
}

func (this *QDataStream) SetStatus(status QDataStream__Status) {
	C.QDataStream_SetStatus(this.h, (C.uintptr_t)(status))
}

func (this *QDataStream) ResetStatus() {
	C.QDataStream_ResetStatus(this.h)
}

func (this *QDataStream) FloatingPointPrecision() QDataStream__FloatingPointPrecision {
	_ret := C.QDataStream_FloatingPointPrecision(this.h)
	return (QDataStream__FloatingPointPrecision)(_ret)
}

func (this *QDataStream) SetFloatingPointPrecision(precision QDataStream__FloatingPointPrecision) {
	C.QDataStream_SetFloatingPointPrecision(this.h, (C.uintptr_t)(precision))
}

func (this *QDataStream) ByteOrder() QDataStream__ByteOrder {
	_ret := C.QDataStream_ByteOrder(this.h)
	return (QDataStream__ByteOrder)(_ret)
}

func (this *QDataStream) SetByteOrder(byteOrder QDataStream__ByteOrder) {
	C.QDataStream_SetByteOrder(this.h, (C.uintptr_t)(byteOrder))
}

func (this *QDataStream) Version() int {
	_ret := C.QDataStream_Version(this.h)
	return (int)(_ret)
}

func (this *QDataStream) SetVersion(version int) {
	C.QDataStream_SetVersion(this.h, (C.int)(version))
}

func (this *QDataStream) OperatorShiftRight(i *byte) {
	C.QDataStream_OperatorShiftRight(this.h, (*C.schar)(unsafe.Pointer(i)))
}

func (this *QDataStream) OperatorShiftRightWithQuint8(i *byte) {
	C.QDataStream_OperatorShiftRightWithQuint8(this.h, (*C.uchar)(unsafe.Pointer(i)))
}

func (this *QDataStream) OperatorShiftRightWithQint16(i *int16) {
	C.QDataStream_OperatorShiftRightWithQint16(this.h, (*C.int16_t)(unsafe.Pointer(i)))
}

func (this *QDataStream) OperatorShiftRightWithQuint16(i *uint16) {
	C.QDataStream_OperatorShiftRightWithQuint16(this.h, (*C.uint16_t)(unsafe.Pointer(i)))
}

func (this *QDataStream) OperatorShiftRightWithQint32(i *int) {
	C.QDataStream_OperatorShiftRightWithQint32(this.h, (*C.int)(unsafe.Pointer(i)))
}

func (this *QDataStream) OperatorShiftRightWithQuint32(i *uint) {
	C.QDataStream_OperatorShiftRightWithQuint32(this.h, (*C.uint)(unsafe.Pointer(i)))
}

func (this *QDataStream) OperatorShiftRightWithQint64(i *int64) {
	C.QDataStream_OperatorShiftRightWithQint64(this.h, (*C.longlong)(unsafe.Pointer(i)))
}

func (this *QDataStream) OperatorShiftRightWithQuint64(i *uint64) {
	C.QDataStream_OperatorShiftRightWithQuint64(this.h, (*C.ulonglong)(unsafe.Pointer(i)))
}

func (this *QDataStream) OperatorShiftRightWithBool(i *bool) {
	C.QDataStream_OperatorShiftRightWithBool(this.h, (*C.bool)(unsafe.Pointer(i)))
}

func (this *QDataStream) OperatorShiftRightWithFloat(f *float32) {
	C.QDataStream_OperatorShiftRightWithFloat(this.h, (*C.float)(unsafe.Pointer(f)))
}

func (this *QDataStream) OperatorShiftRightWithDouble(f *float64) {
	C.QDataStream_OperatorShiftRightWithDouble(this.h, (*C.double)(unsafe.Pointer(f)))
}

func (this *QDataStream) OperatorShiftRightWithStr(str string) {
	str_Cstring := C.CString(str)
	defer C.free(unsafe.Pointer(str_Cstring))
	C.QDataStream_OperatorShiftRightWithStr(this.h, str_Cstring)
}

func (this *QDataStream) OperatorShiftLeft(i byte) {
	C.QDataStream_OperatorShiftLeft(this.h, (C.schar)(i))
}

func (this *QDataStream) OperatorShiftLeftWithQuint8(i byte) {
	C.QDataStream_OperatorShiftLeftWithQuint8(this.h, (C.uchar)(i))
}

func (this *QDataStream) OperatorShiftLeftWithQint16(i int16) {
	C.QDataStream_OperatorShiftLeftWithQint16(this.h, (C.int16_t)(i))
}

func (this *QDataStream) OperatorShiftLeftWithQuint16(i uint16) {
	C.QDataStream_OperatorShiftLeftWithQuint16(this.h, (C.uint16_t)(i))
}

func (this *QDataStream) OperatorShiftLeftWithQint32(i int) {
	C.QDataStream_OperatorShiftLeftWithQint32(this.h, (C.int)(i))
}

func (this *QDataStream) OperatorShiftLeftWithQuint32(i uint) {
	C.QDataStream_OperatorShiftLeftWithQuint32(this.h, (C.uint)(i))
}

func (this *QDataStream) OperatorShiftLeftWithQint64(i int64) {
	C.QDataStream_OperatorShiftLeftWithQint64(this.h, (C.longlong)(i))
}

func (this *QDataStream) OperatorShiftLeftWithQuint64(i uint64) {
	C.QDataStream_OperatorShiftLeftWithQuint64(this.h, (C.ulonglong)(i))
}

func (this *QDataStream) OperatorShiftLeftWithBool(i bool) {
	C.QDataStream_OperatorShiftLeftWithBool(this.h, (C.bool)(i))
}

func (this *QDataStream) OperatorShiftLeftWithFloat(f float32) {
	C.QDataStream_OperatorShiftLeftWithFloat(this.h, (C.float)(f))
}

func (this *QDataStream) OperatorShiftLeftWithDouble(f float64) {
	C.QDataStream_OperatorShiftLeftWithDouble(this.h, (C.double)(f))
}

func (this *QDataStream) OperatorShiftLeftWithStr(str string) {
	str_Cstring := C.CString(str)
	defer C.free(unsafe.Pointer(str_Cstring))
	C.QDataStream_OperatorShiftLeftWithStr(this.h, str_Cstring)
}

func (this *QDataStream) ReadBytes(param1 string, lenVal *uint) *QDataStream {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	_ret := C.QDataStream_ReadBytes(this.h, param1_Cstring, (*C.uint)(unsafe.Pointer(lenVal)))
	return newQDataStream_U(unsafe.Pointer(_ret))
}

func (this *QDataStream) ReadRawData(param1 string, lenVal int) int {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	_ret := C.QDataStream_ReadRawData(this.h, param1_Cstring, (C.int)(lenVal))
	return (int)(_ret)
}

func (this *QDataStream) WriteBytes(param1 string, lenVal uint) {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	C.QDataStream_WriteBytes(this.h, param1_Cstring, (C.uint)(lenVal))
}

func (this *QDataStream) WriteRawData(param1 string, lenVal int) int {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	_ret := C.QDataStream_WriteRawData(this.h, param1_Cstring, (C.int)(lenVal))
	return (int)(_ret)
}

func (this *QDataStream) SkipRawData(lenVal int) int {
	_ret := C.QDataStream_SkipRawData(this.h, (C.int)(lenVal))
	return (int)(_ret)
}

func (this *QDataStream) StartTransaction() {
	C.QDataStream_StartTransaction(this.h)
}

func (this *QDataStream) CommitTransaction() bool {
	_ret := C.QDataStream_CommitTransaction(this.h)
	return (bool)(_ret)
}

func (this *QDataStream) RollbackTransaction() {
	C.QDataStream_RollbackTransaction(this.h)
}

func (this *QDataStream) AbortTransaction() {
	C.QDataStream_AbortTransaction(this.h)
}

// Delete this object from C++ memory.
func (this *QDataStream) Delete() {
	C.QDataStream_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QDataStream) GoGC() {
	runtime.SetFinalizer(this, func(this *QDataStream) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}

type QtPrivate__StreamStateSaver struct {
	h *C.QtPrivate__StreamStateSaver
}

func (this *QtPrivate__StreamStateSaver) cPointer() *C.QtPrivate__StreamStateSaver {
	if this == nil {
		return nil
	}
	return this.h
}

func newQtPrivate__StreamStateSaver(h *C.QtPrivate__StreamStateSaver) *QtPrivate__StreamStateSaver {
	if h == nil {
		return nil
	}
	return &QtPrivate__StreamStateSaver{h: h}
}

func newQtPrivate__StreamStateSaver_U(h unsafe.Pointer) *QtPrivate__StreamStateSaver {
	return newQtPrivate__StreamStateSaver((*C.QtPrivate__StreamStateSaver)(h))
}

// NewQtPrivate__StreamStateSaver constructs a new QtPrivate::StreamStateSaver object.
func NewQtPrivate__StreamStateSaver(s *QDataStream) *QtPrivate__StreamStateSaver {
	ret := C.QtPrivate__StreamStateSaver_new(s.cPointer())
	return newQtPrivate__StreamStateSaver(ret)
}

// NewQtPrivate__StreamStateSaver2 constructs a new QtPrivate::StreamStateSaver object.
func NewQtPrivate__StreamStateSaver2(param1 *QtPrivate__StreamStateSaver) *QtPrivate__StreamStateSaver {
	ret := C.QtPrivate__StreamStateSaver_new2(param1.cPointer())
	return newQtPrivate__StreamStateSaver(ret)
}

// Delete this object from C++ memory.
func (this *QtPrivate__StreamStateSaver) Delete() {
	C.QtPrivate__StreamStateSaver_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QtPrivate__StreamStateSaver) GoGC() {
	runtime.SetFinalizer(this, func(this *QtPrivate__StreamStateSaver) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
