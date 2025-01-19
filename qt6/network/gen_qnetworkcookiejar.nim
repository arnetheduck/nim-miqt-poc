import Qt6Network_libs

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

const cflags = gorge("pkg-config -cflags Qt6Network")
{.compile("gen_qnetworkcookiejar.cpp", cflags).}


import gen_qnetworkcookiejar_types
export gen_qnetworkcookiejar_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnetworkcookie,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnetworkcookie,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQNetworkCookieJar*{.exportc: "QNetworkCookieJar", incompleteStruct.} = object

proc fcQNetworkCookieJar_new(): ptr cQNetworkCookieJar {.importc: "QNetworkCookieJar_new".}
proc fcQNetworkCookieJar_new2(parent: pointer): ptr cQNetworkCookieJar {.importc: "QNetworkCookieJar_new2".}
proc fcQNetworkCookieJar_metaObject(self: pointer, ): pointer {.importc: "QNetworkCookieJar_metaObject".}
proc fcQNetworkCookieJar_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkCookieJar_metacast".}
proc fcQNetworkCookieJar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkCookieJar_metacall".}
proc fcQNetworkCookieJar_tr(s: cstring): struct_miqt_string {.importc: "QNetworkCookieJar_tr".}
proc fcQNetworkCookieJar_cookiesForUrl(self: pointer, url: pointer): struct_miqt_array {.importc: "QNetworkCookieJar_cookiesForUrl".}
proc fcQNetworkCookieJar_setCookiesFromUrl(self: pointer, cookieList: struct_miqt_array, url: pointer): bool {.importc: "QNetworkCookieJar_setCookiesFromUrl".}
proc fcQNetworkCookieJar_insertCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_insertCookie".}
proc fcQNetworkCookieJar_updateCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_updateCookie".}
proc fcQNetworkCookieJar_deleteCookie(self: pointer, cookie: pointer): bool {.importc: "QNetworkCookieJar_deleteCookie".}
proc fcQNetworkCookieJar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkCookieJar_tr2".}
proc fcQNetworkCookieJar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkCookieJar_tr3".}
proc fQNetworkCookieJar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QNetworkCookieJar_virtualbase_metacall".}
proc fcQNetworkCookieJar_override_virtual_metacall(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_metacall".}
proc fQNetworkCookieJar_virtualbase_cookiesForUrl(self: pointer, url: pointer): struct_miqt_array{.importc: "QNetworkCookieJar_virtualbase_cookiesForUrl".}
proc fcQNetworkCookieJar_override_virtual_cookiesForUrl(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_cookiesForUrl".}
proc fQNetworkCookieJar_virtualbase_setCookiesFromUrl(self: pointer, cookieList: struct_miqt_array, url: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_setCookiesFromUrl".}
proc fcQNetworkCookieJar_override_virtual_setCookiesFromUrl(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_setCookiesFromUrl".}
proc fQNetworkCookieJar_virtualbase_insertCookie(self: pointer, cookie: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_insertCookie".}
proc fcQNetworkCookieJar_override_virtual_insertCookie(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_insertCookie".}
proc fQNetworkCookieJar_virtualbase_updateCookie(self: pointer, cookie: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_updateCookie".}
proc fcQNetworkCookieJar_override_virtual_updateCookie(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_updateCookie".}
proc fQNetworkCookieJar_virtualbase_deleteCookie(self: pointer, cookie: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_deleteCookie".}
proc fcQNetworkCookieJar_override_virtual_deleteCookie(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_deleteCookie".}
proc fQNetworkCookieJar_virtualbase_validateCookie(self: pointer, cookie: pointer, url: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_validateCookie".}
proc fcQNetworkCookieJar_override_virtual_validateCookie(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_validateCookie".}
proc fQNetworkCookieJar_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_event".}
proc fcQNetworkCookieJar_override_virtual_event(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_event".}
proc fQNetworkCookieJar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QNetworkCookieJar_virtualbase_eventFilter".}
proc fcQNetworkCookieJar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_eventFilter".}
proc fQNetworkCookieJar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QNetworkCookieJar_virtualbase_timerEvent".}
proc fcQNetworkCookieJar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_timerEvent".}
proc fQNetworkCookieJar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QNetworkCookieJar_virtualbase_childEvent".}
proc fcQNetworkCookieJar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_childEvent".}
proc fQNetworkCookieJar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QNetworkCookieJar_virtualbase_customEvent".}
proc fcQNetworkCookieJar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_customEvent".}
proc fQNetworkCookieJar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkCookieJar_virtualbase_connectNotify".}
proc fcQNetworkCookieJar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_connectNotify".}
proc fQNetworkCookieJar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkCookieJar_virtualbase_disconnectNotify".}
proc fcQNetworkCookieJar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QNetworkCookieJar_override_virtual_disconnectNotify".}
proc fcQNetworkCookieJar_staticMetaObject(): pointer {.importc: "QNetworkCookieJar_staticMetaObject".}
proc fcQNetworkCookieJar_delete(self: pointer) {.importc: "QNetworkCookieJar_delete".}


func init*(T: type QNetworkCookieJar, h: ptr cQNetworkCookieJar): QNetworkCookieJar =
  T(h: h)
proc create*(T: type QNetworkCookieJar, ): QNetworkCookieJar =

  QNetworkCookieJar.init(fcQNetworkCookieJar_new())
proc create*(T: type QNetworkCookieJar, parent: gen_qobject.QObject): QNetworkCookieJar =

  QNetworkCookieJar.init(fcQNetworkCookieJar_new2(parent.h))
proc metaObject*(self: QNetworkCookieJar, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQNetworkCookieJar_metaObject(self.h))

proc metacast*(self: QNetworkCookieJar, param1: cstring): pointer =

  fcQNetworkCookieJar_metacast(self.h, param1)

proc metacall*(self: QNetworkCookieJar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQNetworkCookieJar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QNetworkCookieJar, s: cstring): string =

  let v_ms = fcQNetworkCookieJar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cookiesForUrl*(self: QNetworkCookieJar, url: gen_qurl.QUrl): seq[gen_qnetworkcookie.QNetworkCookie] =

  var v_ma = fcQNetworkCookieJar_cookiesForUrl(self.h, url.h)
  var vx_ret = newSeq[gen_qnetworkcookie.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie.QNetworkCookie(h: v_outCast[i])
  vx_ret

proc setCookiesFromUrl*(self: QNetworkCookieJar, cookieList: seq[gen_qnetworkcookie.QNetworkCookie], url: gen_qurl.QUrl): bool =

  var cookieList_CArray = newSeq[pointer](len(cookieList))
  for i in 0..<len(cookieList):
    cookieList_CArray[i] = cookieList[i].h

  fcQNetworkCookieJar_setCookiesFromUrl(self.h, struct_miqt_array(len: csize_t(len(cookieList)), data: if len(cookieList) == 0: nil else: addr(cookieList_CArray[0])), url.h)

proc insertCookie*(self: QNetworkCookieJar, cookie: gen_qnetworkcookie.QNetworkCookie): bool =

  fcQNetworkCookieJar_insertCookie(self.h, cookie.h)

proc updateCookie*(self: QNetworkCookieJar, cookie: gen_qnetworkcookie.QNetworkCookie): bool =

  fcQNetworkCookieJar_updateCookie(self.h, cookie.h)

proc deleteCookie*(self: QNetworkCookieJar, cookie: gen_qnetworkcookie.QNetworkCookie): bool =

  fcQNetworkCookieJar_deleteCookie(self.h, cookie.h)

proc tr2*(_: type QNetworkCookieJar, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkCookieJar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QNetworkCookieJar, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkCookieJar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QNetworkCookieJar, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQNetworkCookieJar_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QNetworkCookieJarmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_metacall(self: ptr cQNetworkCookieJar, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QNetworkCookieJar_metacall ".} =
  type Cb = proc(super: QNetworkCookieJarmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QNetworkCookieJar(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_cookiesForUrl(self: QNetworkCookieJar, url: gen_qurl.QUrl): seq[gen_qnetworkcookie.QNetworkCookie] =


  var v_ma = fQNetworkCookieJar_virtualbase_cookiesForUrl(self.h, url.h)
  var vx_ret = newSeq[gen_qnetworkcookie.QNetworkCookie](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkcookie.QNetworkCookie(h: v_outCast[i])
  vx_ret

type QNetworkCookieJarcookiesForUrlBase* = proc(url: gen_qurl.QUrl): seq[gen_qnetworkcookie.QNetworkCookie]
proc oncookiesForUrl*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJarcookiesForUrlBase, url: gen_qurl.QUrl): seq[gen_qnetworkcookie.QNetworkCookie]) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJarcookiesForUrlBase, url: gen_qurl.QUrl): seq[gen_qnetworkcookie.QNetworkCookie]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_cookiesForUrl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_cookiesForUrl(self: ptr cQNetworkCookieJar, slot: int, url: pointer): struct_miqt_array {.exportc: "miqt_exec_callback_QNetworkCookieJar_cookiesForUrl ".} =
  type Cb = proc(super: QNetworkCookieJarcookiesForUrlBase, url: gen_qurl.QUrl): seq[gen_qnetworkcookie.QNetworkCookie]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(url: gen_qurl.QUrl): auto =
    callVirtualBase_cookiesForUrl(QNetworkCookieJar(h: self), url)
  let slotval1 = gen_qurl.QUrl(h: url)


  let virtualReturn = nimfunc[](superCall, slotval1 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_setCookiesFromUrl(self: QNetworkCookieJar, cookieList: seq[gen_qnetworkcookie.QNetworkCookie], url: gen_qurl.QUrl): bool =

  var cookieList_CArray = newSeq[pointer](len(cookieList))
  for i in 0..<len(cookieList):
    cookieList_CArray[i] = cookieList[i].h


  fQNetworkCookieJar_virtualbase_setCookiesFromUrl(self.h, struct_miqt_array(len: csize_t(len(cookieList)), data: if len(cookieList) == 0: nil else: addr(cookieList_CArray[0])), url.h)

type QNetworkCookieJarsetCookiesFromUrlBase* = proc(cookieList: seq[gen_qnetworkcookie.QNetworkCookie], url: gen_qurl.QUrl): bool
proc onsetCookiesFromUrl*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJarsetCookiesFromUrlBase, cookieList: seq[gen_qnetworkcookie.QNetworkCookie], url: gen_qurl.QUrl): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJarsetCookiesFromUrlBase, cookieList: seq[gen_qnetworkcookie.QNetworkCookie], url: gen_qurl.QUrl): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_setCookiesFromUrl(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_setCookiesFromUrl(self: ptr cQNetworkCookieJar, slot: int, cookieList: struct_miqt_array, url: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_setCookiesFromUrl ".} =
  type Cb = proc(super: QNetworkCookieJarsetCookiesFromUrlBase, cookieList: seq[gen_qnetworkcookie.QNetworkCookie], url: gen_qurl.QUrl): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cookieList: seq[gen_qnetworkcookie.QNetworkCookie], url: gen_qurl.QUrl): auto =
    callVirtualBase_setCookiesFromUrl(QNetworkCookieJar(h: self), cookieList, url)
  var vcookieList_ma = cookieList
  var vcookieListx_ret = newSeq[gen_qnetworkcookie.QNetworkCookie](int(vcookieList_ma.len))
  let vcookieList_outCast = cast[ptr UncheckedArray[pointer]](vcookieList_ma.data)
  for i in 0 ..< vcookieList_ma.len:
    vcookieListx_ret[i] = gen_qnetworkcookie.QNetworkCookie(h: vcookieList_outCast[i])
  let slotval1 = vcookieListx_ret

  let slotval2 = gen_qurl.QUrl(h: url)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_insertCookie(self: QNetworkCookieJar, cookie: gen_qnetworkcookie.QNetworkCookie): bool =


  fQNetworkCookieJar_virtualbase_insertCookie(self.h, cookie.h)

type QNetworkCookieJarinsertCookieBase* = proc(cookie: gen_qnetworkcookie.QNetworkCookie): bool
proc oninsertCookie*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJarinsertCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJarinsertCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_insertCookie(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_insertCookie(self: ptr cQNetworkCookieJar, slot: int, cookie: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_insertCookie ".} =
  type Cb = proc(super: QNetworkCookieJarinsertCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cookie: gen_qnetworkcookie.QNetworkCookie): auto =
    callVirtualBase_insertCookie(QNetworkCookieJar(h: self), cookie)
  let slotval1 = gen_qnetworkcookie.QNetworkCookie(h: cookie)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_updateCookie(self: QNetworkCookieJar, cookie: gen_qnetworkcookie.QNetworkCookie): bool =


  fQNetworkCookieJar_virtualbase_updateCookie(self.h, cookie.h)

type QNetworkCookieJarupdateCookieBase* = proc(cookie: gen_qnetworkcookie.QNetworkCookie): bool
proc onupdateCookie*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJarupdateCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJarupdateCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_updateCookie(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_updateCookie(self: ptr cQNetworkCookieJar, slot: int, cookie: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_updateCookie ".} =
  type Cb = proc(super: QNetworkCookieJarupdateCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cookie: gen_qnetworkcookie.QNetworkCookie): auto =
    callVirtualBase_updateCookie(QNetworkCookieJar(h: self), cookie)
  let slotval1 = gen_qnetworkcookie.QNetworkCookie(h: cookie)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_deleteCookie(self: QNetworkCookieJar, cookie: gen_qnetworkcookie.QNetworkCookie): bool =


  fQNetworkCookieJar_virtualbase_deleteCookie(self.h, cookie.h)

type QNetworkCookieJardeleteCookieBase* = proc(cookie: gen_qnetworkcookie.QNetworkCookie): bool
proc ondeleteCookie*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJardeleteCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJardeleteCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_deleteCookie(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_deleteCookie(self: ptr cQNetworkCookieJar, slot: int, cookie: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_deleteCookie ".} =
  type Cb = proc(super: QNetworkCookieJardeleteCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cookie: gen_qnetworkcookie.QNetworkCookie): auto =
    callVirtualBase_deleteCookie(QNetworkCookieJar(h: self), cookie)
  let slotval1 = gen_qnetworkcookie.QNetworkCookie(h: cookie)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_validateCookie(self: QNetworkCookieJar, cookie: gen_qnetworkcookie.QNetworkCookie, url: gen_qurl.QUrl): bool =


  fQNetworkCookieJar_virtualbase_validateCookie(self.h, cookie.h, url.h)

type QNetworkCookieJarvalidateCookieBase* = proc(cookie: gen_qnetworkcookie.QNetworkCookie, url: gen_qurl.QUrl): bool
proc onvalidateCookie*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJarvalidateCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie, url: gen_qurl.QUrl): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJarvalidateCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie, url: gen_qurl.QUrl): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_validateCookie(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_validateCookie(self: ptr cQNetworkCookieJar, slot: int, cookie: pointer, url: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_validateCookie ".} =
  type Cb = proc(super: QNetworkCookieJarvalidateCookieBase, cookie: gen_qnetworkcookie.QNetworkCookie, url: gen_qurl.QUrl): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cookie: gen_qnetworkcookie.QNetworkCookie, url: gen_qurl.QUrl): auto =
    callVirtualBase_validateCookie(QNetworkCookieJar(h: self), cookie, url)
  let slotval1 = gen_qnetworkcookie.QNetworkCookie(h: cookie)

  let slotval2 = gen_qurl.QUrl(h: url)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QNetworkCookieJar, event: gen_qcoreevent.QEvent): bool =


  fQNetworkCookieJar_virtualbase_event(self.h, event.h)

type QNetworkCookieJareventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJareventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJareventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_event(self: ptr cQNetworkCookieJar, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_event ".} =
  type Cb = proc(super: QNetworkCookieJareventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QNetworkCookieJar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QNetworkCookieJar, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQNetworkCookieJar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QNetworkCookieJareventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_eventFilter(self: ptr cQNetworkCookieJar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkCookieJar_eventFilter ".} =
  type Cb = proc(super: QNetworkCookieJareventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QNetworkCookieJar(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QNetworkCookieJar, event: gen_qcoreevent.QTimerEvent): void =


  fQNetworkCookieJar_virtualbase_timerEvent(self.h, event.h)

type QNetworkCookieJartimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJartimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_timerEvent(self: ptr cQNetworkCookieJar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_timerEvent ".} =
  type Cb = proc(super: QNetworkCookieJartimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QNetworkCookieJar(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QNetworkCookieJar, event: gen_qcoreevent.QChildEvent): void =


  fQNetworkCookieJar_virtualbase_childEvent(self.h, event.h)

type QNetworkCookieJarchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJarchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_childEvent(self: ptr cQNetworkCookieJar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_childEvent ".} =
  type Cb = proc(super: QNetworkCookieJarchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QNetworkCookieJar(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QNetworkCookieJar, event: gen_qcoreevent.QEvent): void =


  fQNetworkCookieJar_virtualbase_customEvent(self.h, event.h)

type QNetworkCookieJarcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJarcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_customEvent(self: ptr cQNetworkCookieJar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_customEvent ".} =
  type Cb = proc(super: QNetworkCookieJarcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QNetworkCookieJar(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QNetworkCookieJar, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkCookieJar_virtualbase_connectNotify(self.h, signal.h)

type QNetworkCookieJarconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_connectNotify(self: ptr cQNetworkCookieJar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_connectNotify ".} =
  type Cb = proc(super: QNetworkCookieJarconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QNetworkCookieJar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QNetworkCookieJar, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkCookieJar_virtualbase_disconnectNotify(self.h, signal.h)

type QNetworkCookieJardisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QNetworkCookieJar, slot: proc(super: QNetworkCookieJardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkCookieJardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkCookieJar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkCookieJar_disconnectNotify(self: ptr cQNetworkCookieJar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkCookieJar_disconnectNotify ".} =
  type Cb = proc(super: QNetworkCookieJardisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QNetworkCookieJar(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QNetworkCookieJar): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQNetworkCookieJar_staticMetaObject())
proc delete*(self: QNetworkCookieJar) =
  fcQNetworkCookieJar_delete(self.h)
