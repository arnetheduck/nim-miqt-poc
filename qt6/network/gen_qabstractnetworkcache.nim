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
{.compile("gen_qabstractnetworkcache.cpp", cflags).}


import gen_qabstractnetworkcache_types
export gen_qabstractnetworkcache_types

import
  gen_qdatetime,
  gen_qiodevice,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvariant,
  std/tables
export
  gen_qdatetime,
  gen_qiodevice,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvariant

type cQNetworkCacheMetaData*{.exportc: "QNetworkCacheMetaData", incompleteStruct.} = object
type cQAbstractNetworkCache*{.exportc: "QAbstractNetworkCache", incompleteStruct.} = object

proc fcQNetworkCacheMetaData_new(): ptr cQNetworkCacheMetaData {.importc: "QNetworkCacheMetaData_new".}
proc fcQNetworkCacheMetaData_new2(other: pointer): ptr cQNetworkCacheMetaData {.importc: "QNetworkCacheMetaData_new2".}
proc fcQNetworkCacheMetaData_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkCacheMetaData_operatorAssign".}
proc fcQNetworkCacheMetaData_swap(self: pointer, other: pointer): void {.importc: "QNetworkCacheMetaData_swap".}
proc fcQNetworkCacheMetaData_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkCacheMetaData_operatorEqual".}
proc fcQNetworkCacheMetaData_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkCacheMetaData_operatorNotEqual".}
proc fcQNetworkCacheMetaData_isValid(self: pointer, ): bool {.importc: "QNetworkCacheMetaData_isValid".}
proc fcQNetworkCacheMetaData_url(self: pointer, ): pointer {.importc: "QNetworkCacheMetaData_url".}
proc fcQNetworkCacheMetaData_setUrl(self: pointer, url: pointer): void {.importc: "QNetworkCacheMetaData_setUrl".}
proc fcQNetworkCacheMetaData_rawHeaders(self: pointer, ): struct_miqt_array {.importc: "QNetworkCacheMetaData_rawHeaders".}
proc fcQNetworkCacheMetaData_setRawHeaders(self: pointer, headers: struct_miqt_array): void {.importc: "QNetworkCacheMetaData_setRawHeaders".}
proc fcQNetworkCacheMetaData_lastModified(self: pointer, ): pointer {.importc: "QNetworkCacheMetaData_lastModified".}
proc fcQNetworkCacheMetaData_setLastModified(self: pointer, dateTime: pointer): void {.importc: "QNetworkCacheMetaData_setLastModified".}
proc fcQNetworkCacheMetaData_expirationDate(self: pointer, ): pointer {.importc: "QNetworkCacheMetaData_expirationDate".}
proc fcQNetworkCacheMetaData_setExpirationDate(self: pointer, dateTime: pointer): void {.importc: "QNetworkCacheMetaData_setExpirationDate".}
proc fcQNetworkCacheMetaData_saveToDisk(self: pointer, ): bool {.importc: "QNetworkCacheMetaData_saveToDisk".}
proc fcQNetworkCacheMetaData_setSaveToDisk(self: pointer, allow: bool): void {.importc: "QNetworkCacheMetaData_setSaveToDisk".}
proc fcQNetworkCacheMetaData_attributes(self: pointer, ): struct_miqt_map {.importc: "QNetworkCacheMetaData_attributes".}
proc fcQNetworkCacheMetaData_setAttributes(self: pointer, attributes: struct_miqt_map): void {.importc: "QNetworkCacheMetaData_setAttributes".}
proc fcQNetworkCacheMetaData_delete(self: pointer) {.importc: "QNetworkCacheMetaData_delete".}
proc fcQAbstractNetworkCache_metaObject(self: pointer, ): pointer {.importc: "QAbstractNetworkCache_metaObject".}
proc fcQAbstractNetworkCache_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractNetworkCache_metacast".}
proc fcQAbstractNetworkCache_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractNetworkCache_metacall".}
proc fcQAbstractNetworkCache_tr(s: cstring): struct_miqt_string {.importc: "QAbstractNetworkCache_tr".}
proc fcQAbstractNetworkCache_metaData(self: pointer, url: pointer): pointer {.importc: "QAbstractNetworkCache_metaData".}
proc fcQAbstractNetworkCache_updateMetaData(self: pointer, metaData: pointer): void {.importc: "QAbstractNetworkCache_updateMetaData".}
proc fcQAbstractNetworkCache_data(self: pointer, url: pointer): pointer {.importc: "QAbstractNetworkCache_data".}
proc fcQAbstractNetworkCache_remove(self: pointer, url: pointer): bool {.importc: "QAbstractNetworkCache_remove".}
proc fcQAbstractNetworkCache_cacheSize(self: pointer, ): clonglong {.importc: "QAbstractNetworkCache_cacheSize".}
proc fcQAbstractNetworkCache_prepare(self: pointer, metaData: pointer): pointer {.importc: "QAbstractNetworkCache_prepare".}
proc fcQAbstractNetworkCache_insert(self: pointer, device: pointer): void {.importc: "QAbstractNetworkCache_insert".}
proc fcQAbstractNetworkCache_clear(self: pointer, ): void {.importc: "QAbstractNetworkCache_clear".}
proc fcQAbstractNetworkCache_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractNetworkCache_tr2".}
proc fcQAbstractNetworkCache_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractNetworkCache_tr3".}
proc fcQAbstractNetworkCache_staticMetaObject(): pointer {.importc: "QAbstractNetworkCache_staticMetaObject".}
proc fcQAbstractNetworkCache_delete(self: pointer) {.importc: "QAbstractNetworkCache_delete".}


func init*(T: type QNetworkCacheMetaData, h: ptr cQNetworkCacheMetaData): QNetworkCacheMetaData =
  T(h: h)
proc create*(T: type QNetworkCacheMetaData, ): QNetworkCacheMetaData =

  QNetworkCacheMetaData.init(fcQNetworkCacheMetaData_new())
proc create*(T: type QNetworkCacheMetaData, other: QNetworkCacheMetaData): QNetworkCacheMetaData =

  QNetworkCacheMetaData.init(fcQNetworkCacheMetaData_new2(other.h))
proc operatorAssign*(self: QNetworkCacheMetaData, other: QNetworkCacheMetaData): void =

  fcQNetworkCacheMetaData_operatorAssign(self.h, other.h)

proc swap*(self: QNetworkCacheMetaData, other: QNetworkCacheMetaData): void =

  fcQNetworkCacheMetaData_swap(self.h, other.h)

proc operatorEqual*(self: QNetworkCacheMetaData, other: QNetworkCacheMetaData): bool =

  fcQNetworkCacheMetaData_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QNetworkCacheMetaData, other: QNetworkCacheMetaData): bool =

  fcQNetworkCacheMetaData_operatorNotEqual(self.h, other.h)

proc isValid*(self: QNetworkCacheMetaData, ): bool =

  fcQNetworkCacheMetaData_isValid(self.h)

proc url*(self: QNetworkCacheMetaData, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQNetworkCacheMetaData_url(self.h))

proc setUrl*(self: QNetworkCacheMetaData, url: gen_qurl.QUrl): void =

  fcQNetworkCacheMetaData_setUrl(self.h, url.h)

proc rawHeaders*(self: QNetworkCacheMetaData, ): seq[tuple[first: seq[byte], second: seq[byte]]] =

  var v_ma = fcQNetworkCacheMetaData_rawHeaders(self.h)
  var vx_ret = newSeq[tuple[first: seq[byte], second: seq[byte]]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[struct_miqt_string]](vx_lv_mm.values)
    var vx_lv_first_bytearray = vx_lv_First_CArray[0]
    var vx_lv_firstx_ret = @(toOpenArrayByte(vx_lv_first_bytearray.data, 0, int(vx_lv_first_bytearray.len)-1))
    c_free(vx_lv_first_bytearray.data)
    var vx_lv_entry_First = vx_lv_firstx_ret

    var vx_lv_second_bytearray = vx_lv_Second_CArray[0]
    var vx_lv_secondx_ret = @(toOpenArrayByte(vx_lv_second_bytearray.data, 0, int(vx_lv_second_bytearray.len)-1))
    c_free(vx_lv_second_bytearray.data)
    var vx_lv_entry_Second = vx_lv_secondx_ret

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setRawHeaders*(self: QNetworkCacheMetaData, headers: seq[tuple[first: seq[byte], second: seq[byte]]]): void =

  var headers_CArray = newSeq[struct_miqt_map](len(headers))
  for i in 0..<len(headers):
    var headers_i_CArray_First: struct_miqt_string
    var headers_i_CArray_Second: struct_miqt_string
    headers_i_CArray_First = struct_miqt_string(data: cast[cstring](if len(headers[i].first) == 0: nil else: unsafeAddr headers[i].first[0]), len: csize_t(len(headers[i].first)))
    headers_i_CArray_Second = struct_miqt_string(data: cast[cstring](if len(headers[i].second) == 0: nil else: unsafeAddr headers[i].second[0]), len: csize_t(len(headers[i].second)))
    headers_CArray[i] = struct_miqt_map(len: 1,keys: addr(headers_i_CArray_First),values: addr(headers_i_CArray_Second),)

  fcQNetworkCacheMetaData_setRawHeaders(self.h, struct_miqt_array(len: csize_t(len(headers)), data: if len(headers) == 0: nil else: addr(headers_CArray[0])))

proc lastModified*(self: QNetworkCacheMetaData, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQNetworkCacheMetaData_lastModified(self.h))

proc setLastModified*(self: QNetworkCacheMetaData, dateTime: gen_qdatetime.QDateTime): void =

  fcQNetworkCacheMetaData_setLastModified(self.h, dateTime.h)

proc expirationDate*(self: QNetworkCacheMetaData, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQNetworkCacheMetaData_expirationDate(self.h))

proc setExpirationDate*(self: QNetworkCacheMetaData, dateTime: gen_qdatetime.QDateTime): void =

  fcQNetworkCacheMetaData_setExpirationDate(self.h, dateTime.h)

proc saveToDisk*(self: QNetworkCacheMetaData, ): bool =

  fcQNetworkCacheMetaData_saveToDisk(self.h)

proc setSaveToDisk*(self: QNetworkCacheMetaData, allow: bool): void =

  fcQNetworkCacheMetaData_setSaveToDisk(self.h, allow)

proc attributes*(self: QNetworkCacheMetaData, ): Table[gen_qnetworkrequest.QNetworkRequestAttribute,gen_qvariant.QVariant] =

  var v_mm = fcQNetworkCacheMetaData_attributes(self.h)
  var vx_ret: Table[gen_qnetworkrequest.QNetworkRequestAttribute, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = gen_qnetworkrequest.QNetworkRequestAttribute(v_Keys[i])

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc setAttributes*(self: QNetworkCacheMetaData, attributes: Table[gen_qnetworkrequest.QNetworkRequestAttribute,gen_qvariant.QVariant]): void =

  var attributes_Keys_CArray = newSeq[cint](len(attributes))
  var attributes_Values_CArray = newSeq[pointer](len(attributes))
  var attributes_ctr = 0
  for attributesk, attributesv in attributes:
    attributes_Keys_CArray[attributes_ctr] = cint(attributes_k)
    attributes_Values_CArray[attributes_ctr] = attributes_v.h
    attributes_ctr += 1

  fcQNetworkCacheMetaData_setAttributes(self.h, struct_miqt_map(len: csize_t(len(attributes)),keys: if len(attributes) == 0: nil else: addr(attributes_Keys_CArray[0]), values: if len(attributes) == 0: nil else: addr(attributes_Values_CArray[0]),))

proc delete*(self: QNetworkCacheMetaData) =
  fcQNetworkCacheMetaData_delete(self.h)

func init*(T: type QAbstractNetworkCache, h: ptr cQAbstractNetworkCache): QAbstractNetworkCache =
  T(h: h)
proc metaObject*(self: QAbstractNetworkCache, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractNetworkCache_metaObject(self.h))

proc metacast*(self: QAbstractNetworkCache, param1: cstring): pointer =

  fcQAbstractNetworkCache_metacast(self.h, param1)

proc metacall*(self: QAbstractNetworkCache, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractNetworkCache_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractNetworkCache, s: cstring): string =

  let v_ms = fcQAbstractNetworkCache_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc metaData*(self: QAbstractNetworkCache, url: gen_qurl.QUrl): QNetworkCacheMetaData =

  QNetworkCacheMetaData(h: fcQAbstractNetworkCache_metaData(self.h, url.h))

proc updateMetaData*(self: QAbstractNetworkCache, metaData: QNetworkCacheMetaData): void =

  fcQAbstractNetworkCache_updateMetaData(self.h, metaData.h)

proc data*(self: QAbstractNetworkCache, url: gen_qurl.QUrl): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAbstractNetworkCache_data(self.h, url.h))

proc remove*(self: QAbstractNetworkCache, url: gen_qurl.QUrl): bool =

  fcQAbstractNetworkCache_remove(self.h, url.h)

proc cacheSize*(self: QAbstractNetworkCache, ): clonglong =

  fcQAbstractNetworkCache_cacheSize(self.h)

proc prepare*(self: QAbstractNetworkCache, metaData: QNetworkCacheMetaData): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQAbstractNetworkCache_prepare(self.h, metaData.h))

proc insert*(self: QAbstractNetworkCache, device: gen_qiodevice.QIODevice): void =

  fcQAbstractNetworkCache_insert(self.h, device.h)

proc clear*(self: QAbstractNetworkCache, ): void =

  fcQAbstractNetworkCache_clear(self.h)

proc tr2*(_: type QAbstractNetworkCache, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractNetworkCache_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractNetworkCache, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractNetworkCache_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QAbstractNetworkCache): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractNetworkCache_staticMetaObject())
proc delete*(self: QAbstractNetworkCache) =
  fcQAbstractNetworkCache_delete(self.h)
