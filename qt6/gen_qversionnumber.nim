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
{.compile("gen_qversionnumber.cpp", cflags).}


import gen_qversionnumber_types
export gen_qversionnumber_types

import
  gen_qanystringview
export
  gen_qanystringview

type cQVersionNumber*{.exportc: "QVersionNumber", incompleteStruct.} = object
type cQTypeRevision*{.exportc: "QTypeRevision", incompleteStruct.} = object

proc fcQVersionNumber_new(): ptr cQVersionNumber {.importc: "QVersionNumber_new".}
proc fcQVersionNumber_new2(seg: struct_miqt_array): ptr cQVersionNumber {.importc: "QVersionNumber_new2".}
proc fcQVersionNumber_new3(maj: cint): ptr cQVersionNumber {.importc: "QVersionNumber_new3".}
proc fcQVersionNumber_new4(maj: cint, min: cint): ptr cQVersionNumber {.importc: "QVersionNumber_new4".}
proc fcQVersionNumber_new5(maj: cint, min: cint, mic: cint): ptr cQVersionNumber {.importc: "QVersionNumber_new5".}
proc fcQVersionNumber_new6(param1: pointer): ptr cQVersionNumber {.importc: "QVersionNumber_new6".}
proc fcQVersionNumber_isNull(self: pointer, ): bool {.importc: "QVersionNumber_isNull".}
proc fcQVersionNumber_isNormalized(self: pointer, ): bool {.importc: "QVersionNumber_isNormalized".}
proc fcQVersionNumber_majorVersion(self: pointer, ): cint {.importc: "QVersionNumber_majorVersion".}
proc fcQVersionNumber_minorVersion(self: pointer, ): cint {.importc: "QVersionNumber_minorVersion".}
proc fcQVersionNumber_microVersion(self: pointer, ): cint {.importc: "QVersionNumber_microVersion".}
proc fcQVersionNumber_normalized(self: pointer, ): pointer {.importc: "QVersionNumber_normalized".}
proc fcQVersionNumber_segments(self: pointer, ): struct_miqt_array {.importc: "QVersionNumber_segments".}
proc fcQVersionNumber_segmentAt(self: pointer, index: int64): cint {.importc: "QVersionNumber_segmentAt".}
proc fcQVersionNumber_segmentCount(self: pointer, ): int64 {.importc: "QVersionNumber_segmentCount".}
proc fcQVersionNumber_isPrefixOf(self: pointer, other: pointer): bool {.importc: "QVersionNumber_isPrefixOf".}
proc fcQVersionNumber_compare(v1: pointer, v2: pointer): cint {.importc: "QVersionNumber_compare".}
proc fcQVersionNumber_commonPrefix(v1: pointer, v2: pointer): pointer {.importc: "QVersionNumber_commonPrefix".}
proc fcQVersionNumber_toString(self: pointer, ): struct_miqt_string {.importc: "QVersionNumber_toString".}
proc fcQVersionNumber_fromString(string: pointer): pointer {.importc: "QVersionNumber_fromString".}
proc fcQVersionNumber_fromString2(string: pointer, suffixIndex: ptr int64): pointer {.importc: "QVersionNumber_fromString2".}
proc fcQVersionNumber_delete(self: pointer) {.importc: "QVersionNumber_delete".}
proc fcQTypeRevision_new(): ptr cQTypeRevision {.importc: "QTypeRevision_new".}
proc fcQTypeRevision_new2(param1: pointer): ptr cQTypeRevision {.importc: "QTypeRevision_new2".}
proc fcQTypeRevision_zero(): pointer {.importc: "QTypeRevision_zero".}
proc fcQTypeRevision_hasMajorVersion(self: pointer, ): bool {.importc: "QTypeRevision_hasMajorVersion".}
proc fcQTypeRevision_majorVersion(self: pointer, ): uint8 {.importc: "QTypeRevision_majorVersion".}
proc fcQTypeRevision_hasMinorVersion(self: pointer, ): bool {.importc: "QTypeRevision_hasMinorVersion".}
proc fcQTypeRevision_minorVersion(self: pointer, ): uint8 {.importc: "QTypeRevision_minorVersion".}
proc fcQTypeRevision_isValid(self: pointer, ): bool {.importc: "QTypeRevision_isValid".}
proc fcQTypeRevision_delete(self: pointer) {.importc: "QTypeRevision_delete".}


func init*(T: type QVersionNumber, h: ptr cQVersionNumber): QVersionNumber =
  T(h: h)
proc create*(T: type QVersionNumber, ): QVersionNumber =

  QVersionNumber.init(fcQVersionNumber_new())
proc create*(T: type QVersionNumber, seg: seq[cint]): QVersionNumber =

  var seg_CArray = newSeq[cint](len(seg))
  for i in 0..<len(seg):
    seg_CArray[i] = seg[i]

  QVersionNumber.init(fcQVersionNumber_new2(struct_miqt_array(len: csize_t(len(seg)), data: if len(seg) == 0: nil else: addr(seg_CArray[0]))))
proc create*(T: type QVersionNumber, maj: cint): QVersionNumber =

  QVersionNumber.init(fcQVersionNumber_new3(maj))
proc create*(T: type QVersionNumber, maj: cint, min: cint): QVersionNumber =

  QVersionNumber.init(fcQVersionNumber_new4(maj, min))
proc create*(T: type QVersionNumber, maj: cint, min: cint, mic: cint): QVersionNumber =

  QVersionNumber.init(fcQVersionNumber_new5(maj, min, mic))
proc create*(T: type QVersionNumber, param1: QVersionNumber): QVersionNumber =

  QVersionNumber.init(fcQVersionNumber_new6(param1.h))
proc isNull*(self: QVersionNumber, ): bool =

  fcQVersionNumber_isNull(self.h)

proc isNormalized*(self: QVersionNumber, ): bool =

  fcQVersionNumber_isNormalized(self.h)

proc majorVersion*(self: QVersionNumber, ): cint =

  fcQVersionNumber_majorVersion(self.h)

proc minorVersion*(self: QVersionNumber, ): cint =

  fcQVersionNumber_minorVersion(self.h)

proc microVersion*(self: QVersionNumber, ): cint =

  fcQVersionNumber_microVersion(self.h)

proc normalized*(self: QVersionNumber, ): QVersionNumber =

  QVersionNumber(h: fcQVersionNumber_normalized(self.h))

proc segments*(self: QVersionNumber, ): seq[cint] =

  var v_ma = fcQVersionNumber_segments(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc segmentAt*(self: QVersionNumber, index: int64): cint =

  fcQVersionNumber_segmentAt(self.h, index)

proc segmentCount*(self: QVersionNumber, ): int64 =

  fcQVersionNumber_segmentCount(self.h)

proc isPrefixOf*(self: QVersionNumber, other: QVersionNumber): bool =

  fcQVersionNumber_isPrefixOf(self.h, other.h)

proc compare*(_: type QVersionNumber, v1: QVersionNumber, v2: QVersionNumber): cint =

  fcQVersionNumber_compare(v1.h, v2.h)

proc commonPrefix*(_: type QVersionNumber, v1: QVersionNumber, v2: QVersionNumber): QVersionNumber =

  QVersionNumber(h: fcQVersionNumber_commonPrefix(v1.h, v2.h))

proc toString*(self: QVersionNumber, ): string =

  let v_ms = fcQVersionNumber_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type QVersionNumber, string: gen_qanystringview.QAnyStringView): QVersionNumber =

  QVersionNumber(h: fcQVersionNumber_fromString(string.h))

proc fromString2*(_: type QVersionNumber, string: gen_qanystringview.QAnyStringView, suffixIndex: ptr int64): QVersionNumber =

  QVersionNumber(h: fcQVersionNumber_fromString2(string.h, suffixIndex))

proc delete*(self: QVersionNumber) =
  fcQVersionNumber_delete(self.h)

func init*(T: type QTypeRevision, h: ptr cQTypeRevision): QTypeRevision =
  T(h: h)
proc create*(T: type QTypeRevision, ): QTypeRevision =

  QTypeRevision.init(fcQTypeRevision_new())
proc create*(T: type QTypeRevision, param1: QTypeRevision): QTypeRevision =

  QTypeRevision.init(fcQTypeRevision_new2(param1.h))
proc zero*(_: type QTypeRevision, ): QTypeRevision =

  QTypeRevision(h: fcQTypeRevision_zero())

proc hasMajorVersion*(self: QTypeRevision, ): bool =

  fcQTypeRevision_hasMajorVersion(self.h)

proc majorVersion*(self: QTypeRevision, ): uint8 =

  fcQTypeRevision_majorVersion(self.h)

proc hasMinorVersion*(self: QTypeRevision, ): bool =

  fcQTypeRevision_hasMinorVersion(self.h)

proc minorVersion*(self: QTypeRevision, ): uint8 =

  fcQTypeRevision_minorVersion(self.h)

proc isValid*(self: QTypeRevision, ): bool =

  fcQTypeRevision_isValid(self.h)

proc delete*(self: QTypeRevision) =
  fcQTypeRevision_delete(self.h)
