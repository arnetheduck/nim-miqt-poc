package network

/*

#include "gen_qssldiffiehellmanparameters.h"
#include <stdlib.h>

*/
import "C"

import (
	"github.com/mappu/miqt/qt6"
	"runtime"
	"unsafe"
)

type QSslDiffieHellmanParameters__Error int

const (
	QSslDiffieHellmanParameters__NoError               QSslDiffieHellmanParameters__Error = 0
	QSslDiffieHellmanParameters__InvalidInputDataError QSslDiffieHellmanParameters__Error = 1
	QSslDiffieHellmanParameters__UnsafeParametersError QSslDiffieHellmanParameters__Error = 2
)

type QSslDiffieHellmanParameters struct {
	h          *C.QSslDiffieHellmanParameters
	isSubclass bool
}

func (this *QSslDiffieHellmanParameters) cPointer() *C.QSslDiffieHellmanParameters {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSslDiffieHellmanParameters) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSslDiffieHellmanParameters constructs the type using only CGO pointers.
func newQSslDiffieHellmanParameters(h *C.QSslDiffieHellmanParameters) *QSslDiffieHellmanParameters {
	if h == nil {
		return nil
	}
	return &QSslDiffieHellmanParameters{h: h}
}

// UnsafeNewQSslDiffieHellmanParameters constructs the type using only unsafe pointers.
func UnsafeNewQSslDiffieHellmanParameters(h unsafe.Pointer) *QSslDiffieHellmanParameters {
	if h == nil {
		return nil
	}

	return &QSslDiffieHellmanParameters{h: (*C.QSslDiffieHellmanParameters)(h)}
}

// NewQSslDiffieHellmanParameters constructs a new QSslDiffieHellmanParameters object.
func NewQSslDiffieHellmanParameters() *QSslDiffieHellmanParameters {
	var outptr_QSslDiffieHellmanParameters *C.QSslDiffieHellmanParameters = nil

	C.QSslDiffieHellmanParameters_new(&outptr_QSslDiffieHellmanParameters)
	ret := newQSslDiffieHellmanParameters(outptr_QSslDiffieHellmanParameters)
	ret.isSubclass = true
	return ret
}

// NewQSslDiffieHellmanParameters2 constructs a new QSslDiffieHellmanParameters object.
func NewQSslDiffieHellmanParameters2(other *QSslDiffieHellmanParameters) *QSslDiffieHellmanParameters {
	var outptr_QSslDiffieHellmanParameters *C.QSslDiffieHellmanParameters = nil

	C.QSslDiffieHellmanParameters_new2(other.cPointer(), &outptr_QSslDiffieHellmanParameters)
	ret := newQSslDiffieHellmanParameters(outptr_QSslDiffieHellmanParameters)
	ret.isSubclass = true
	return ret
}

func QSslDiffieHellmanParameters_DefaultParameters() *QSslDiffieHellmanParameters {
	_goptr := newQSslDiffieHellmanParameters(C.QSslDiffieHellmanParameters_DefaultParameters())
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSslDiffieHellmanParameters) OperatorAssign(other *QSslDiffieHellmanParameters) {
	C.QSslDiffieHellmanParameters_OperatorAssign(this.h, other.cPointer())
}

func (this *QSslDiffieHellmanParameters) Swap(other *QSslDiffieHellmanParameters) {
	C.QSslDiffieHellmanParameters_Swap(this.h, other.cPointer())
}

func QSslDiffieHellmanParameters_FromEncoded(encoded []byte) *QSslDiffieHellmanParameters {
	encoded_alias := C.struct_miqt_string{}
	encoded_alias.data = (*C.char)(unsafe.Pointer(&encoded[0]))
	encoded_alias.len = C.size_t(len(encoded))
	_goptr := newQSslDiffieHellmanParameters(C.QSslDiffieHellmanParameters_FromEncoded(encoded_alias))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QSslDiffieHellmanParameters_FromEncodedWithDevice(device *qt6.QIODevice) *QSslDiffieHellmanParameters {
	_goptr := newQSslDiffieHellmanParameters(C.QSslDiffieHellmanParameters_FromEncodedWithDevice((*C.QIODevice)(device.UnsafePointer())))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QSslDiffieHellmanParameters) IsEmpty() bool {
	return (bool)(C.QSslDiffieHellmanParameters_IsEmpty(this.h))
}

func (this *QSslDiffieHellmanParameters) IsValid() bool {
	return (bool)(C.QSslDiffieHellmanParameters_IsValid(this.h))
}

func (this *QSslDiffieHellmanParameters) Error() QSslDiffieHellmanParameters__Error {
	return (QSslDiffieHellmanParameters__Error)(C.QSslDiffieHellmanParameters_Error(this.h))
}

func (this *QSslDiffieHellmanParameters) ErrorString() string {
	var _ms C.struct_miqt_string = C.QSslDiffieHellmanParameters_ErrorString(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSslDiffieHellmanParameters_FromEncoded2(encoded []byte, format QSsl__EncodingFormat) *QSslDiffieHellmanParameters {
	encoded_alias := C.struct_miqt_string{}
	encoded_alias.data = (*C.char)(unsafe.Pointer(&encoded[0]))
	encoded_alias.len = C.size_t(len(encoded))
	_goptr := newQSslDiffieHellmanParameters(C.QSslDiffieHellmanParameters_FromEncoded2(encoded_alias, (C.int)(format)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QSslDiffieHellmanParameters_FromEncoded22(device *qt6.QIODevice, format QSsl__EncodingFormat) *QSslDiffieHellmanParameters {
	_goptr := newQSslDiffieHellmanParameters(C.QSslDiffieHellmanParameters_FromEncoded22((*C.QIODevice)(device.UnsafePointer()), (C.int)(format)))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

// Delete this object from C++ memory.
func (this *QSslDiffieHellmanParameters) Delete() {
	C.QSslDiffieHellmanParameters_Delete(this.h, C.bool(this.isSubclass))
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSslDiffieHellmanParameters) GoGC() {
	runtime.SetFinalizer(this, func(this *QSslDiffieHellmanParameters) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
