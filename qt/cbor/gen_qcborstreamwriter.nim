import Qt5Core_libs

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

const cflags = gorge("pkg-config -cflags Qt5Core")
{.compile("gen_qcborstreamwriter.cpp", cflags).}


import gen_qcborstreamwriter_types
export gen_qcborstreamwriter_types

import
  gen_qcborcommon,
  gen_qiodevice
export
  gen_qcborcommon,
  gen_qiodevice

type cQCborStreamWriter*{.exportc: "QCborStreamWriter", incompleteStruct.} = object

proc fcQCborStreamWriter_new(device: pointer): ptr cQCborStreamWriter {.importc: "QCborStreamWriter_new".}
proc fcQCborStreamWriter_setDevice(self: pointer, device: pointer): void {.importc: "QCborStreamWriter_setDevice".}
proc fcQCborStreamWriter_device(self: pointer, ): pointer {.importc: "QCborStreamWriter_device".}
proc fcQCborStreamWriter_append(self: pointer, u: culonglong): void {.importc: "QCborStreamWriter_append".}
proc fcQCborStreamWriter_appendWithQint64(self: pointer, i: clonglong): void {.importc: "QCborStreamWriter_appendWithQint64".}
proc fcQCborStreamWriter_appendWithQCborNegativeInteger(self: pointer, n: cint): void {.importc: "QCborStreamWriter_appendWithQCborNegativeInteger".}
proc fcQCborStreamWriter_appendWithBa(self: pointer, ba: struct_miqt_string): void {.importc: "QCborStreamWriter_appendWithBa".}
proc fcQCborStreamWriter_appendWithTag(self: pointer, tag: cint): void {.importc: "QCborStreamWriter_appendWithTag".}
proc fcQCborStreamWriter_append3(self: pointer, tag: cint): void {.importc: "QCborStreamWriter_append3".}
proc fcQCborStreamWriter_appendWithSt(self: pointer, st: cint): void {.importc: "QCborStreamWriter_appendWithSt".}
proc fcQCborStreamWriter_appendWithFloat(self: pointer, f: float32): void {.importc: "QCborStreamWriter_appendWithFloat".}
proc fcQCborStreamWriter_appendWithDouble(self: pointer, d: float64): void {.importc: "QCborStreamWriter_appendWithDouble".}
proc fcQCborStreamWriter_appendByteString(self: pointer, data: cstring, len: int64): void {.importc: "QCborStreamWriter_appendByteString".}
proc fcQCborStreamWriter_appendTextString(self: pointer, utf8: cstring, len: int64): void {.importc: "QCborStreamWriter_appendTextString".}
proc fcQCborStreamWriter_appendWithBool(self: pointer, b: bool): void {.importc: "QCborStreamWriter_appendWithBool".}
proc fcQCborStreamWriter_appendNull(self: pointer, ): void {.importc: "QCborStreamWriter_appendNull".}
proc fcQCborStreamWriter_appendUndefined(self: pointer, ): void {.importc: "QCborStreamWriter_appendUndefined".}
proc fcQCborStreamWriter_appendWithInt(self: pointer, i: cint): void {.importc: "QCborStreamWriter_appendWithInt".}
proc fcQCborStreamWriter_appendWithUint(self: pointer, u: cuint): void {.importc: "QCborStreamWriter_appendWithUint".}
proc fcQCborStreamWriter_append4(self: pointer, str: cstring): void {.importc: "QCborStreamWriter_append4".}
proc fcQCborStreamWriter_startArray(self: pointer, ): void {.importc: "QCborStreamWriter_startArray".}
proc fcQCborStreamWriter_startArrayWithCount(self: pointer, count: culonglong): void {.importc: "QCborStreamWriter_startArrayWithCount".}
proc fcQCborStreamWriter_endArray(self: pointer, ): bool {.importc: "QCborStreamWriter_endArray".}
proc fcQCborStreamWriter_startMap(self: pointer, ): void {.importc: "QCborStreamWriter_startMap".}
proc fcQCborStreamWriter_startMapWithCount(self: pointer, count: culonglong): void {.importc: "QCborStreamWriter_startMapWithCount".}
proc fcQCborStreamWriter_endMap(self: pointer, ): bool {.importc: "QCborStreamWriter_endMap".}
proc fcQCborStreamWriter_append22(self: pointer, str: cstring, size: int64): void {.importc: "QCborStreamWriter_append22".}
proc fcQCborStreamWriter_delete(self: pointer) {.importc: "QCborStreamWriter_delete".}


func init*(T: type QCborStreamWriter, h: ptr cQCborStreamWriter): QCborStreamWriter =
  T(h: h)
proc create*(T: type QCborStreamWriter, device: gen_qiodevice.QIODevice): QCborStreamWriter =

  QCborStreamWriter.init(fcQCborStreamWriter_new(device.h))
proc setDevice*(self: QCborStreamWriter, device: gen_qiodevice.QIODevice): void =

  fcQCborStreamWriter_setDevice(self.h, device.h)

proc device*(self: QCborStreamWriter, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQCborStreamWriter_device(self.h))

proc append*(self: QCborStreamWriter, u: culonglong): void =

  fcQCborStreamWriter_append(self.h, u)

proc appendWithQint64*(self: QCborStreamWriter, i: clonglong): void =

  fcQCborStreamWriter_appendWithQint64(self.h, i)

proc appendWithQCborNegativeInteger*(self: QCborStreamWriter, n: gen_qcborcommon.QCborNegativeInteger): void =

  fcQCborStreamWriter_appendWithQCborNegativeInteger(self.h, cint(n))

proc appendWithBa*(self: QCborStreamWriter, ba: seq[byte]): void =

  fcQCborStreamWriter_appendWithBa(self.h, struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))))

proc appendWithTag*(self: QCborStreamWriter, tag: gen_qcborcommon.QCborTag): void =

  fcQCborStreamWriter_appendWithTag(self.h, cint(tag))

proc append3*(self: QCborStreamWriter, tag: gen_qcborcommon.QCborKnownTags): void =

  fcQCborStreamWriter_append3(self.h, cint(tag))

proc appendWithSt*(self: QCborStreamWriter, st: gen_qcborcommon.QCborSimpleType): void =

  fcQCborStreamWriter_appendWithSt(self.h, cint(st))

proc appendWithFloat*(self: QCborStreamWriter, f: float32): void =

  fcQCborStreamWriter_appendWithFloat(self.h, f)

proc appendWithDouble*(self: QCborStreamWriter, d: float64): void =

  fcQCborStreamWriter_appendWithDouble(self.h, d)

proc appendByteString*(self: QCborStreamWriter, data: cstring, len: int64): void =

  fcQCborStreamWriter_appendByteString(self.h, data, len)

proc appendTextString*(self: QCborStreamWriter, utf8: cstring, len: int64): void =

  fcQCborStreamWriter_appendTextString(self.h, utf8, len)

proc appendWithBool*(self: QCborStreamWriter, b: bool): void =

  fcQCborStreamWriter_appendWithBool(self.h, b)

proc appendNull*(self: QCborStreamWriter, ): void =

  fcQCborStreamWriter_appendNull(self.h)

proc appendUndefined*(self: QCborStreamWriter, ): void =

  fcQCborStreamWriter_appendUndefined(self.h)

proc appendWithInt*(self: QCborStreamWriter, i: cint): void =

  fcQCborStreamWriter_appendWithInt(self.h, i)

proc appendWithUint*(self: QCborStreamWriter, u: cuint): void =

  fcQCborStreamWriter_appendWithUint(self.h, u)

proc append4*(self: QCborStreamWriter, str: cstring): void =

  fcQCborStreamWriter_append4(self.h, str)

proc startArray*(self: QCborStreamWriter, ): void =

  fcQCborStreamWriter_startArray(self.h)

proc startArrayWithCount*(self: QCborStreamWriter, count: culonglong): void =

  fcQCborStreamWriter_startArrayWithCount(self.h, count)

proc endArray*(self: QCborStreamWriter, ): bool =

  fcQCborStreamWriter_endArray(self.h)

proc startMap*(self: QCborStreamWriter, ): void =

  fcQCborStreamWriter_startMap(self.h)

proc startMapWithCount*(self: QCborStreamWriter, count: culonglong): void =

  fcQCborStreamWriter_startMapWithCount(self.h, count)

proc endMap*(self: QCborStreamWriter, ): bool =

  fcQCborStreamWriter_endMap(self.h)

proc append22*(self: QCborStreamWriter, str: cstring, size: int64): void =

  fcQCborStreamWriter_append22(self.h, str, size)

proc delete*(self: QCborStreamWriter) =
  fcQCborStreamWriter_delete(self.h)
