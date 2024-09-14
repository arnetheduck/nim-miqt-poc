package qt

/*

#include "gen_qurl.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QUrl__ParsingMode int

const (
	QUrl__ParsingMode__TolerantMode QUrl__ParsingMode = 0
	QUrl__ParsingMode__StrictMode   QUrl__ParsingMode = 1
	QUrl__ParsingMode__DecodedMode  QUrl__ParsingMode = 2
)

type QUrl__UrlFormattingOption int

const (
	QUrl__UrlFormattingOption__None                  QUrl__UrlFormattingOption = 0
	QUrl__UrlFormattingOption__RemoveScheme          QUrl__UrlFormattingOption = 1
	QUrl__UrlFormattingOption__RemovePassword        QUrl__UrlFormattingOption = 2
	QUrl__UrlFormattingOption__RemoveUserInfo        QUrl__UrlFormattingOption = 6
	QUrl__UrlFormattingOption__RemovePort            QUrl__UrlFormattingOption = 8
	QUrl__UrlFormattingOption__RemoveAuthority       QUrl__UrlFormattingOption = 30
	QUrl__UrlFormattingOption__RemovePath            QUrl__UrlFormattingOption = 32
	QUrl__UrlFormattingOption__RemoveQuery           QUrl__UrlFormattingOption = 64
	QUrl__UrlFormattingOption__RemoveFragment        QUrl__UrlFormattingOption = 128
	QUrl__UrlFormattingOption__PreferLocalFile       QUrl__UrlFormattingOption = 512
	QUrl__UrlFormattingOption__StripTrailingSlash    QUrl__UrlFormattingOption = 1024
	QUrl__UrlFormattingOption__RemoveFilename        QUrl__UrlFormattingOption = 2048
	QUrl__UrlFormattingOption__NormalizePathSegments QUrl__UrlFormattingOption = 4096
)

type QUrl__ComponentFormattingOption int

const (
	QUrl__ComponentFormattingOption__PrettyDecoded    QUrl__ComponentFormattingOption = 0
	QUrl__ComponentFormattingOption__EncodeSpaces     QUrl__ComponentFormattingOption = 1048576
	QUrl__ComponentFormattingOption__EncodeUnicode    QUrl__ComponentFormattingOption = 2097152
	QUrl__ComponentFormattingOption__EncodeDelimiters QUrl__ComponentFormattingOption = 12582912
	QUrl__ComponentFormattingOption__EncodeReserved   QUrl__ComponentFormattingOption = 16777216
	QUrl__ComponentFormattingOption__DecodeReserved   QUrl__ComponentFormattingOption = 33554432
	QUrl__ComponentFormattingOption__FullyEncoded     QUrl__ComponentFormattingOption = 32505856
	QUrl__ComponentFormattingOption__FullyDecoded     QUrl__ComponentFormattingOption = 133169152
)

type QUrl__UserInputResolutionOption int

const (
	QUrl__UserInputResolutionOption__DefaultResolution QUrl__UserInputResolutionOption = 0
	QUrl__UserInputResolutionOption__AssumeLocalFile   QUrl__UserInputResolutionOption = 1
)

type QUrl struct {
	h *C.QUrl
}

func (this *QUrl) cPointer() *C.QUrl {
	if this == nil {
		return nil
	}
	return this.h
}

func newQUrl(h *C.QUrl) *QUrl {
	if h == nil {
		return nil
	}
	return &QUrl{h: h}
}

func newQUrl_U(h unsafe.Pointer) *QUrl {
	return newQUrl((*C.QUrl)(h))
}

// NewQUrl constructs a new QUrl object.
func NewQUrl() *QUrl {
	ret := C.QUrl_new()
	return newQUrl(ret)
}

// NewQUrl2 constructs a new QUrl object.
func NewQUrl2(copyVal *QUrl) *QUrl {
	ret := C.QUrl_new2(copyVal.cPointer())
	return newQUrl(ret)
}

// NewQUrl3 constructs a new QUrl object.
func NewQUrl3(url string) *QUrl {
	url_ms := miqt_strdupg(url)
	defer C.free(url_ms)
	ret := C.QUrl_new3((*C.struct_miqt_string)(url_ms))
	return newQUrl(ret)
}

// NewQUrl4 constructs a new QUrl object.
func NewQUrl4(url string, mode QUrl__ParsingMode) *QUrl {
	url_ms := miqt_strdupg(url)
	defer C.free(url_ms)
	ret := C.QUrl_new4((*C.struct_miqt_string)(url_ms), (C.uintptr_t)(mode))
	return newQUrl(ret)
}

func (this *QUrl) OperatorAssign(copyVal *QUrl) {
	C.QUrl_OperatorAssign(this.h, copyVal.cPointer())
}

func (this *QUrl) OperatorAssignWithUrl(url string) {
	url_ms := miqt_strdupg(url)
	defer C.free(url_ms)
	C.QUrl_OperatorAssignWithUrl(this.h, (*C.struct_miqt_string)(url_ms))
}

func (this *QUrl) Swap(other *QUrl) {
	C.QUrl_Swap(this.h, other.cPointer())
}

func (this *QUrl) SetUrl(url string) {
	url_ms := miqt_strdupg(url)
	defer C.free(url_ms)
	C.QUrl_SetUrl(this.h, (*C.struct_miqt_string)(url_ms))
}

func (this *QUrl) Url() string {
	var _ms *C.struct_miqt_string = C.QUrl_Url(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) ToString() string {
	var _ms *C.struct_miqt_string = C.QUrl_ToString(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) ToDisplayString() string {
	var _ms *C.struct_miqt_string = C.QUrl_ToDisplayString(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) ToEncoded() *QByteArray {
	_ret := C.QUrl_ToEncoded(this.h)
	_goptr := newQByteArray(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QUrl_FromEncoded(url *QByteArray) *QUrl {
	_ret := C.QUrl_FromEncoded(url.cPointer())
	_goptr := newQUrl(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QUrl_FromUserInput(userInput string) *QUrl {
	userInput_ms := miqt_strdupg(userInput)
	defer C.free(userInput_ms)
	_ret := C.QUrl_FromUserInput((*C.struct_miqt_string)(userInput_ms))
	_goptr := newQUrl(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QUrl_FromUserInput2(userInput string, workingDirectory string) *QUrl {
	userInput_ms := miqt_strdupg(userInput)
	defer C.free(userInput_ms)
	workingDirectory_ms := miqt_strdupg(workingDirectory)
	defer C.free(workingDirectory_ms)
	_ret := C.QUrl_FromUserInput2((*C.struct_miqt_string)(userInput_ms), (*C.struct_miqt_string)(workingDirectory_ms))
	_goptr := newQUrl(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QUrl) IsValid() bool {
	_ret := C.QUrl_IsValid(this.h)
	return (bool)(_ret)
}

func (this *QUrl) ErrorString() string {
	var _ms *C.struct_miqt_string = C.QUrl_ErrorString(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) IsEmpty() bool {
	_ret := C.QUrl_IsEmpty(this.h)
	return (bool)(_ret)
}

func (this *QUrl) Clear() {
	C.QUrl_Clear(this.h)
}

func (this *QUrl) SetScheme(scheme string) {
	scheme_ms := miqt_strdupg(scheme)
	defer C.free(scheme_ms)
	C.QUrl_SetScheme(this.h, (*C.struct_miqt_string)(scheme_ms))
}

func (this *QUrl) Scheme() string {
	var _ms *C.struct_miqt_string = C.QUrl_Scheme(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetAuthority(authority string) {
	authority_ms := miqt_strdupg(authority)
	defer C.free(authority_ms)
	C.QUrl_SetAuthority(this.h, (*C.struct_miqt_string)(authority_ms))
}

func (this *QUrl) Authority() string {
	var _ms *C.struct_miqt_string = C.QUrl_Authority(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetUserInfo(userInfo string) {
	userInfo_ms := miqt_strdupg(userInfo)
	defer C.free(userInfo_ms)
	C.QUrl_SetUserInfo(this.h, (*C.struct_miqt_string)(userInfo_ms))
}

func (this *QUrl) UserInfo() string {
	var _ms *C.struct_miqt_string = C.QUrl_UserInfo(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetUserName(userName string) {
	userName_ms := miqt_strdupg(userName)
	defer C.free(userName_ms)
	C.QUrl_SetUserName(this.h, (*C.struct_miqt_string)(userName_ms))
}

func (this *QUrl) UserName() string {
	var _ms *C.struct_miqt_string = C.QUrl_UserName(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetPassword(password string) {
	password_ms := miqt_strdupg(password)
	defer C.free(password_ms)
	C.QUrl_SetPassword(this.h, (*C.struct_miqt_string)(password_ms))
}

func (this *QUrl) Password() string {
	var _ms *C.struct_miqt_string = C.QUrl_Password(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetHost(host string) {
	host_ms := miqt_strdupg(host)
	defer C.free(host_ms)
	C.QUrl_SetHost(this.h, (*C.struct_miqt_string)(host_ms))
}

func (this *QUrl) Host() string {
	var _ms *C.struct_miqt_string = C.QUrl_Host(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) TopLevelDomain() string {
	var _ms *C.struct_miqt_string = C.QUrl_TopLevelDomain(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetPort(port int) {
	C.QUrl_SetPort(this.h, (C.int)(port))
}

func (this *QUrl) Port() int {
	_ret := C.QUrl_Port(this.h)
	return (int)(_ret)
}

func (this *QUrl) SetPath(path string) {
	path_ms := miqt_strdupg(path)
	defer C.free(path_ms)
	C.QUrl_SetPath(this.h, (*C.struct_miqt_string)(path_ms))
}

func (this *QUrl) Path() string {
	var _ms *C.struct_miqt_string = C.QUrl_Path(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) FileName() string {
	var _ms *C.struct_miqt_string = C.QUrl_FileName(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) HasQuery() bool {
	_ret := C.QUrl_HasQuery(this.h)
	return (bool)(_ret)
}

func (this *QUrl) SetQuery(query string) {
	query_ms := miqt_strdupg(query)
	defer C.free(query_ms)
	C.QUrl_SetQuery(this.h, (*C.struct_miqt_string)(query_ms))
}

func (this *QUrl) SetQueryWithQuery(query *QUrlQuery) {
	C.QUrl_SetQueryWithQuery(this.h, query.cPointer())
}

func (this *QUrl) Query() string {
	var _ms *C.struct_miqt_string = C.QUrl_Query(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) HasFragment() bool {
	_ret := C.QUrl_HasFragment(this.h)
	return (bool)(_ret)
}

func (this *QUrl) Fragment() string {
	var _ms *C.struct_miqt_string = C.QUrl_Fragment(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetFragment(fragment string) {
	fragment_ms := miqt_strdupg(fragment)
	defer C.free(fragment_ms)
	C.QUrl_SetFragment(this.h, (*C.struct_miqt_string)(fragment_ms))
}

func (this *QUrl) Resolved(relative *QUrl) *QUrl {
	_ret := C.QUrl_Resolved(this.h, relative.cPointer())
	_goptr := newQUrl(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QUrl) IsRelative() bool {
	_ret := C.QUrl_IsRelative(this.h)
	return (bool)(_ret)
}

func (this *QUrl) IsParentOf(url *QUrl) bool {
	_ret := C.QUrl_IsParentOf(this.h, url.cPointer())
	return (bool)(_ret)
}

func (this *QUrl) IsLocalFile() bool {
	_ret := C.QUrl_IsLocalFile(this.h)
	return (bool)(_ret)
}

func QUrl_FromLocalFile(localfile string) *QUrl {
	localfile_ms := miqt_strdupg(localfile)
	defer C.free(localfile_ms)
	_ret := C.QUrl_FromLocalFile((*C.struct_miqt_string)(localfile_ms))
	_goptr := newQUrl(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QUrl) ToLocalFile() string {
	var _ms *C.struct_miqt_string = C.QUrl_ToLocalFile(this.h)
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) Detach() {
	C.QUrl_Detach(this.h)
}

func (this *QUrl) IsDetached() bool {
	_ret := C.QUrl_IsDetached(this.h)
	return (bool)(_ret)
}

func (this *QUrl) OperatorLesser(url *QUrl) bool {
	_ret := C.QUrl_OperatorLesser(this.h, url.cPointer())
	return (bool)(_ret)
}

func (this *QUrl) OperatorEqual(url *QUrl) bool {
	_ret := C.QUrl_OperatorEqual(this.h, url.cPointer())
	return (bool)(_ret)
}

func (this *QUrl) OperatorNotEqual(url *QUrl) bool {
	_ret := C.QUrl_OperatorNotEqual(this.h, url.cPointer())
	return (bool)(_ret)
}

func QUrl_FromPercentEncoding(param1 *QByteArray) string {
	var _ms *C.struct_miqt_string = C.QUrl_FromPercentEncoding(param1.cPointer())
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QUrl_ToPercentEncoding(param1 string) *QByteArray {
	param1_ms := miqt_strdupg(param1)
	defer C.free(param1_ms)
	_ret := C.QUrl_ToPercentEncoding((*C.struct_miqt_string)(param1_ms))
	_goptr := newQByteArray(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QUrl_FromAce(param1 *QByteArray) string {
	var _ms *C.struct_miqt_string = C.QUrl_FromAce(param1.cPointer())
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func QUrl_ToAce(param1 string) *QByteArray {
	param1_ms := miqt_strdupg(param1)
	defer C.free(param1_ms)
	_ret := C.QUrl_ToAce((*C.struct_miqt_string)(param1_ms))
	_goptr := newQByteArray(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QUrl_IdnWhitelist() []string {
	var _ma *C.struct_miqt_array = C.QUrl_IdnWhitelist()
	_ret := make([]string, int(_ma.len))
	_outCast := (*[0xffff]*C.struct_miqt_string)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = C.GoStringN(&_outCast[i].data, C.int(int64(_outCast[i].len)))
		C.free(unsafe.Pointer(_outCast[i])) // free the inner miqt_string*
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func QUrl_ToStringList(uris []QUrl) []string {
	// For the C ABI, malloc a C array of raw pointers
	uris_CArray := (*[0xffff]*C.QUrl)(C.malloc(C.size_t(8 * len(uris))))
	defer C.free(unsafe.Pointer(uris_CArray))
	for i := range uris {
		uris_CArray[i] = uris[i].cPointer()
	}
	uris_ma := &C.struct_miqt_array{len: C.size_t(len(uris)), data: unsafe.Pointer(uris_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(uris_ma))
	var _ma *C.struct_miqt_array = C.QUrl_ToStringList(uris_ma)
	_ret := make([]string, int(_ma.len))
	_outCast := (*[0xffff]*C.struct_miqt_string)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = C.GoStringN(&_outCast[i].data, C.int(int64(_outCast[i].len)))
		C.free(unsafe.Pointer(_outCast[i])) // free the inner miqt_string*
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func QUrl_FromStringList(uris []string) []QUrl {
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	uris_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(uris))))
	defer C.free(unsafe.Pointer(uris_CArray))
	for i := range uris {
		single_ms := miqt_strdupg(uris[i])
		defer C.free(single_ms)
		uris_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	uris_ma := &C.struct_miqt_array{len: C.size_t(len(uris)), data: unsafe.Pointer(uris_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(uris_ma))
	var _ma *C.struct_miqt_array = C.QUrl_FromStringList(uris_ma)
	_ret := make([]QUrl, int(_ma.len))
	_outCast := (*[0xffff]*C.QUrl)(unsafe.Pointer(_ma.data)) // mrs jackson
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = *newQUrl(_outCast[i])
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

func QUrl_SetIdnWhitelist(idnWhitelist []string) {
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	idnWhitelist_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(idnWhitelist))))
	defer C.free(unsafe.Pointer(idnWhitelist_CArray))
	for i := range idnWhitelist {
		single_ms := miqt_strdupg(idnWhitelist[i])
		defer C.free(single_ms)
		idnWhitelist_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	idnWhitelist_ma := &C.struct_miqt_array{len: C.size_t(len(idnWhitelist)), data: unsafe.Pointer(idnWhitelist_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(idnWhitelist_ma))
	C.QUrl_SetIdnWhitelist(idnWhitelist_ma)
}

func (this *QUrl) SetUrl2(url string, mode QUrl__ParsingMode) {
	url_ms := miqt_strdupg(url)
	defer C.free(url_ms)
	C.QUrl_SetUrl2(this.h, (*C.struct_miqt_string)(url_ms), (C.uintptr_t)(mode))
}

func QUrl_FromEncoded2(url *QByteArray, mode QUrl__ParsingMode) *QUrl {
	_ret := C.QUrl_FromEncoded2(url.cPointer(), (C.uintptr_t)(mode))
	_goptr := newQUrl(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QUrl_FromUserInput3(userInput string, workingDirectory string, options int) *QUrl {
	userInput_ms := miqt_strdupg(userInput)
	defer C.free(userInput_ms)
	workingDirectory_ms := miqt_strdupg(workingDirectory)
	defer C.free(workingDirectory_ms)
	_ret := C.QUrl_FromUserInput3((*C.struct_miqt_string)(userInput_ms), (*C.struct_miqt_string)(workingDirectory_ms), (C.int)(options))
	_goptr := newQUrl(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QUrl) SetAuthority2(authority string, mode QUrl__ParsingMode) {
	authority_ms := miqt_strdupg(authority)
	defer C.free(authority_ms)
	C.QUrl_SetAuthority2(this.h, (*C.struct_miqt_string)(authority_ms), (C.uintptr_t)(mode))
}

func (this *QUrl) Authority1(options int) string {
	var _ms *C.struct_miqt_string = C.QUrl_Authority1(this.h, (C.int)(options))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetUserInfo2(userInfo string, mode QUrl__ParsingMode) {
	userInfo_ms := miqt_strdupg(userInfo)
	defer C.free(userInfo_ms)
	C.QUrl_SetUserInfo2(this.h, (*C.struct_miqt_string)(userInfo_ms), (C.uintptr_t)(mode))
}

func (this *QUrl) UserInfo1(options int) string {
	var _ms *C.struct_miqt_string = C.QUrl_UserInfo1(this.h, (C.int)(options))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetUserName2(userName string, mode QUrl__ParsingMode) {
	userName_ms := miqt_strdupg(userName)
	defer C.free(userName_ms)
	C.QUrl_SetUserName2(this.h, (*C.struct_miqt_string)(userName_ms), (C.uintptr_t)(mode))
}

func (this *QUrl) UserName1(options int) string {
	var _ms *C.struct_miqt_string = C.QUrl_UserName1(this.h, (C.int)(options))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetPassword2(password string, mode QUrl__ParsingMode) {
	password_ms := miqt_strdupg(password)
	defer C.free(password_ms)
	C.QUrl_SetPassword2(this.h, (*C.struct_miqt_string)(password_ms), (C.uintptr_t)(mode))
}

func (this *QUrl) Password1(param1 int) string {
	var _ms *C.struct_miqt_string = C.QUrl_Password1(this.h, (C.int)(param1))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetHost2(host string, mode QUrl__ParsingMode) {
	host_ms := miqt_strdupg(host)
	defer C.free(host_ms)
	C.QUrl_SetHost2(this.h, (*C.struct_miqt_string)(host_ms), (C.uintptr_t)(mode))
}

func (this *QUrl) Host1(param1 int) string {
	var _ms *C.struct_miqt_string = C.QUrl_Host1(this.h, (C.int)(param1))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) TopLevelDomain1(options int) string {
	var _ms *C.struct_miqt_string = C.QUrl_TopLevelDomain1(this.h, (C.int)(options))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) Port1(defaultPort int) int {
	_ret := C.QUrl_Port1(this.h, (C.int)(defaultPort))
	return (int)(_ret)
}

func (this *QUrl) SetPath2(path string, mode QUrl__ParsingMode) {
	path_ms := miqt_strdupg(path)
	defer C.free(path_ms)
	C.QUrl_SetPath2(this.h, (*C.struct_miqt_string)(path_ms), (C.uintptr_t)(mode))
}

func (this *QUrl) Path1(options int) string {
	var _ms *C.struct_miqt_string = C.QUrl_Path1(this.h, (C.int)(options))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) FileName1(options int) string {
	var _ms *C.struct_miqt_string = C.QUrl_FileName1(this.h, (C.int)(options))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetQuery2(query string, mode QUrl__ParsingMode) {
	query_ms := miqt_strdupg(query)
	defer C.free(query_ms)
	C.QUrl_SetQuery2(this.h, (*C.struct_miqt_string)(query_ms), (C.uintptr_t)(mode))
}

func (this *QUrl) Query1(param1 int) string {
	var _ms *C.struct_miqt_string = C.QUrl_Query1(this.h, (C.int)(param1))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) Fragment1(options int) string {
	var _ms *C.struct_miqt_string = C.QUrl_Fragment1(this.h, (C.int)(options))
	_ret := C.GoStringN(&_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms))
	return _ret
}

func (this *QUrl) SetFragment2(fragment string, mode QUrl__ParsingMode) {
	fragment_ms := miqt_strdupg(fragment)
	defer C.free(fragment_ms)
	C.QUrl_SetFragment2(this.h, (*C.struct_miqt_string)(fragment_ms), (C.uintptr_t)(mode))
}

func QUrl_ToPercentEncoding2(param1 string, exclude *QByteArray) *QByteArray {
	param1_ms := miqt_strdupg(param1)
	defer C.free(param1_ms)
	_ret := C.QUrl_ToPercentEncoding2((*C.struct_miqt_string)(param1_ms), exclude.cPointer())
	_goptr := newQByteArray(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QUrl_ToPercentEncoding3(param1 string, exclude *QByteArray, include *QByteArray) *QByteArray {
	param1_ms := miqt_strdupg(param1)
	defer C.free(param1_ms)
	_ret := C.QUrl_ToPercentEncoding3((*C.struct_miqt_string)(param1_ms), exclude.cPointer(), include.cPointer())
	_goptr := newQByteArray(_ret)
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func QUrl_FromStringList2(uris []string, mode QUrl__ParsingMode) []QUrl {
	// For the C ABI, malloc two C arrays; raw char* pointers and their lengths
	uris_CArray := (*[0xffff]*C.struct_miqt_string)(C.malloc(C.size_t(8 * len(uris))))
	defer C.free(unsafe.Pointer(uris_CArray))
	for i := range uris {
		single_ms := miqt_strdupg(uris[i])
		defer C.free(single_ms)
		uris_CArray[i] = (*C.struct_miqt_string)(single_ms)
	}
	uris_ma := &C.struct_miqt_array{len: C.size_t(len(uris)), data: unsafe.Pointer(uris_CArray)}
	defer runtime.KeepAlive(unsafe.Pointer(uris_ma))
	var _ma *C.struct_miqt_array = C.QUrl_FromStringList2(uris_ma, (C.uintptr_t)(mode))
	_ret := make([]QUrl, int(_ma.len))
	_outCast := (*[0xffff]*C.QUrl)(unsafe.Pointer(_ma.data)) // mrs jackson
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = *newQUrl(_outCast[i])
	}
	C.free(unsafe.Pointer(_ma))
	return _ret
}

// Delete this object from C++ memory.
func (this *QUrl) Delete() {
	C.QUrl_Delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QUrl) GoGC() {
	runtime.SetFinalizer(this, func(this *QUrl) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
