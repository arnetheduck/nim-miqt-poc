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
{.compile("gen_qqmlinfo.cpp", cflags).}


import gen_qqmlinfo_types
export gen_qqmlinfo_types

import
  gen_qchar,
  gen_qdebug,
  gen_qurl
export
  gen_qchar,
  gen_qdebug,
  gen_qurl

type cQQmlInfo*{.exportc: "QQmlInfo", incompleteStruct.} = object

proc fcQQmlInfo_new(param1: pointer): ptr cQQmlInfo {.importc: "QQmlInfo_new".}
proc fcQQmlInfo_operatorShiftLeft(self: pointer, t: pointer): pointer {.importc: "QQmlInfo_operatorShiftLeft".}
proc fcQQmlInfo_operatorShiftLeftWithBool(self: pointer, t: bool): pointer {.importc: "QQmlInfo_operatorShiftLeftWithBool".}
proc fcQQmlInfo_operatorShiftLeftWithChar(self: pointer, t: cchar): pointer {.importc: "QQmlInfo_operatorShiftLeftWithChar".}
proc fcQQmlInfo_operatorShiftLeftWithShort(self: pointer, t: cshort): pointer {.importc: "QQmlInfo_operatorShiftLeftWithShort".}
proc fcQQmlInfo_operatorShiftLeftWithUnsignedshort(self: pointer, t: cushort): pointer {.importc: "QQmlInfo_operatorShiftLeftWithUnsignedshort".}
proc fcQQmlInfo_operatorShiftLeftWithInt(self: pointer, t: cint): pointer {.importc: "QQmlInfo_operatorShiftLeftWithInt".}
proc fcQQmlInfo_operatorShiftLeftWithUnsignedint(self: pointer, t: cuint): pointer {.importc: "QQmlInfo_operatorShiftLeftWithUnsignedint".}
proc fcQQmlInfo_operatorShiftLeftWithLong(self: pointer, t: clong): pointer {.importc: "QQmlInfo_operatorShiftLeftWithLong".}
proc fcQQmlInfo_operatorShiftLeftWithUnsignedlong(self: pointer, t: culong): pointer {.importc: "QQmlInfo_operatorShiftLeftWithUnsignedlong".}
proc fcQQmlInfo_operatorShiftLeftWithQint64(self: pointer, t: clonglong): pointer {.importc: "QQmlInfo_operatorShiftLeftWithQint64".}
proc fcQQmlInfo_operatorShiftLeftWithQuint64(self: pointer, t: culonglong): pointer {.importc: "QQmlInfo_operatorShiftLeftWithQuint64".}
proc fcQQmlInfo_operatorShiftLeftWithFloat(self: pointer, t: float32): pointer {.importc: "QQmlInfo_operatorShiftLeftWithFloat".}
proc fcQQmlInfo_operatorShiftLeftWithDouble(self: pointer, t: float64): pointer {.importc: "QQmlInfo_operatorShiftLeftWithDouble".}
proc fcQQmlInfo_operatorShiftLeft2(self: pointer, t: cstring): pointer {.importc: "QQmlInfo_operatorShiftLeft2".}
proc fcQQmlInfo_operatorShiftLeftWithQString(self: pointer, t: struct_miqt_string): pointer {.importc: "QQmlInfo_operatorShiftLeftWithQString".}
proc fcQQmlInfo_operatorShiftLeftWithQByteArray(self: pointer, t: struct_miqt_string): pointer {.importc: "QQmlInfo_operatorShiftLeftWithQByteArray".}
proc fcQQmlInfo_operatorShiftLeftWithVoid(self: pointer, t: pointer): pointer {.importc: "QQmlInfo_operatorShiftLeftWithVoid".}
proc fcQQmlInfo_operatorShiftLeftWithQUrl(self: pointer, t: pointer): pointer {.importc: "QQmlInfo_operatorShiftLeftWithQUrl".}
proc fcQQmlInfo_delete(self: pointer) {.importc: "QQmlInfo_delete".}


func init*(T: type QQmlInfo, h: ptr cQQmlInfo): QQmlInfo =
  T(h: h)
proc create*(T: type QQmlInfo, param1: QQmlInfo): QQmlInfo =

  QQmlInfo.init(fcQQmlInfo_new(param1.h))
proc operatorShiftLeft*(self: QQmlInfo, t: gen_qchar.QChar): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeft(self.h, t.h))

proc operatorShiftLeftWithBool*(self: QQmlInfo, t: bool): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithBool(self.h, t))

proc operatorShiftLeftWithChar*(self: QQmlInfo, t: cchar): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithChar(self.h, t))

proc operatorShiftLeftWithShort*(self: QQmlInfo, t: cshort): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithShort(self.h, t))

proc operatorShiftLeftWithUnsignedshort*(self: QQmlInfo, t: cushort): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithUnsignedshort(self.h, t))

proc operatorShiftLeftWithInt*(self: QQmlInfo, t: cint): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithInt(self.h, t))

proc operatorShiftLeftWithUnsignedint*(self: QQmlInfo, t: cuint): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithUnsignedint(self.h, t))

proc operatorShiftLeftWithLong*(self: QQmlInfo, t: clong): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithLong(self.h, t))

proc operatorShiftLeftWithUnsignedlong*(self: QQmlInfo, t: culong): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithUnsignedlong(self.h, t))

proc operatorShiftLeftWithQint64*(self: QQmlInfo, t: clonglong): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithQint64(self.h, t))

proc operatorShiftLeftWithQuint64*(self: QQmlInfo, t: culonglong): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithQuint64(self.h, t))

proc operatorShiftLeftWithFloat*(self: QQmlInfo, t: float32): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithFloat(self.h, t))

proc operatorShiftLeftWithDouble*(self: QQmlInfo, t: float64): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithDouble(self.h, t))

proc operatorShiftLeft2*(self: QQmlInfo, t: cstring): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeft2(self.h, t))

proc operatorShiftLeftWithQString*(self: QQmlInfo, t: string): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithQString(self.h, struct_miqt_string(data: t, len: csize_t(len(t)))))

proc operatorShiftLeftWithQByteArray*(self: QQmlInfo, t: seq[byte]): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithQByteArray(self.h, struct_miqt_string(data: cast[cstring](if len(t) == 0: nil else: unsafeAddr t[0]), len: csize_t(len(t)))))

proc operatorShiftLeftWithVoid*(self: QQmlInfo, t: pointer): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithVoid(self.h, t))

proc operatorShiftLeftWithQUrl*(self: QQmlInfo, t: gen_qurl.QUrl): QQmlInfo =

  QQmlInfo(h: fcQQmlInfo_operatorShiftLeftWithQUrl(self.h, t.h))

proc delete*(self: QQmlInfo) =
  fcQQmlInfo_delete(self.h)
