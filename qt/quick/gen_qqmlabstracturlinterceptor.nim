import Qt5Quick_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qqmlabstracturlinterceptor.cpp", cflags).}


type QQmlAbstractUrlInterceptorDataType* = cint
const
  QQmlAbstractUrlInterceptorQmlFile* = 0
  QQmlAbstractUrlInterceptorJavaScriptFile* = 1
  QQmlAbstractUrlInterceptorQmldirFile* = 2
  QQmlAbstractUrlInterceptorUrlString* = 4096



import gen_qqmlabstracturlinterceptor_types
export gen_qqmlabstracturlinterceptor_types

import
  gen_qurl
export
  gen_qurl

type cQQmlAbstractUrlInterceptor*{.exportc: "QQmlAbstractUrlInterceptor", incompleteStruct.} = object

proc fcQQmlAbstractUrlInterceptor_new(): ptr cQQmlAbstractUrlInterceptor {.importc: "QQmlAbstractUrlInterceptor_new".}
proc fcQQmlAbstractUrlInterceptor_intercept(self: pointer, path: pointer, typeVal: cint): pointer {.importc: "QQmlAbstractUrlInterceptor_intercept".}
proc fcQQmlAbstractUrlInterceptor_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlAbstractUrlInterceptor_operatorAssign".}
proc fcQQmlAbstractUrlInterceptor_override_virtual_intercept(self: pointer, slot: int) {.importc: "QQmlAbstractUrlInterceptor_override_virtual_intercept".}
proc fcQQmlAbstractUrlInterceptor_delete(self: pointer) {.importc: "QQmlAbstractUrlInterceptor_delete".}


func init*(T: type QQmlAbstractUrlInterceptor, h: ptr cQQmlAbstractUrlInterceptor): QQmlAbstractUrlInterceptor =
  T(h: h)
proc create*(T: type QQmlAbstractUrlInterceptor, ): QQmlAbstractUrlInterceptor =

  QQmlAbstractUrlInterceptor.init(fcQQmlAbstractUrlInterceptor_new())
proc intercept*(self: QQmlAbstractUrlInterceptor, path: gen_qurl.QUrl, typeVal: QQmlAbstractUrlInterceptorDataType): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQmlAbstractUrlInterceptor_intercept(self.h, path.h, cint(typeVal)))

proc operatorAssign*(self: QQmlAbstractUrlInterceptor, param1: QQmlAbstractUrlInterceptor): void =

  fcQQmlAbstractUrlInterceptor_operatorAssign(self.h, param1.h)

type QQmlAbstractUrlInterceptorinterceptBase* = proc(path: gen_qurl.QUrl, typeVal: QQmlAbstractUrlInterceptorDataType): gen_qurl.QUrl
proc onintercept*(self: QQmlAbstractUrlInterceptor, slot: proc(path: gen_qurl.QUrl, typeVal: QQmlAbstractUrlInterceptorDataType): gen_qurl.QUrl) =
  # TODO check subclass
  type Cb = proc(path: gen_qurl.QUrl, typeVal: QQmlAbstractUrlInterceptorDataType): gen_qurl.QUrl
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlAbstractUrlInterceptor_override_virtual_intercept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlAbstractUrlInterceptor_intercept(self: ptr cQQmlAbstractUrlInterceptor, slot: int, path: pointer, typeVal: cint): pointer {.exportc: "miqt_exec_callback_QQmlAbstractUrlInterceptor_intercept ".} =
  type Cb = proc(path: gen_qurl.QUrl, typeVal: QQmlAbstractUrlInterceptorDataType): gen_qurl.QUrl
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qurl.QUrl(h: path)

  let slotval2 = QQmlAbstractUrlInterceptorDataType(typeVal)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QQmlAbstractUrlInterceptor) =
  fcQQmlAbstractUrlInterceptor_delete(self.h)
