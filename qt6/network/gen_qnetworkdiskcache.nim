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
{.compile("gen_qnetworkdiskcache.cpp", cflags).}


import gen_qnetworkdiskcache_types
export gen_qnetworkdiskcache_types

import
  gen_qabstractnetworkcache,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qabstractnetworkcache,
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQNetworkDiskCache*{.exportc: "QNetworkDiskCache", incompleteStruct.} = object

proc fcQNetworkDiskCache_new(): ptr cQNetworkDiskCache {.importc: "QNetworkDiskCache_new".}
proc fcQNetworkDiskCache_new2(parent: pointer): ptr cQNetworkDiskCache {.importc: "QNetworkDiskCache_new2".}
proc fcQNetworkDiskCache_metaObject(self: pointer, ): pointer {.importc: "QNetworkDiskCache_metaObject".}
proc fcQNetworkDiskCache_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkDiskCache_metacast".}
proc fcQNetworkDiskCache_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkDiskCache_metacall".}
proc fcQNetworkDiskCache_tr(s: cstring): struct_miqt_string {.importc: "QNetworkDiskCache_tr".}
proc fcQNetworkDiskCache_cacheDirectory(self: pointer, ): struct_miqt_string {.importc: "QNetworkDiskCache_cacheDirectory".}
proc fcQNetworkDiskCache_setCacheDirectory(self: pointer, cacheDir: struct_miqt_string): void {.importc: "QNetworkDiskCache_setCacheDirectory".}
proc fcQNetworkDiskCache_maximumCacheSize(self: pointer, ): clonglong {.importc: "QNetworkDiskCache_maximumCacheSize".}
proc fcQNetworkDiskCache_setMaximumCacheSize(self: pointer, size: clonglong): void {.importc: "QNetworkDiskCache_setMaximumCacheSize".}
proc fcQNetworkDiskCache_cacheSize(self: pointer, ): clonglong {.importc: "QNetworkDiskCache_cacheSize".}
proc fcQNetworkDiskCache_metaData(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_metaData".}
proc fcQNetworkDiskCache_updateMetaData(self: pointer, metaData: pointer): void {.importc: "QNetworkDiskCache_updateMetaData".}
proc fcQNetworkDiskCache_data(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_data".}
proc fcQNetworkDiskCache_remove(self: pointer, url: pointer): bool {.importc: "QNetworkDiskCache_remove".}
proc fcQNetworkDiskCache_prepare(self: pointer, metaData: pointer): pointer {.importc: "QNetworkDiskCache_prepare".}
proc fcQNetworkDiskCache_insert(self: pointer, device: pointer): void {.importc: "QNetworkDiskCache_insert".}
proc fcQNetworkDiskCache_fileMetaData(self: pointer, fileName: struct_miqt_string): pointer {.importc: "QNetworkDiskCache_fileMetaData".}
proc fcQNetworkDiskCache_clear(self: pointer, ): void {.importc: "QNetworkDiskCache_clear".}
proc fcQNetworkDiskCache_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkDiskCache_tr2".}
proc fcQNetworkDiskCache_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkDiskCache_tr3".}
proc fQNetworkDiskCache_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QNetworkDiskCache_virtualbase_metaObject".}
proc fcQNetworkDiskCache_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_metaObject".}
proc fQNetworkDiskCache_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QNetworkDiskCache_virtualbase_metacast".}
proc fcQNetworkDiskCache_override_virtual_metacast(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_metacast".}
proc fQNetworkDiskCache_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QNetworkDiskCache_virtualbase_metacall".}
proc fcQNetworkDiskCache_override_virtual_metacall(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_metacall".}
proc fQNetworkDiskCache_virtualbase_cacheSize(self: pointer, ): clonglong{.importc: "QNetworkDiskCache_virtualbase_cacheSize".}
proc fcQNetworkDiskCache_override_virtual_cacheSize(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_cacheSize".}
proc fQNetworkDiskCache_virtualbase_metaData(self: pointer, url: pointer): pointer{.importc: "QNetworkDiskCache_virtualbase_metaData".}
proc fcQNetworkDiskCache_override_virtual_metaData(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_metaData".}
proc fQNetworkDiskCache_virtualbase_updateMetaData(self: pointer, metaData: pointer): void{.importc: "QNetworkDiskCache_virtualbase_updateMetaData".}
proc fcQNetworkDiskCache_override_virtual_updateMetaData(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_updateMetaData".}
proc fQNetworkDiskCache_virtualbase_data(self: pointer, url: pointer): pointer{.importc: "QNetworkDiskCache_virtualbase_data".}
proc fcQNetworkDiskCache_override_virtual_data(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_data".}
proc fQNetworkDiskCache_virtualbase_remove(self: pointer, url: pointer): bool{.importc: "QNetworkDiskCache_virtualbase_remove".}
proc fcQNetworkDiskCache_override_virtual_remove(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_remove".}
proc fQNetworkDiskCache_virtualbase_prepare(self: pointer, metaData: pointer): pointer{.importc: "QNetworkDiskCache_virtualbase_prepare".}
proc fcQNetworkDiskCache_override_virtual_prepare(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_prepare".}
proc fQNetworkDiskCache_virtualbase_insert(self: pointer, device: pointer): void{.importc: "QNetworkDiskCache_virtualbase_insert".}
proc fcQNetworkDiskCache_override_virtual_insert(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_insert".}
proc fQNetworkDiskCache_virtualbase_clear(self: pointer, ): void{.importc: "QNetworkDiskCache_virtualbase_clear".}
proc fcQNetworkDiskCache_override_virtual_clear(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_clear".}
proc fQNetworkDiskCache_virtualbase_expire(self: pointer, ): clonglong{.importc: "QNetworkDiskCache_virtualbase_expire".}
proc fcQNetworkDiskCache_override_virtual_expire(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_expire".}
proc fQNetworkDiskCache_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QNetworkDiskCache_virtualbase_event".}
proc fcQNetworkDiskCache_override_virtual_event(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_event".}
proc fQNetworkDiskCache_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QNetworkDiskCache_virtualbase_eventFilter".}
proc fcQNetworkDiskCache_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_eventFilter".}
proc fQNetworkDiskCache_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QNetworkDiskCache_virtualbase_timerEvent".}
proc fcQNetworkDiskCache_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_timerEvent".}
proc fQNetworkDiskCache_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QNetworkDiskCache_virtualbase_childEvent".}
proc fcQNetworkDiskCache_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_childEvent".}
proc fQNetworkDiskCache_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QNetworkDiskCache_virtualbase_customEvent".}
proc fcQNetworkDiskCache_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_customEvent".}
proc fQNetworkDiskCache_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkDiskCache_virtualbase_connectNotify".}
proc fcQNetworkDiskCache_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_connectNotify".}
proc fQNetworkDiskCache_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkDiskCache_virtualbase_disconnectNotify".}
proc fcQNetworkDiskCache_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_disconnectNotify".}
proc fcQNetworkDiskCache_staticMetaObject(): pointer {.importc: "QNetworkDiskCache_staticMetaObject".}
proc fcQNetworkDiskCache_delete(self: pointer) {.importc: "QNetworkDiskCache_delete".}


func init*(T: type QNetworkDiskCache, h: ptr cQNetworkDiskCache): QNetworkDiskCache =
  T(h: h)
proc create*(T: type QNetworkDiskCache, ): QNetworkDiskCache =

  QNetworkDiskCache.init(fcQNetworkDiskCache_new())
proc create*(T: type QNetworkDiskCache, parent: gen_qobject.QObject): QNetworkDiskCache =

  QNetworkDiskCache.init(fcQNetworkDiskCache_new2(parent.h))
proc metaObject*(self: QNetworkDiskCache, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQNetworkDiskCache_metaObject(self.h))

proc metacast*(self: QNetworkDiskCache, param1: cstring): pointer =

  fcQNetworkDiskCache_metacast(self.h, param1)

proc metacall*(self: QNetworkDiskCache, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQNetworkDiskCache_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QNetworkDiskCache, s: cstring): string =

  let v_ms = fcQNetworkDiskCache_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cacheDirectory*(self: QNetworkDiskCache, ): string =

  let v_ms = fcQNetworkDiskCache_cacheDirectory(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCacheDirectory*(self: QNetworkDiskCache, cacheDir: string): void =

  fcQNetworkDiskCache_setCacheDirectory(self.h, struct_miqt_string(data: cacheDir, len: csize_t(len(cacheDir))))

proc maximumCacheSize*(self: QNetworkDiskCache, ): clonglong =

  fcQNetworkDiskCache_maximumCacheSize(self.h)

proc setMaximumCacheSize*(self: QNetworkDiskCache, size: clonglong): void =

  fcQNetworkDiskCache_setMaximumCacheSize(self.h, size)

proc cacheSize*(self: QNetworkDiskCache, ): clonglong =

  fcQNetworkDiskCache_cacheSize(self.h)

proc metaData*(self: QNetworkDiskCache, url: gen_qurl.QUrl): gen_qabstractnetworkcache.QNetworkCacheMetaData =

  gen_qabstractnetworkcache.QNetworkCacheMetaData(h: fcQNetworkDiskCache_metaData(self.h, url.h))

proc updateMetaData*(self: QNetworkDiskCache, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): void =

  fcQNetworkDiskCache_updateMetaData(self.h, metaData.h)

proc data*(self: QNetworkDiskCache, url: gen_qurl.QUrl): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQNetworkDiskCache_data(self.h, url.h))

proc remove*(self: QNetworkDiskCache, url: gen_qurl.QUrl): bool =

  fcQNetworkDiskCache_remove(self.h, url.h)

proc prepare*(self: QNetworkDiskCache, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQNetworkDiskCache_prepare(self.h, metaData.h))

proc insert*(self: QNetworkDiskCache, device: gen_qiodevice.QIODevice): void =

  fcQNetworkDiskCache_insert(self.h, device.h)

proc fileMetaData*(self: QNetworkDiskCache, fileName: string): gen_qabstractnetworkcache.QNetworkCacheMetaData =

  gen_qabstractnetworkcache.QNetworkCacheMetaData(h: fcQNetworkDiskCache_fileMetaData(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc clear*(self: QNetworkDiskCache, ): void =

  fcQNetworkDiskCache_clear(self.h)

proc tr2*(_: type QNetworkDiskCache, s: cstring, c: cstring): string =

  let v_ms = fcQNetworkDiskCache_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QNetworkDiskCache, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQNetworkDiskCache_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QNetworkDiskCache, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQNetworkDiskCache_virtualbase_metaObject(self.h))

type QNetworkDiskCachemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_metaObject(self: ptr cQNetworkDiskCache, slot: int): pointer {.exportc: "miqt_exec_callback_QNetworkDiskCache_metaObject ".} =
  type Cb = proc(super: QNetworkDiskCachemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QNetworkDiskCache(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QNetworkDiskCache, param1: cstring): pointer =


  fQNetworkDiskCache_virtualbase_metacast(self.h, param1)

type QNetworkDiskCachemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_metacast(self: ptr cQNetworkDiskCache, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QNetworkDiskCache_metacast ".} =
  type Cb = proc(super: QNetworkDiskCachemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QNetworkDiskCache(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QNetworkDiskCache, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQNetworkDiskCache_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QNetworkDiskCachemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_metacall(self: ptr cQNetworkDiskCache, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QNetworkDiskCache_metacall ".} =
  type Cb = proc(super: QNetworkDiskCachemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QNetworkDiskCache(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_cacheSize(self: QNetworkDiskCache, ): clonglong =


  fQNetworkDiskCache_virtualbase_cacheSize(self.h)

type QNetworkDiskCachecacheSizeBase* = proc(): clonglong
proc oncacheSize*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachecacheSizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachecacheSizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_cacheSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_cacheSize(self: ptr cQNetworkDiskCache, slot: int): clonglong {.exportc: "miqt_exec_callback_QNetworkDiskCache_cacheSize ".} =
  type Cb = proc(super: QNetworkDiskCachecacheSizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_cacheSize(QNetworkDiskCache(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_metaData(self: QNetworkDiskCache, url: gen_qurl.QUrl): gen_qabstractnetworkcache.QNetworkCacheMetaData =


  gen_qabstractnetworkcache.QNetworkCacheMetaData(h: fQNetworkDiskCache_virtualbase_metaData(self.h, url.h))

type QNetworkDiskCachemetaDataBase* = proc(url: gen_qurl.QUrl): gen_qabstractnetworkcache.QNetworkCacheMetaData
proc onmetaData*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachemetaDataBase, url: gen_qurl.QUrl): gen_qabstractnetworkcache.QNetworkCacheMetaData) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachemetaDataBase, url: gen_qurl.QUrl): gen_qabstractnetworkcache.QNetworkCacheMetaData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_metaData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_metaData(self: ptr cQNetworkDiskCache, slot: int, url: pointer): pointer {.exportc: "miqt_exec_callback_QNetworkDiskCache_metaData ".} =
  type Cb = proc(super: QNetworkDiskCachemetaDataBase, url: gen_qurl.QUrl): gen_qabstractnetworkcache.QNetworkCacheMetaData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(url: gen_qurl.QUrl): auto =
    callVirtualBase_metaData(QNetworkDiskCache(h: self), url)
  let slotval1 = gen_qurl.QUrl(h: url)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_updateMetaData(self: QNetworkDiskCache, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): void =


  fQNetworkDiskCache_virtualbase_updateMetaData(self.h, metaData.h)

type QNetworkDiskCacheupdateMetaDataBase* = proc(metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): void
proc onupdateMetaData*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCacheupdateMetaDataBase, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCacheupdateMetaDataBase, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_updateMetaData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_updateMetaData(self: ptr cQNetworkDiskCache, slot: int, metaData: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_updateMetaData ".} =
  type Cb = proc(super: QNetworkDiskCacheupdateMetaDataBase, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): auto =
    callVirtualBase_updateMetaData(QNetworkDiskCache(h: self), metaData)
  let slotval1 = gen_qabstractnetworkcache.QNetworkCacheMetaData(h: metaData)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_data(self: QNetworkDiskCache, url: gen_qurl.QUrl): gen_qiodevice.QIODevice =


  gen_qiodevice.QIODevice(h: fQNetworkDiskCache_virtualbase_data(self.h, url.h))

type QNetworkDiskCachedataBase* = proc(url: gen_qurl.QUrl): gen_qiodevice.QIODevice
proc ondata*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachedataBase, url: gen_qurl.QUrl): gen_qiodevice.QIODevice) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachedataBase, url: gen_qurl.QUrl): gen_qiodevice.QIODevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_data(self: ptr cQNetworkDiskCache, slot: int, url: pointer): pointer {.exportc: "miqt_exec_callback_QNetworkDiskCache_data ".} =
  type Cb = proc(super: QNetworkDiskCachedataBase, url: gen_qurl.QUrl): gen_qiodevice.QIODevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(url: gen_qurl.QUrl): auto =
    callVirtualBase_data(QNetworkDiskCache(h: self), url)
  let slotval1 = gen_qurl.QUrl(h: url)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_remove(self: QNetworkDiskCache, url: gen_qurl.QUrl): bool =


  fQNetworkDiskCache_virtualbase_remove(self.h, url.h)

type QNetworkDiskCacheremoveBase* = proc(url: gen_qurl.QUrl): bool
proc onremove*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCacheremoveBase, url: gen_qurl.QUrl): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCacheremoveBase, url: gen_qurl.QUrl): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_remove(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_remove(self: ptr cQNetworkDiskCache, slot: int, url: pointer): bool {.exportc: "miqt_exec_callback_QNetworkDiskCache_remove ".} =
  type Cb = proc(super: QNetworkDiskCacheremoveBase, url: gen_qurl.QUrl): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(url: gen_qurl.QUrl): auto =
    callVirtualBase_remove(QNetworkDiskCache(h: self), url)
  let slotval1 = gen_qurl.QUrl(h: url)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_prepare(self: QNetworkDiskCache, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): gen_qiodevice.QIODevice =


  gen_qiodevice.QIODevice(h: fQNetworkDiskCache_virtualbase_prepare(self.h, metaData.h))

type QNetworkDiskCacheprepareBase* = proc(metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): gen_qiodevice.QIODevice
proc onprepare*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCacheprepareBase, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): gen_qiodevice.QIODevice) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCacheprepareBase, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): gen_qiodevice.QIODevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_prepare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_prepare(self: ptr cQNetworkDiskCache, slot: int, metaData: pointer): pointer {.exportc: "miqt_exec_callback_QNetworkDiskCache_prepare ".} =
  type Cb = proc(super: QNetworkDiskCacheprepareBase, metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): gen_qiodevice.QIODevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(metaData: gen_qabstractnetworkcache.QNetworkCacheMetaData): auto =
    callVirtualBase_prepare(QNetworkDiskCache(h: self), metaData)
  let slotval1 = gen_qabstractnetworkcache.QNetworkCacheMetaData(h: metaData)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_insert(self: QNetworkDiskCache, device: gen_qiodevice.QIODevice): void =


  fQNetworkDiskCache_virtualbase_insert(self.h, device.h)

type QNetworkDiskCacheinsertBase* = proc(device: gen_qiodevice.QIODevice): void
proc oninsert*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCacheinsertBase, device: gen_qiodevice.QIODevice): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCacheinsertBase, device: gen_qiodevice.QIODevice): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_insert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_insert(self: ptr cQNetworkDiskCache, slot: int, device: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_insert ".} =
  type Cb = proc(super: QNetworkDiskCacheinsertBase, device: gen_qiodevice.QIODevice): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(device: gen_qiodevice.QIODevice): auto =
    callVirtualBase_insert(QNetworkDiskCache(h: self), device)
  let slotval1 = gen_qiodevice.QIODevice(h: device)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clear(self: QNetworkDiskCache, ): void =


  fQNetworkDiskCache_virtualbase_clear(self.h)

type QNetworkDiskCacheclearBase* = proc(): void
proc onclear*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCacheclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCacheclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_clear(self: ptr cQNetworkDiskCache, slot: int): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_clear ".} =
  type Cb = proc(super: QNetworkDiskCacheclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QNetworkDiskCache(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_expire(self: QNetworkDiskCache, ): clonglong =


  fQNetworkDiskCache_virtualbase_expire(self.h)

type QNetworkDiskCacheexpireBase* = proc(): clonglong
proc onexpire*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCacheexpireBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCacheexpireBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_expire(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_expire(self: ptr cQNetworkDiskCache, slot: int): clonglong {.exportc: "miqt_exec_callback_QNetworkDiskCache_expire ".} =
  type Cb = proc(super: QNetworkDiskCacheexpireBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_expire(QNetworkDiskCache(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QNetworkDiskCache, event: gen_qcoreevent.QEvent): bool =


  fQNetworkDiskCache_virtualbase_event(self.h, event.h)

type QNetworkDiskCacheeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCacheeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCacheeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_event(self: ptr cQNetworkDiskCache, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkDiskCache_event ".} =
  type Cb = proc(super: QNetworkDiskCacheeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QNetworkDiskCache(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QNetworkDiskCache, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQNetworkDiskCache_virtualbase_eventFilter(self.h, watched.h, event.h)

type QNetworkDiskCacheeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCacheeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCacheeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_eventFilter(self: ptr cQNetworkDiskCache, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkDiskCache_eventFilter ".} =
  type Cb = proc(super: QNetworkDiskCacheeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QNetworkDiskCache(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QNetworkDiskCache, event: gen_qcoreevent.QTimerEvent): void =


  fQNetworkDiskCache_virtualbase_timerEvent(self.h, event.h)

type QNetworkDiskCachetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_timerEvent(self: ptr cQNetworkDiskCache, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_timerEvent ".} =
  type Cb = proc(super: QNetworkDiskCachetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QNetworkDiskCache(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QNetworkDiskCache, event: gen_qcoreevent.QChildEvent): void =


  fQNetworkDiskCache_virtualbase_childEvent(self.h, event.h)

type QNetworkDiskCachechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_childEvent(self: ptr cQNetworkDiskCache, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_childEvent ".} =
  type Cb = proc(super: QNetworkDiskCachechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QNetworkDiskCache(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QNetworkDiskCache, event: gen_qcoreevent.QEvent): void =


  fQNetworkDiskCache_virtualbase_customEvent(self.h, event.h)

type QNetworkDiskCachecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_customEvent(self: ptr cQNetworkDiskCache, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_customEvent ".} =
  type Cb = proc(super: QNetworkDiskCachecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QNetworkDiskCache(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QNetworkDiskCache, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkDiskCache_virtualbase_connectNotify(self.h, signal.h)

type QNetworkDiskCacheconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCacheconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCacheconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_connectNotify(self: ptr cQNetworkDiskCache, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_connectNotify ".} =
  type Cb = proc(super: QNetworkDiskCacheconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QNetworkDiskCache(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QNetworkDiskCache, signal: gen_qmetaobject.QMetaMethod): void =


  fQNetworkDiskCache_virtualbase_disconnectNotify(self.h, signal.h)

type QNetworkDiskCachedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QNetworkDiskCache, slot: proc(super: QNetworkDiskCachedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QNetworkDiskCachedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_disconnectNotify(self: ptr cQNetworkDiskCache, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_disconnectNotify ".} =
  type Cb = proc(super: QNetworkDiskCachedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QNetworkDiskCache(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QNetworkDiskCache): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQNetworkDiskCache_staticMetaObject())
proc delete*(self: QNetworkDiskCache) =
  fcQNetworkDiskCache_delete(self.h)
