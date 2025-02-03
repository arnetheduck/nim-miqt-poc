import Qt5Network_libs

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

const cflags = gorge("pkg-config -cflags Qt5Network")
{.compile("gen_qsslcertificate.cpp", cflags).}


type QSslCertificateSubjectInfo* = cint
const
  QSslCertificateOrganization* = 0
  QSslCertificateCommonName* = 1
  QSslCertificateLocalityName* = 2
  QSslCertificateOrganizationalUnitName* = 3
  QSslCertificateCountryName* = 4
  QSslCertificateStateOrProvinceName* = 5
  QSslCertificateDistinguishedNameQualifier* = 6
  QSslCertificateSerialNumber* = 7
  QSslCertificateEmailAddress* = 8



type QSslCertificatePatternSyntax* = cint
const
  QSslCertificateRegularExpression* = 0
  QSslCertificateWildcard* = 1
  QSslCertificateFixedString* = 2



import gen_qsslcertificate_types
export gen_qsslcertificate_types

import
  gen_qcryptographichash,
  gen_qdatetime,
  gen_qiodevice,
  gen_qregexp,
  gen_qssl,
  gen_qsslcertificateextension,
  gen_qsslerror,
  gen_qsslkey
export
  gen_qcryptographichash,
  gen_qdatetime,
  gen_qiodevice,
  gen_qregexp,
  gen_qssl,
  gen_qsslcertificateextension,
  gen_qsslerror,
  gen_qsslkey

type cQSslCertificate*{.exportc: "QSslCertificate", incompleteStruct.} = object

proc fcQSslCertificate_new(device: pointer): ptr cQSslCertificate {.importc: "QSslCertificate_new".}
proc fcQSslCertificate_new2(): ptr cQSslCertificate {.importc: "QSslCertificate_new2".}
proc fcQSslCertificate_new3(other: pointer): ptr cQSslCertificate {.importc: "QSslCertificate_new3".}
proc fcQSslCertificate_new4(device: pointer, format: cint): ptr cQSslCertificate {.importc: "QSslCertificate_new4".}
proc fcQSslCertificate_new5(data: struct_miqt_string): ptr cQSslCertificate {.importc: "QSslCertificate_new5".}
proc fcQSslCertificate_new6(data: struct_miqt_string, format: cint): ptr cQSslCertificate {.importc: "QSslCertificate_new6".}
proc fcQSslCertificate_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslCertificate_operatorAssign".}
proc fcQSslCertificate_swap(self: pointer, other: pointer): void {.importc: "QSslCertificate_swap".}
proc fcQSslCertificate_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSslCertificate_operatorEqual".}
proc fcQSslCertificate_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSslCertificate_operatorNotEqual".}
proc fcQSslCertificate_isNull(self: pointer, ): bool {.importc: "QSslCertificate_isNull".}
proc fcQSslCertificate_isBlacklisted(self: pointer, ): bool {.importc: "QSslCertificate_isBlacklisted".}
proc fcQSslCertificate_isSelfSigned(self: pointer, ): bool {.importc: "QSslCertificate_isSelfSigned".}
proc fcQSslCertificate_clear(self: pointer, ): void {.importc: "QSslCertificate_clear".}
proc fcQSslCertificate_version(self: pointer, ): struct_miqt_string {.importc: "QSslCertificate_version".}
proc fcQSslCertificate_serialNumber(self: pointer, ): struct_miqt_string {.importc: "QSslCertificate_serialNumber".}
proc fcQSslCertificate_digest(self: pointer, ): struct_miqt_string {.importc: "QSslCertificate_digest".}
proc fcQSslCertificate_issuerInfo(self: pointer, info: cint): struct_miqt_array {.importc: "QSslCertificate_issuerInfo".}
proc fcQSslCertificate_issuerInfoWithAttribute(self: pointer, attribute: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_issuerInfoWithAttribute".}
proc fcQSslCertificate_subjectInfo(self: pointer, info: cint): struct_miqt_array {.importc: "QSslCertificate_subjectInfo".}
proc fcQSslCertificate_subjectInfoWithAttribute(self: pointer, attribute: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_subjectInfoWithAttribute".}
proc fcQSslCertificate_issuerDisplayName(self: pointer, ): struct_miqt_string {.importc: "QSslCertificate_issuerDisplayName".}
proc fcQSslCertificate_subjectDisplayName(self: pointer, ): struct_miqt_string {.importc: "QSslCertificate_subjectDisplayName".}
proc fcQSslCertificate_subjectInfoAttributes(self: pointer, ): struct_miqt_array {.importc: "QSslCertificate_subjectInfoAttributes".}
proc fcQSslCertificate_issuerInfoAttributes(self: pointer, ): struct_miqt_array {.importc: "QSslCertificate_issuerInfoAttributes".}
proc fcQSslCertificate_effectiveDate(self: pointer, ): pointer {.importc: "QSslCertificate_effectiveDate".}
proc fcQSslCertificate_expiryDate(self: pointer, ): pointer {.importc: "QSslCertificate_expiryDate".}
proc fcQSslCertificate_publicKey(self: pointer, ): pointer {.importc: "QSslCertificate_publicKey".}
proc fcQSslCertificate_extensions(self: pointer, ): struct_miqt_array {.importc: "QSslCertificate_extensions".}
proc fcQSslCertificate_toPem(self: pointer, ): struct_miqt_string {.importc: "QSslCertificate_toPem".}
proc fcQSslCertificate_toDer(self: pointer, ): struct_miqt_string {.importc: "QSslCertificate_toDer".}
proc fcQSslCertificate_toText(self: pointer, ): struct_miqt_string {.importc: "QSslCertificate_toText".}
proc fcQSslCertificate_fromPath(path: struct_miqt_string, format: cint, syntax: cint): struct_miqt_array {.importc: "QSslCertificate_fromPath".}
proc fcQSslCertificate_fromPathWithPath(path: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_fromPathWithPath".}
proc fcQSslCertificate_fromDevice(device: pointer): struct_miqt_array {.importc: "QSslCertificate_fromDevice".}
proc fcQSslCertificate_fromData(data: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_fromData".}
proc fcQSslCertificate_verify(certificateChain: struct_miqt_array): struct_miqt_array {.importc: "QSslCertificate_verify".}
proc fcQSslCertificate_importPkcs12(device: pointer, key: pointer, cert: pointer): bool {.importc: "QSslCertificate_importPkcs12".}
proc fcQSslCertificate_handle(self: pointer, ): pointer {.importc: "QSslCertificate_handle".}
proc fcQSslCertificate_digest1(self: pointer, algorithm: cint): struct_miqt_string {.importc: "QSslCertificate_digest1".}
proc fcQSslCertificate_fromPath2(path: struct_miqt_string, format: cint): struct_miqt_array {.importc: "QSslCertificate_fromPath2".}
proc fcQSslCertificate_fromPath3(path: struct_miqt_string, format: cint, syntax: cint): struct_miqt_array {.importc: "QSslCertificate_fromPath3".}
proc fcQSslCertificate_fromDevice2(device: pointer, format: cint): struct_miqt_array {.importc: "QSslCertificate_fromDevice2".}
proc fcQSslCertificate_fromData2(data: struct_miqt_string, format: cint): struct_miqt_array {.importc: "QSslCertificate_fromData2".}
proc fcQSslCertificate_verify2(certificateChain: struct_miqt_array, hostName: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_verify2".}
proc fcQSslCertificate_importPkcs124(device: pointer, key: pointer, cert: pointer, caCertificates: struct_miqt_array): bool {.importc: "QSslCertificate_importPkcs124".}
proc fcQSslCertificate_importPkcs125(device: pointer, key: pointer, cert: pointer, caCertificates: struct_miqt_array, passPhrase: struct_miqt_string): bool {.importc: "QSslCertificate_importPkcs125".}
proc fcQSslCertificate_delete(self: pointer) {.importc: "QSslCertificate_delete".}


func init*(T: type QSslCertificate, h: ptr cQSslCertificate): QSslCertificate =
  T(h: h)
proc create*(T: type QSslCertificate, device: gen_qiodevice.QIODevice): QSslCertificate =

  QSslCertificate.init(fcQSslCertificate_new(device.h))
proc create*(T: type QSslCertificate, ): QSslCertificate =

  QSslCertificate.init(fcQSslCertificate_new2())
proc create2*(T: type QSslCertificate, other: QSslCertificate): QSslCertificate =

  QSslCertificate.init(fcQSslCertificate_new3(other.h))
proc create*(T: type QSslCertificate, device: gen_qiodevice.QIODevice, format: gen_qssl.QSslEncodingFormat): QSslCertificate =

  QSslCertificate.init(fcQSslCertificate_new4(device.h, cint(format)))
proc create*(T: type QSslCertificate, data: seq[byte]): QSslCertificate =

  QSslCertificate.init(fcQSslCertificate_new5(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))
proc create*(T: type QSslCertificate, data: seq[byte], format: gen_qssl.QSslEncodingFormat): QSslCertificate =

  QSslCertificate.init(fcQSslCertificate_new6(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), cint(format)))
proc operatorAssign*(self: QSslCertificate, other: QSslCertificate): void =

  fcQSslCertificate_operatorAssign(self.h, other.h)

proc swap*(self: QSslCertificate, other: QSslCertificate): void =

  fcQSslCertificate_swap(self.h, other.h)

proc operatorEqual*(self: QSslCertificate, other: QSslCertificate): bool =

  fcQSslCertificate_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QSslCertificate, other: QSslCertificate): bool =

  fcQSslCertificate_operatorNotEqual(self.h, other.h)

proc isNull*(self: QSslCertificate, ): bool =

  fcQSslCertificate_isNull(self.h)

proc isBlacklisted*(self: QSslCertificate, ): bool =

  fcQSslCertificate_isBlacklisted(self.h)

proc isSelfSigned*(self: QSslCertificate, ): bool =

  fcQSslCertificate_isSelfSigned(self.h)

proc clear*(self: QSslCertificate, ): void =

  fcQSslCertificate_clear(self.h)

proc version*(self: QSslCertificate, ): seq[byte] =

  var v_bytearray = fcQSslCertificate_version(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc serialNumber*(self: QSslCertificate, ): seq[byte] =

  var v_bytearray = fcQSslCertificate_serialNumber(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc digest*(self: QSslCertificate, ): seq[byte] =

  var v_bytearray = fcQSslCertificate_digest(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc issuerInfo*(self: QSslCertificate, info: QSslCertificateSubjectInfo): seq[string] =

  var v_ma = fcQSslCertificate_issuerInfo(self.h, cint(info))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc issuerInfoWithAttribute*(self: QSslCertificate, attribute: seq[byte]): seq[string] =

  var v_ma = fcQSslCertificate_issuerInfoWithAttribute(self.h, struct_miqt_string(data: cast[cstring](if len(attribute) == 0: nil else: unsafeAddr attribute[0]), len: csize_t(len(attribute))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc subjectInfo*(self: QSslCertificate, info: QSslCertificateSubjectInfo): seq[string] =

  var v_ma = fcQSslCertificate_subjectInfo(self.h, cint(info))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc subjectInfoWithAttribute*(self: QSslCertificate, attribute: seq[byte]): seq[string] =

  var v_ma = fcQSslCertificate_subjectInfoWithAttribute(self.h, struct_miqt_string(data: cast[cstring](if len(attribute) == 0: nil else: unsafeAddr attribute[0]), len: csize_t(len(attribute))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc issuerDisplayName*(self: QSslCertificate, ): string =

  let v_ms = fcQSslCertificate_issuerDisplayName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc subjectDisplayName*(self: QSslCertificate, ): string =

  let v_ms = fcQSslCertificate_subjectDisplayName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc subjectInfoAttributes*(self: QSslCertificate, ): seq[seq[byte]] =

  var v_ma = fcQSslCertificate_subjectInfoAttributes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc issuerInfoAttributes*(self: QSslCertificate, ): seq[seq[byte]] =

  var v_ma = fcQSslCertificate_issuerInfoAttributes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc effectiveDate*(self: QSslCertificate, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQSslCertificate_effectiveDate(self.h))

proc expiryDate*(self: QSslCertificate, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQSslCertificate_expiryDate(self.h))

proc publicKey*(self: QSslCertificate, ): gen_qsslkey.QSslKey =

  gen_qsslkey.QSslKey(h: fcQSslCertificate_publicKey(self.h))

proc extensions*(self: QSslCertificate, ): seq[gen_qsslcertificateextension.QSslCertificateExtension] =

  var v_ma = fcQSslCertificate_extensions(self.h)
  var vx_ret = newSeq[gen_qsslcertificateextension.QSslCertificateExtension](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificateextension.QSslCertificateExtension(h: v_outCast[i])
  vx_ret

proc toPem*(self: QSslCertificate, ): seq[byte] =

  var v_bytearray = fcQSslCertificate_toPem(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toDer*(self: QSslCertificate, ): seq[byte] =

  var v_bytearray = fcQSslCertificate_toDer(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toText*(self: QSslCertificate, ): string =

  let v_ms = fcQSslCertificate_toText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromPath*(_: type QSslCertificate, path: string, format: gen_qssl.QSslEncodingFormat, syntax: gen_qregexp.QRegExpPatternSyntax): seq[QSslCertificate] =

  var v_ma = fcQSslCertificate_fromPath(struct_miqt_string(data: path, len: csize_t(len(path))), cint(format), cint(syntax))
  var vx_ret = newSeq[QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QSslCertificate(h: v_outCast[i])
  vx_ret

proc fromPathWithPath*(_: type QSslCertificate, path: string): seq[QSslCertificate] =

  var v_ma = fcQSslCertificate_fromPathWithPath(struct_miqt_string(data: path, len: csize_t(len(path))))
  var vx_ret = newSeq[QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QSslCertificate(h: v_outCast[i])
  vx_ret

proc fromDevice*(_: type QSslCertificate, device: gen_qiodevice.QIODevice): seq[QSslCertificate] =

  var v_ma = fcQSslCertificate_fromDevice(device.h)
  var vx_ret = newSeq[QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QSslCertificate(h: v_outCast[i])
  vx_ret

proc fromData*(_: type QSslCertificate, data: seq[byte]): seq[QSslCertificate] =

  var v_ma = fcQSslCertificate_fromData(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))
  var vx_ret = newSeq[QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QSslCertificate(h: v_outCast[i])
  vx_ret

proc verify*(_: type QSslCertificate, certificateChain: seq[QSslCertificate]): seq[gen_qsslerror.QSslError] =

  var certificateChain_CArray = newSeq[pointer](len(certificateChain))
  for i in 0..<len(certificateChain):
    certificateChain_CArray[i] = certificateChain[i].h

  var v_ma = fcQSslCertificate_verify(struct_miqt_array(len: csize_t(len(certificateChain)), data: if len(certificateChain) == 0: nil else: addr(certificateChain_CArray[0])))
  var vx_ret = newSeq[gen_qsslerror.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror.QSslError(h: v_outCast[i])
  vx_ret

proc importPkcs12*(_: type QSslCertificate, device: gen_qiodevice.QIODevice, key: gen_qsslkey.QSslKey, cert: QSslCertificate): bool =

  fcQSslCertificate_importPkcs12(device.h, key.h, cert.h)

proc handle*(self: QSslCertificate, ): pointer =

  fcQSslCertificate_handle(self.h)

proc digest1*(self: QSslCertificate, algorithm: gen_qcryptographichash.QCryptographicHashAlgorithm): seq[byte] =

  var v_bytearray = fcQSslCertificate_digest1(self.h, cint(algorithm))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromPath2*(_: type QSslCertificate, path: string, format: gen_qssl.QSslEncodingFormat): seq[QSslCertificate] =

  var v_ma = fcQSslCertificate_fromPath2(struct_miqt_string(data: path, len: csize_t(len(path))), cint(format))
  var vx_ret = newSeq[QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QSslCertificate(h: v_outCast[i])
  vx_ret

proc fromPath3*(_: type QSslCertificate, path: string, format: gen_qssl.QSslEncodingFormat, syntax: QSslCertificatePatternSyntax): seq[QSslCertificate] =

  var v_ma = fcQSslCertificate_fromPath3(struct_miqt_string(data: path, len: csize_t(len(path))), cint(format), cint(syntax))
  var vx_ret = newSeq[QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QSslCertificate(h: v_outCast[i])
  vx_ret

proc fromDevice2*(_: type QSslCertificate, device: gen_qiodevice.QIODevice, format: gen_qssl.QSslEncodingFormat): seq[QSslCertificate] =

  var v_ma = fcQSslCertificate_fromDevice2(device.h, cint(format))
  var vx_ret = newSeq[QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QSslCertificate(h: v_outCast[i])
  vx_ret

proc fromData2*(_: type QSslCertificate, data: seq[byte], format: gen_qssl.QSslEncodingFormat): seq[QSslCertificate] =

  var v_ma = fcQSslCertificate_fromData2(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), cint(format))
  var vx_ret = newSeq[QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QSslCertificate(h: v_outCast[i])
  vx_ret

proc verify2*(_: type QSslCertificate, certificateChain: seq[QSslCertificate], hostName: string): seq[gen_qsslerror.QSslError] =

  var certificateChain_CArray = newSeq[pointer](len(certificateChain))
  for i in 0..<len(certificateChain):
    certificateChain_CArray[i] = certificateChain[i].h

  var v_ma = fcQSslCertificate_verify2(struct_miqt_array(len: csize_t(len(certificateChain)), data: if len(certificateChain) == 0: nil else: addr(certificateChain_CArray[0])), struct_miqt_string(data: hostName, len: csize_t(len(hostName))))
  var vx_ret = newSeq[gen_qsslerror.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror.QSslError(h: v_outCast[i])
  vx_ret

proc importPkcs124*(_: type QSslCertificate, device: gen_qiodevice.QIODevice, key: gen_qsslkey.QSslKey, cert: QSslCertificate, caCertificates: seq[QSslCertificate]): bool =

  var caCertificates_CArray = newSeq[pointer](len(caCertificates))
  for i in 0..<len(caCertificates):
    caCertificates_CArray[i] = caCertificates[i].h

  fcQSslCertificate_importPkcs124(device.h, key.h, cert.h, struct_miqt_array(len: csize_t(len(caCertificates)), data: if len(caCertificates) == 0: nil else: addr(caCertificates_CArray[0])))

proc importPkcs125*(_: type QSslCertificate, device: gen_qiodevice.QIODevice, key: gen_qsslkey.QSslKey, cert: QSslCertificate, caCertificates: seq[QSslCertificate], passPhrase: seq[byte]): bool =

  var caCertificates_CArray = newSeq[pointer](len(caCertificates))
  for i in 0..<len(caCertificates):
    caCertificates_CArray[i] = caCertificates[i].h

  fcQSslCertificate_importPkcs125(device.h, key.h, cert.h, struct_miqt_array(len: csize_t(len(caCertificates)), data: if len(caCertificates) == 0: nil else: addr(caCertificates_CArray[0])), struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase))))

proc delete*(self: QSslCertificate) =
  fcQSslCertificate_delete(self.h)
