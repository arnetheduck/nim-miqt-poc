import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qurl.cpp", cflags).}


type QUrlParsingMode* = cint
const
  QUrlTolerantMode* = 0
  QUrlStrictMode* = 1
  QUrlDecodedMode* = 2



type QUrlUrlFormattingOption* = cuint
const
  QUrlNone* = 0
  QUrlRemoveScheme* = 1
  QUrlRemovePassword* = 2
  QUrlRemoveUserInfo* = 6
  QUrlRemovePort* = 8
  QUrlRemoveAuthority* = 30
  QUrlRemovePath* = 32
  QUrlRemoveQuery* = 64
  QUrlRemoveFragment* = 128
  QUrlPreferLocalFile* = 512
  QUrlStripTrailingSlash* = 1024
  QUrlRemoveFilename* = 2048
  QUrlNormalizePathSegments* = 4096



type QUrlComponentFormattingOption* = cuint
const
  QUrlPrettyDecoded* = 0
  QUrlEncodeSpaces* = 1048576
  QUrlEncodeUnicode* = 2097152
  QUrlEncodeDelimiters* = 12582912
  QUrlEncodeReserved* = 16777216
  QUrlDecodeReserved* = 33554432
  QUrlFullyEncoded* = 32505856
  QUrlFullyDecoded* = 133169152



type QUrlUserInputResolutionOption* = cint
const
  QUrlDefaultResolution* = 0
  QUrlAssumeLocalFile* = 1



type QUrlAceProcessingOption* = cuint
const
  QUrlIgnoreIDNWhitelist* = 1
  QUrlAceTransitionalProcessing* = 2



import gen_qurl_types
export gen_qurl_types

import
  gen_qurlquery
export
  gen_qurlquery

type cQUrl*{.exportc: "QUrl", incompleteStruct.} = object

proc fcQUrl_new(): ptr cQUrl {.importc: "QUrl_new".}
proc fcQUrl_new2(copy: pointer): ptr cQUrl {.importc: "QUrl_new2".}
proc fcQUrl_new3(url: struct_miqt_string): ptr cQUrl {.importc: "QUrl_new3".}
proc fcQUrl_new4(url: struct_miqt_string, mode: cint): ptr cQUrl {.importc: "QUrl_new4".}
proc fcQUrl_operatorAssign(self: pointer, copy: pointer): void {.importc: "QUrl_operatorAssign".}
proc fcQUrl_operatorAssignWithUrl(self: pointer, url: struct_miqt_string): void {.importc: "QUrl_operatorAssignWithUrl".}
proc fcQUrl_swap(self: pointer, other: pointer): void {.importc: "QUrl_swap".}
proc fcQUrl_setUrl(self: pointer, url: struct_miqt_string): void {.importc: "QUrl_setUrl".}
proc fcQUrl_url(self: pointer, ): struct_miqt_string {.importc: "QUrl_url".}
proc fcQUrl_toString(self: pointer, ): struct_miqt_string {.importc: "QUrl_toString".}
proc fcQUrl_toDisplayString(self: pointer, ): struct_miqt_string {.importc: "QUrl_toDisplayString".}
proc fcQUrl_toEncoded(self: pointer, ): struct_miqt_string {.importc: "QUrl_toEncoded".}
proc fcQUrl_fromEncoded(url: struct_miqt_string): pointer {.importc: "QUrl_fromEncoded".}
proc fcQUrl_fromUserInput(userInput: struct_miqt_string): pointer {.importc: "QUrl_fromUserInput".}
proc fcQUrl_isValid(self: pointer, ): bool {.importc: "QUrl_isValid".}
proc fcQUrl_errorString(self: pointer, ): struct_miqt_string {.importc: "QUrl_errorString".}
proc fcQUrl_isEmpty(self: pointer, ): bool {.importc: "QUrl_isEmpty".}
proc fcQUrl_clear(self: pointer, ): void {.importc: "QUrl_clear".}
proc fcQUrl_setScheme(self: pointer, scheme: struct_miqt_string): void {.importc: "QUrl_setScheme".}
proc fcQUrl_scheme(self: pointer, ): struct_miqt_string {.importc: "QUrl_scheme".}
proc fcQUrl_setAuthority(self: pointer, authority: struct_miqt_string): void {.importc: "QUrl_setAuthority".}
proc fcQUrl_authority(self: pointer, ): struct_miqt_string {.importc: "QUrl_authority".}
proc fcQUrl_setUserInfo(self: pointer, userInfo: struct_miqt_string): void {.importc: "QUrl_setUserInfo".}
proc fcQUrl_userInfo(self: pointer, ): struct_miqt_string {.importc: "QUrl_userInfo".}
proc fcQUrl_setUserName(self: pointer, userName: struct_miqt_string): void {.importc: "QUrl_setUserName".}
proc fcQUrl_userName(self: pointer, ): struct_miqt_string {.importc: "QUrl_userName".}
proc fcQUrl_setPassword(self: pointer, password: struct_miqt_string): void {.importc: "QUrl_setPassword".}
proc fcQUrl_password(self: pointer, ): struct_miqt_string {.importc: "QUrl_password".}
proc fcQUrl_setHost(self: pointer, host: struct_miqt_string): void {.importc: "QUrl_setHost".}
proc fcQUrl_host(self: pointer, ): struct_miqt_string {.importc: "QUrl_host".}
proc fcQUrl_setPort(self: pointer, port: cint): void {.importc: "QUrl_setPort".}
proc fcQUrl_port(self: pointer, ): cint {.importc: "QUrl_port".}
proc fcQUrl_setPath(self: pointer, path: struct_miqt_string): void {.importc: "QUrl_setPath".}
proc fcQUrl_path(self: pointer, ): struct_miqt_string {.importc: "QUrl_path".}
proc fcQUrl_fileName(self: pointer, ): struct_miqt_string {.importc: "QUrl_fileName".}
proc fcQUrl_hasQuery(self: pointer, ): bool {.importc: "QUrl_hasQuery".}
proc fcQUrl_setQuery(self: pointer, query: struct_miqt_string): void {.importc: "QUrl_setQuery".}
proc fcQUrl_setQueryWithQuery(self: pointer, query: pointer): void {.importc: "QUrl_setQueryWithQuery".}
proc fcQUrl_query(self: pointer, ): struct_miqt_string {.importc: "QUrl_query".}
proc fcQUrl_hasFragment(self: pointer, ): bool {.importc: "QUrl_hasFragment".}
proc fcQUrl_fragment(self: pointer, ): struct_miqt_string {.importc: "QUrl_fragment".}
proc fcQUrl_setFragment(self: pointer, fragment: struct_miqt_string): void {.importc: "QUrl_setFragment".}
proc fcQUrl_resolved(self: pointer, relative: pointer): pointer {.importc: "QUrl_resolved".}
proc fcQUrl_isRelative(self: pointer, ): bool {.importc: "QUrl_isRelative".}
proc fcQUrl_isParentOf(self: pointer, url: pointer): bool {.importc: "QUrl_isParentOf".}
proc fcQUrl_isLocalFile(self: pointer, ): bool {.importc: "QUrl_isLocalFile".}
proc fcQUrl_fromLocalFile(localfile: struct_miqt_string): pointer {.importc: "QUrl_fromLocalFile".}
proc fcQUrl_toLocalFile(self: pointer, ): struct_miqt_string {.importc: "QUrl_toLocalFile".}
proc fcQUrl_detach(self: pointer, ): void {.importc: "QUrl_detach".}
proc fcQUrl_isDetached(self: pointer, ): bool {.importc: "QUrl_isDetached".}
proc fcQUrl_operatorLesser(self: pointer, url: pointer): bool {.importc: "QUrl_operatorLesser".}
proc fcQUrl_operatorEqual(self: pointer, url: pointer): bool {.importc: "QUrl_operatorEqual".}
proc fcQUrl_operatorNotEqual(self: pointer, url: pointer): bool {.importc: "QUrl_operatorNotEqual".}
proc fcQUrl_fromPercentEncoding(param1: struct_miqt_string): struct_miqt_string {.importc: "QUrl_fromPercentEncoding".}
proc fcQUrl_toPercentEncoding(param1: struct_miqt_string): struct_miqt_string {.importc: "QUrl_toPercentEncoding".}
proc fcQUrl_fromAce(domain: struct_miqt_string): struct_miqt_string {.importc: "QUrl_fromAce".}
proc fcQUrl_toAce(domain: struct_miqt_string): struct_miqt_string {.importc: "QUrl_toAce".}
proc fcQUrl_idnWhitelist(): struct_miqt_array {.importc: "QUrl_idnWhitelist".}
proc fcQUrl_toStringList(uris: struct_miqt_array): struct_miqt_array {.importc: "QUrl_toStringList".}
proc fcQUrl_fromStringList(uris: struct_miqt_array): struct_miqt_array {.importc: "QUrl_fromStringList".}
proc fcQUrl_setIdnWhitelist(idnWhitelist: struct_miqt_array): void {.importc: "QUrl_setIdnWhitelist".}
proc fcQUrl_setUrl2(self: pointer, url: struct_miqt_string, mode: cint): void {.importc: "QUrl_setUrl2".}
proc fcQUrl_fromEncoded2(url: struct_miqt_string, mode: cint): pointer {.importc: "QUrl_fromEncoded2".}
proc fcQUrl_fromUserInput2(userInput: struct_miqt_string, workingDirectory: struct_miqt_string): pointer {.importc: "QUrl_fromUserInput2".}
proc fcQUrl_fromUserInput3(userInput: struct_miqt_string, workingDirectory: struct_miqt_string, options: cint): pointer {.importc: "QUrl_fromUserInput3".}
proc fcQUrl_setAuthority2(self: pointer, authority: struct_miqt_string, mode: cint): void {.importc: "QUrl_setAuthority2".}
proc fcQUrl_authority1(self: pointer, options: cint): struct_miqt_string {.importc: "QUrl_authority1".}
proc fcQUrl_setUserInfo2(self: pointer, userInfo: struct_miqt_string, mode: cint): void {.importc: "QUrl_setUserInfo2".}
proc fcQUrl_userInfo1(self: pointer, options: cint): struct_miqt_string {.importc: "QUrl_userInfo1".}
proc fcQUrl_setUserName2(self: pointer, userName: struct_miqt_string, mode: cint): void {.importc: "QUrl_setUserName2".}
proc fcQUrl_userName1(self: pointer, options: cint): struct_miqt_string {.importc: "QUrl_userName1".}
proc fcQUrl_setPassword2(self: pointer, password: struct_miqt_string, mode: cint): void {.importc: "QUrl_setPassword2".}
proc fcQUrl_password1(self: pointer, param1: cint): struct_miqt_string {.importc: "QUrl_password1".}
proc fcQUrl_setHost2(self: pointer, host: struct_miqt_string, mode: cint): void {.importc: "QUrl_setHost2".}
proc fcQUrl_host1(self: pointer, param1: cint): struct_miqt_string {.importc: "QUrl_host1".}
proc fcQUrl_port1(self: pointer, defaultPort: cint): cint {.importc: "QUrl_port1".}
proc fcQUrl_setPath2(self: pointer, path: struct_miqt_string, mode: cint): void {.importc: "QUrl_setPath2".}
proc fcQUrl_path1(self: pointer, options: cint): struct_miqt_string {.importc: "QUrl_path1".}
proc fcQUrl_fileName1(self: pointer, options: cint): struct_miqt_string {.importc: "QUrl_fileName1".}
proc fcQUrl_setQuery2(self: pointer, query: struct_miqt_string, mode: cint): void {.importc: "QUrl_setQuery2".}
proc fcQUrl_query1(self: pointer, param1: cint): struct_miqt_string {.importc: "QUrl_query1".}
proc fcQUrl_fragment1(self: pointer, options: cint): struct_miqt_string {.importc: "QUrl_fragment1".}
proc fcQUrl_setFragment2(self: pointer, fragment: struct_miqt_string, mode: cint): void {.importc: "QUrl_setFragment2".}
proc fcQUrl_toPercentEncoding2(param1: struct_miqt_string, exclude: struct_miqt_string): struct_miqt_string {.importc: "QUrl_toPercentEncoding2".}
proc fcQUrl_toPercentEncoding3(param1: struct_miqt_string, exclude: struct_miqt_string, includeVal: struct_miqt_string): struct_miqt_string {.importc: "QUrl_toPercentEncoding3".}
proc fcQUrl_fromAce2(domain: struct_miqt_string, options: cint): struct_miqt_string {.importc: "QUrl_fromAce2".}
proc fcQUrl_toAce2(domain: struct_miqt_string, options: cint): struct_miqt_string {.importc: "QUrl_toAce2".}
proc fcQUrl_fromStringList2(uris: struct_miqt_array, mode: cint): struct_miqt_array {.importc: "QUrl_fromStringList2".}
proc fcQUrl_delete(self: pointer) {.importc: "QUrl_delete".}


func init*(T: type QUrl, h: ptr cQUrl): QUrl =
  T(h: h)
proc create*(T: type QUrl, ): QUrl =

  QUrl.init(fcQUrl_new())
proc create*(T: type QUrl, copy: QUrl): QUrl =

  QUrl.init(fcQUrl_new2(copy.h))
proc create*(T: type QUrl, url: string): QUrl =

  QUrl.init(fcQUrl_new3(struct_miqt_string(data: url, len: csize_t(len(url)))))
proc create*(T: type QUrl, url: string, mode: QUrlParsingMode): QUrl =

  QUrl.init(fcQUrl_new4(struct_miqt_string(data: url, len: csize_t(len(url))), cint(mode)))
proc operatorAssign*(self: QUrl, copy: QUrl): void =

  fcQUrl_operatorAssign(self.h, copy.h)

proc operatorAssignWithUrl*(self: QUrl, url: string): void =

  fcQUrl_operatorAssignWithUrl(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

proc swap*(self: QUrl, other: QUrl): void =

  fcQUrl_swap(self.h, other.h)

proc setUrl*(self: QUrl, url: string): void =

  fcQUrl_setUrl(self.h, struct_miqt_string(data: url, len: csize_t(len(url))))

proc url*(self: QUrl, ): string =

  let v_ms = fcQUrl_url(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: QUrl, ): string =

  let v_ms = fcQUrl_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toDisplayString*(self: QUrl, ): string =

  let v_ms = fcQUrl_toDisplayString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toEncoded*(self: QUrl, ): seq[byte] =

  var v_bytearray = fcQUrl_toEncoded(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromEncoded*(_: type QUrl, url: seq[byte]): QUrl =

  QUrl(h: fcQUrl_fromEncoded(struct_miqt_string(data: cast[cstring](if len(url) == 0: nil else: unsafeAddr url[0]), len: csize_t(len(url)))))

proc fromUserInput*(_: type QUrl, userInput: string): QUrl =

  QUrl(h: fcQUrl_fromUserInput(struct_miqt_string(data: userInput, len: csize_t(len(userInput)))))

proc isValid*(self: QUrl, ): bool =

  fcQUrl_isValid(self.h)

proc errorString*(self: QUrl, ): string =

  let v_ms = fcQUrl_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isEmpty*(self: QUrl, ): bool =

  fcQUrl_isEmpty(self.h)

proc clear*(self: QUrl, ): void =

  fcQUrl_clear(self.h)

proc setScheme*(self: QUrl, scheme: string): void =

  fcQUrl_setScheme(self.h, struct_miqt_string(data: scheme, len: csize_t(len(scheme))))

proc scheme*(self: QUrl, ): string =

  let v_ms = fcQUrl_scheme(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAuthority*(self: QUrl, authority: string): void =

  fcQUrl_setAuthority(self.h, struct_miqt_string(data: authority, len: csize_t(len(authority))))

proc authority*(self: QUrl, ): string =

  let v_ms = fcQUrl_authority(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUserInfo*(self: QUrl, userInfo: string): void =

  fcQUrl_setUserInfo(self.h, struct_miqt_string(data: userInfo, len: csize_t(len(userInfo))))

proc userInfo*(self: QUrl, ): string =

  let v_ms = fcQUrl_userInfo(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUserName*(self: QUrl, userName: string): void =

  fcQUrl_setUserName(self.h, struct_miqt_string(data: userName, len: csize_t(len(userName))))

proc userName*(self: QUrl, ): string =

  let v_ms = fcQUrl_userName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPassword*(self: QUrl, password: string): void =

  fcQUrl_setPassword(self.h, struct_miqt_string(data: password, len: csize_t(len(password))))

proc password*(self: QUrl, ): string =

  let v_ms = fcQUrl_password(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHost*(self: QUrl, host: string): void =

  fcQUrl_setHost(self.h, struct_miqt_string(data: host, len: csize_t(len(host))))

proc host*(self: QUrl, ): string =

  let v_ms = fcQUrl_host(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPort*(self: QUrl, port: cint): void =

  fcQUrl_setPort(self.h, port)

proc port*(self: QUrl, ): cint =

  fcQUrl_port(self.h)

proc setPath*(self: QUrl, path: string): void =

  fcQUrl_setPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc path*(self: QUrl, ): string =

  let v_ms = fcQUrl_path(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: QUrl, ): string =

  let v_ms = fcQUrl_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasQuery*(self: QUrl, ): bool =

  fcQUrl_hasQuery(self.h)

proc setQuery*(self: QUrl, query: string): void =

  fcQUrl_setQuery(self.h, struct_miqt_string(data: query, len: csize_t(len(query))))

proc setQueryWithQuery*(self: QUrl, query: gen_qurlquery.QUrlQuery): void =

  fcQUrl_setQueryWithQuery(self.h, query.h)

proc query*(self: QUrl, ): string =

  let v_ms = fcQUrl_query(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasFragment*(self: QUrl, ): bool =

  fcQUrl_hasFragment(self.h)

proc fragment*(self: QUrl, ): string =

  let v_ms = fcQUrl_fragment(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFragment*(self: QUrl, fragment: string): void =

  fcQUrl_setFragment(self.h, struct_miqt_string(data: fragment, len: csize_t(len(fragment))))

proc resolved*(self: QUrl, relative: QUrl): QUrl =

  QUrl(h: fcQUrl_resolved(self.h, relative.h))

proc isRelative*(self: QUrl, ): bool =

  fcQUrl_isRelative(self.h)

proc isParentOf*(self: QUrl, url: QUrl): bool =

  fcQUrl_isParentOf(self.h, url.h)

proc isLocalFile*(self: QUrl, ): bool =

  fcQUrl_isLocalFile(self.h)

proc fromLocalFile*(_: type QUrl, localfile: string): QUrl =

  QUrl(h: fcQUrl_fromLocalFile(struct_miqt_string(data: localfile, len: csize_t(len(localfile)))))

proc toLocalFile*(self: QUrl, ): string =

  let v_ms = fcQUrl_toLocalFile(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc detach*(self: QUrl, ): void =

  fcQUrl_detach(self.h)

proc isDetached*(self: QUrl, ): bool =

  fcQUrl_isDetached(self.h)

proc operatorLesser*(self: QUrl, url: QUrl): bool =

  fcQUrl_operatorLesser(self.h, url.h)

proc operatorEqual*(self: QUrl, url: QUrl): bool =

  fcQUrl_operatorEqual(self.h, url.h)

proc operatorNotEqual*(self: QUrl, url: QUrl): bool =

  fcQUrl_operatorNotEqual(self.h, url.h)

proc fromPercentEncoding*(_: type QUrl, param1: seq[byte]): string =

  let v_ms = fcQUrl_fromPercentEncoding(struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toPercentEncoding*(_: type QUrl, param1: string): seq[byte] =

  var v_bytearray = fcQUrl_toPercentEncoding(struct_miqt_string(data: param1, len: csize_t(len(param1))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromAce*(_: type QUrl, domain: seq[byte]): string =

  let v_ms = fcQUrl_fromAce(struct_miqt_string(data: cast[cstring](if len(domain) == 0: nil else: unsafeAddr domain[0]), len: csize_t(len(domain))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toAce*(_: type QUrl, domain: string): seq[byte] =

  var v_bytearray = fcQUrl_toAce(struct_miqt_string(data: domain, len: csize_t(len(domain))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc idnWhitelist*(_: type QUrl, ): seq[string] =

  var v_ma = fcQUrl_idnWhitelist()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc toStringList*(_: type QUrl, uris: seq[QUrl]): seq[string] =

  var uris_CArray = newSeq[pointer](len(uris))
  for i in 0..<len(uris):
    uris_CArray[i] = uris[i].h

  var v_ma = fcQUrl_toStringList(struct_miqt_array(len: csize_t(len(uris)), data: if len(uris) == 0: nil else: addr(uris_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc fromStringList*(_: type QUrl, uris: seq[string]): seq[QUrl] =

  var uris_CArray = newSeq[struct_miqt_string](len(uris))
  for i in 0..<len(uris):
    uris_CArray[i] = struct_miqt_string(data: uris[i], len: csize_t(len(uris[i])))

  var v_ma = fcQUrl_fromStringList(struct_miqt_array(len: csize_t(len(uris)), data: if len(uris) == 0: nil else: addr(uris_CArray[0])))
  var vx_ret = newSeq[QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QUrl(h: v_outCast[i])
  vx_ret

proc setIdnWhitelist*(_: type QUrl, idnWhitelist: seq[string]): void =

  var idnWhitelist_CArray = newSeq[struct_miqt_string](len(idnWhitelist))
  for i in 0..<len(idnWhitelist):
    idnWhitelist_CArray[i] = struct_miqt_string(data: idnWhitelist[i], len: csize_t(len(idnWhitelist[i])))

  fcQUrl_setIdnWhitelist(struct_miqt_array(len: csize_t(len(idnWhitelist)), data: if len(idnWhitelist) == 0: nil else: addr(idnWhitelist_CArray[0])))

proc setUrl2*(self: QUrl, url: string, mode: QUrlParsingMode): void =

  fcQUrl_setUrl2(self.h, struct_miqt_string(data: url, len: csize_t(len(url))), cint(mode))

proc fromEncoded2*(_: type QUrl, url: seq[byte], mode: QUrlParsingMode): QUrl =

  QUrl(h: fcQUrl_fromEncoded2(struct_miqt_string(data: cast[cstring](if len(url) == 0: nil else: unsafeAddr url[0]), len: csize_t(len(url))), cint(mode)))

proc fromUserInput2*(_: type QUrl, userInput: string, workingDirectory: string): QUrl =

  QUrl(h: fcQUrl_fromUserInput2(struct_miqt_string(data: userInput, len: csize_t(len(userInput))), struct_miqt_string(data: workingDirectory, len: csize_t(len(workingDirectory)))))

proc fromUserInput3*(_: type QUrl, userInput: string, workingDirectory: string, options: QUrlUserInputResolutionOption): QUrl =

  QUrl(h: fcQUrl_fromUserInput3(struct_miqt_string(data: userInput, len: csize_t(len(userInput))), struct_miqt_string(data: workingDirectory, len: csize_t(len(workingDirectory))), cint(options)))

proc setAuthority2*(self: QUrl, authority: string, mode: QUrlParsingMode): void =

  fcQUrl_setAuthority2(self.h, struct_miqt_string(data: authority, len: csize_t(len(authority))), cint(mode))

proc authority1*(self: QUrl, options: QUrlComponentFormattingOption): string =

  let v_ms = fcQUrl_authority1(self.h, cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUserInfo2*(self: QUrl, userInfo: string, mode: QUrlParsingMode): void =

  fcQUrl_setUserInfo2(self.h, struct_miqt_string(data: userInfo, len: csize_t(len(userInfo))), cint(mode))

proc userInfo1*(self: QUrl, options: QUrlComponentFormattingOption): string =

  let v_ms = fcQUrl_userInfo1(self.h, cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUserName2*(self: QUrl, userName: string, mode: QUrlParsingMode): void =

  fcQUrl_setUserName2(self.h, struct_miqt_string(data: userName, len: csize_t(len(userName))), cint(mode))

proc userName1*(self: QUrl, options: QUrlComponentFormattingOption): string =

  let v_ms = fcQUrl_userName1(self.h, cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPassword2*(self: QUrl, password: string, mode: QUrlParsingMode): void =

  fcQUrl_setPassword2(self.h, struct_miqt_string(data: password, len: csize_t(len(password))), cint(mode))

proc password1*(self: QUrl, param1: QUrlComponentFormattingOption): string =

  let v_ms = fcQUrl_password1(self.h, cint(param1))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHost2*(self: QUrl, host: string, mode: QUrlParsingMode): void =

  fcQUrl_setHost2(self.h, struct_miqt_string(data: host, len: csize_t(len(host))), cint(mode))

proc host1*(self: QUrl, param1: QUrlComponentFormattingOption): string =

  let v_ms = fcQUrl_host1(self.h, cint(param1))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc port1*(self: QUrl, defaultPort: cint): cint =

  fcQUrl_port1(self.h, defaultPort)

proc setPath2*(self: QUrl, path: string, mode: QUrlParsingMode): void =

  fcQUrl_setPath2(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), cint(mode))

proc path1*(self: QUrl, options: QUrlComponentFormattingOption): string =

  let v_ms = fcQUrl_path1(self.h, cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName1*(self: QUrl, options: QUrlComponentFormattingOption): string =

  let v_ms = fcQUrl_fileName1(self.h, cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setQuery2*(self: QUrl, query: string, mode: QUrlParsingMode): void =

  fcQUrl_setQuery2(self.h, struct_miqt_string(data: query, len: csize_t(len(query))), cint(mode))

proc query1*(self: QUrl, param1: QUrlComponentFormattingOption): string =

  let v_ms = fcQUrl_query1(self.h, cint(param1))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fragment1*(self: QUrl, options: QUrlComponentFormattingOption): string =

  let v_ms = fcQUrl_fragment1(self.h, cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFragment2*(self: QUrl, fragment: string, mode: QUrlParsingMode): void =

  fcQUrl_setFragment2(self.h, struct_miqt_string(data: fragment, len: csize_t(len(fragment))), cint(mode))

proc toPercentEncoding2*(_: type QUrl, param1: string, exclude: seq[byte]): seq[byte] =

  var v_bytearray = fcQUrl_toPercentEncoding2(struct_miqt_string(data: param1, len: csize_t(len(param1))), struct_miqt_string(data: cast[cstring](if len(exclude) == 0: nil else: unsafeAddr exclude[0]), len: csize_t(len(exclude))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toPercentEncoding3*(_: type QUrl, param1: string, exclude: seq[byte], includeVal: seq[byte]): seq[byte] =

  var v_bytearray = fcQUrl_toPercentEncoding3(struct_miqt_string(data: param1, len: csize_t(len(param1))), struct_miqt_string(data: cast[cstring](if len(exclude) == 0: nil else: unsafeAddr exclude[0]), len: csize_t(len(exclude))), struct_miqt_string(data: cast[cstring](if len(includeVal) == 0: nil else: unsafeAddr includeVal[0]), len: csize_t(len(includeVal))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromAce2*(_: type QUrl, domain: seq[byte], options: QUrlAceProcessingOption): string =

  let v_ms = fcQUrl_fromAce2(struct_miqt_string(data: cast[cstring](if len(domain) == 0: nil else: unsafeAddr domain[0]), len: csize_t(len(domain))), cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toAce2*(_: type QUrl, domain: string, options: QUrlAceProcessingOption): seq[byte] =

  var v_bytearray = fcQUrl_toAce2(struct_miqt_string(data: domain, len: csize_t(len(domain))), cint(options))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromStringList2*(_: type QUrl, uris: seq[string], mode: QUrlParsingMode): seq[QUrl] =

  var uris_CArray = newSeq[struct_miqt_string](len(uris))
  for i in 0..<len(uris):
    uris_CArray[i] = struct_miqt_string(data: uris[i], len: csize_t(len(uris[i])))

  var v_ma = fcQUrl_fromStringList2(struct_miqt_array(len: csize_t(len(uris)), data: if len(uris) == 0: nil else: addr(uris_CArray[0])), cint(mode))
  var vx_ret = newSeq[QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QUrl(h: v_outCast[i])
  vx_ret

proc delete*(self: QUrl) =
  fcQUrl_delete(self.h)
