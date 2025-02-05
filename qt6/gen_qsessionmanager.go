package qt6

/*

#include "gen_qsessionmanager.h"
#include <stdlib.h>

*/
import "C"

import (
	"unsafe"
)

type QSessionManager__RestartHint int

const (
	QSessionManager__RestartIfRunning   QSessionManager__RestartHint = 0
	QSessionManager__RestartAnyway      QSessionManager__RestartHint = 1
	QSessionManager__RestartImmediately QSessionManager__RestartHint = 2
	QSessionManager__RestartNever       QSessionManager__RestartHint = 3
)

type QSessionManager struct {
	h *C.QSessionManager
	*QObject
}

func (this *QSessionManager) cPointer() *C.QSessionManager {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSessionManager) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSessionManager constructs the type using only CGO pointers.
func newQSessionManager(h *C.QSessionManager) *QSessionManager {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QSessionManager_virtbase(h, &outptr_QObject)

	return &QSessionManager{h: h,
		QObject: newQObject(outptr_QObject)}
}

// UnsafeNewQSessionManager constructs the type using only unsafe pointers.
func UnsafeNewQSessionManager(h unsafe.Pointer) *QSessionManager {
	return newQSessionManager((*C.QSessionManager)(h))
}

func (this *QSessionManager) MetaObject() *QMetaObject {
	return newQMetaObject(C.QSessionManager_metaObject(this.h))
}

func (this *QSessionManager) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QSessionManager_metacast(this.h, param1_Cstring))
}

func (this *QSessionManager) Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QSessionManager_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QSessionManager_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QSessionManager_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSessionManager) SessionId() string {
	var _ms C.struct_miqt_string = C.QSessionManager_sessionId(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSessionManager) SessionKey() string {
	var _ms C.struct_miqt_string = C.QSessionManager_sessionKey(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QSessionManager) AllowsInteraction() bool {
	return (bool)(C.QSessionManager_allowsInteraction(this.h))
}

func (this *QSessionManager) AllowsErrorInteraction() bool {
	return (bool)(C.QSessionManager_allowsErrorInteraction(this.h))
}

func (this *QSessionManager) Release() {
	C.QSessionManager_release(this.h)
}

func (this *QSessionManager) Cancel() {
	C.QSessionManager_cancel(this.h)
}

func (this *QSessionManager) SetRestartHint(restartHint QSessionManager__RestartHint) {
	C.QSessionManager_setRestartHint(this.h, (C.int)(restartHint))
}

func (this *QSessionManager) RestartHint() QSessionManager__RestartHint {
	return (QSessionManager__RestartHint)(C.QSessionManager_restartHint(this.h))
}

func (this *QSessionManager) SetRestartCommand(restartCommand []string) {
	restartCommand_CArray := (*[0xffff]C.struct_miqt_string)(C.malloc(C.size_t(int(unsafe.Sizeof(C.struct_miqt_string{})) * len(restartCommand))))
	defer C.free(unsafe.Pointer(restartCommand_CArray))
	for i := range restartCommand {
		restartCommand_i_ms := C.struct_miqt_string{}
		restartCommand_i_ms.data = C.CString(restartCommand[i])
		restartCommand_i_ms.len = C.size_t(len(restartCommand[i]))
		defer C.free(unsafe.Pointer(restartCommand_i_ms.data))
		restartCommand_CArray[i] = restartCommand_i_ms
	}
	restartCommand_ma := C.struct_miqt_array{len: C.size_t(len(restartCommand)), data: unsafe.Pointer(restartCommand_CArray)}
	C.QSessionManager_setRestartCommand(this.h, restartCommand_ma)
}

func (this *QSessionManager) RestartCommand() []string {
	var _ma C.struct_miqt_array = C.QSessionManager_restartCommand(this.h)
	_ret := make([]string, int(_ma.len))
	_outCast := (*[0xffff]C.struct_miqt_string)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		var _lv_ms C.struct_miqt_string = _outCast[i]
		_lv_ret := C.GoStringN(_lv_ms.data, C.int(int64(_lv_ms.len)))
		C.free(unsafe.Pointer(_lv_ms.data))
		_ret[i] = _lv_ret
	}
	return _ret
}

func (this *QSessionManager) SetDiscardCommand(discardCommand []string) {
	discardCommand_CArray := (*[0xffff]C.struct_miqt_string)(C.malloc(C.size_t(int(unsafe.Sizeof(C.struct_miqt_string{})) * len(discardCommand))))
	defer C.free(unsafe.Pointer(discardCommand_CArray))
	for i := range discardCommand {
		discardCommand_i_ms := C.struct_miqt_string{}
		discardCommand_i_ms.data = C.CString(discardCommand[i])
		discardCommand_i_ms.len = C.size_t(len(discardCommand[i]))
		defer C.free(unsafe.Pointer(discardCommand_i_ms.data))
		discardCommand_CArray[i] = discardCommand_i_ms
	}
	discardCommand_ma := C.struct_miqt_array{len: C.size_t(len(discardCommand)), data: unsafe.Pointer(discardCommand_CArray)}
	C.QSessionManager_setDiscardCommand(this.h, discardCommand_ma)
}

func (this *QSessionManager) DiscardCommand() []string {
	var _ma C.struct_miqt_array = C.QSessionManager_discardCommand(this.h)
	_ret := make([]string, int(_ma.len))
	_outCast := (*[0xffff]C.struct_miqt_string)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		var _lv_ms C.struct_miqt_string = _outCast[i]
		_lv_ret := C.GoStringN(_lv_ms.data, C.int(int64(_lv_ms.len)))
		C.free(unsafe.Pointer(_lv_ms.data))
		_ret[i] = _lv_ret
	}
	return _ret
}

func (this *QSessionManager) SetManagerProperty(name string, value string) {
	name_ms := C.struct_miqt_string{}
	name_ms.data = C.CString(name)
	name_ms.len = C.size_t(len(name))
	defer C.free(unsafe.Pointer(name_ms.data))
	value_ms := C.struct_miqt_string{}
	value_ms.data = C.CString(value)
	value_ms.len = C.size_t(len(value))
	defer C.free(unsafe.Pointer(value_ms.data))
	C.QSessionManager_setManagerProperty(this.h, name_ms, value_ms)
}

func (this *QSessionManager) SetManagerProperty2(name string, value []string) {
	name_ms := C.struct_miqt_string{}
	name_ms.data = C.CString(name)
	name_ms.len = C.size_t(len(name))
	defer C.free(unsafe.Pointer(name_ms.data))
	value_CArray := (*[0xffff]C.struct_miqt_string)(C.malloc(C.size_t(int(unsafe.Sizeof(C.struct_miqt_string{})) * len(value))))
	defer C.free(unsafe.Pointer(value_CArray))
	for i := range value {
		value_i_ms := C.struct_miqt_string{}
		value_i_ms.data = C.CString(value[i])
		value_i_ms.len = C.size_t(len(value[i]))
		defer C.free(unsafe.Pointer(value_i_ms.data))
		value_CArray[i] = value_i_ms
	}
	value_ma := C.struct_miqt_array{len: C.size_t(len(value)), data: unsafe.Pointer(value_CArray)}
	C.QSessionManager_setManagerProperty2(this.h, name_ms, value_ma)
}

func (this *QSessionManager) IsPhase2() bool {
	return (bool)(C.QSessionManager_isPhase2(this.h))
}

func (this *QSessionManager) RequestPhase2() {
	C.QSessionManager_requestPhase2(this.h)
}

func QSessionManager_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSessionManager_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QSessionManager_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QSessionManager_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}
