import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qmimedatabase.cpp", cflags).}


type QMimeDatabaseMatchMode* = cint
const
  QMimeDatabaseMatchDefault* = 0
  QMimeDatabaseMatchExtension* = 1
  QMimeDatabaseMatchContent* = 2



import gen_qmimedatabase_types
export gen_qmimedatabase_types

import
  gen_qfileinfo,
  gen_qiodevice,
  gen_qmimetype,
  gen_qurl
export
  gen_qfileinfo,
  gen_qiodevice,
  gen_qmimetype,
  gen_qurl

type cQMimeDatabase*{.exportc: "QMimeDatabase", incompleteStruct.} = object

proc fcQMimeDatabase_new(): ptr cQMimeDatabase {.importc: "QMimeDatabase_new".}
proc fcQMimeDatabase_mimeTypeForName(self: pointer, nameOrAlias: struct_miqt_string): pointer {.importc: "QMimeDatabase_mimeTypeForName".}
proc fcQMimeDatabase_mimeTypeForFile(self: pointer, fileName: struct_miqt_string): pointer {.importc: "QMimeDatabase_mimeTypeForFile".}
proc fcQMimeDatabase_mimeTypeForFileWithFileInfo(self: pointer, fileInfo: pointer): pointer {.importc: "QMimeDatabase_mimeTypeForFileWithFileInfo".}
proc fcQMimeDatabase_mimeTypesForFileName(self: pointer, fileName: struct_miqt_string): struct_miqt_array {.importc: "QMimeDatabase_mimeTypesForFileName".}
proc fcQMimeDatabase_mimeTypeForData(self: pointer, data: struct_miqt_string): pointer {.importc: "QMimeDatabase_mimeTypeForData".}
proc fcQMimeDatabase_mimeTypeForDataWithDevice(self: pointer, device: pointer): pointer {.importc: "QMimeDatabase_mimeTypeForDataWithDevice".}
proc fcQMimeDatabase_mimeTypeForUrl(self: pointer, url: pointer): pointer {.importc: "QMimeDatabase_mimeTypeForUrl".}
proc fcQMimeDatabase_mimeTypeForFileNameAndData(self: pointer, fileName: struct_miqt_string, device: pointer): pointer {.importc: "QMimeDatabase_mimeTypeForFileNameAndData".}
proc fcQMimeDatabase_mimeTypeForFileNameAndData2(self: pointer, fileName: struct_miqt_string, data: struct_miqt_string): pointer {.importc: "QMimeDatabase_mimeTypeForFileNameAndData2".}
proc fcQMimeDatabase_suffixForFileName(self: pointer, fileName: struct_miqt_string): struct_miqt_string {.importc: "QMimeDatabase_suffixForFileName".}
proc fcQMimeDatabase_allMimeTypes(self: pointer, ): struct_miqt_array {.importc: "QMimeDatabase_allMimeTypes".}
proc fcQMimeDatabase_mimeTypeForFile2(self: pointer, fileName: struct_miqt_string, mode: cint): pointer {.importc: "QMimeDatabase_mimeTypeForFile2".}
proc fcQMimeDatabase_mimeTypeForFile22(self: pointer, fileInfo: pointer, mode: cint): pointer {.importc: "QMimeDatabase_mimeTypeForFile22".}
proc fcQMimeDatabase_delete(self: pointer) {.importc: "QMimeDatabase_delete".}


func init*(T: type QMimeDatabase, h: ptr cQMimeDatabase): QMimeDatabase =
  T(h: h)
proc create*(T: type QMimeDatabase, ): QMimeDatabase =

  QMimeDatabase.init(fcQMimeDatabase_new())
proc mimeTypeForName*(self: QMimeDatabase, nameOrAlias: string): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForName(self.h, struct_miqt_string(data: nameOrAlias, len: csize_t(len(nameOrAlias)))))

proc mimeTypeForFile*(self: QMimeDatabase, fileName: string): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc mimeTypeForFileWithFileInfo*(self: QMimeDatabase, fileInfo: gen_qfileinfo.QFileInfo): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForFileWithFileInfo(self.h, fileInfo.h))

proc mimeTypesForFileName*(self: QMimeDatabase, fileName: string): seq[gen_qmimetype.QMimeType] =

  var v_ma = fcQMimeDatabase_mimeTypesForFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  var vx_ret = newSeq[gen_qmimetype.QMimeType](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmimetype.QMimeType(h: v_outCast[i])
  vx_ret

proc mimeTypeForData*(self: QMimeDatabase, data: seq[byte]): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc mimeTypeForDataWithDevice*(self: QMimeDatabase, device: gen_qiodevice.QIODevice): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForDataWithDevice(self.h, device.h))

proc mimeTypeForUrl*(self: QMimeDatabase, url: gen_qurl.QUrl): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForUrl(self.h, url.h))

proc mimeTypeForFileNameAndData*(self: QMimeDatabase, fileName: string, device: gen_qiodevice.QIODevice): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForFileNameAndData(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), device.h))

proc mimeTypeForFileNameAndData2*(self: QMimeDatabase, fileName: string, data: seq[byte]): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForFileNameAndData2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))

proc suffixForFileName*(self: QMimeDatabase, fileName: string): string =

  let v_ms = fcQMimeDatabase_suffixForFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allMimeTypes*(self: QMimeDatabase, ): seq[gen_qmimetype.QMimeType] =

  var v_ma = fcQMimeDatabase_allMimeTypes(self.h)
  var vx_ret = newSeq[gen_qmimetype.QMimeType](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qmimetype.QMimeType(h: v_outCast[i])
  vx_ret

proc mimeTypeForFile2*(self: QMimeDatabase, fileName: string, mode: QMimeDatabaseMatchMode): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForFile2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode)))

proc mimeTypeForFile22*(self: QMimeDatabase, fileInfo: gen_qfileinfo.QFileInfo, mode: QMimeDatabaseMatchMode): gen_qmimetype.QMimeType =

  gen_qmimetype.QMimeType(h: fcQMimeDatabase_mimeTypeForFile22(self.h, fileInfo.h, cint(mode)))

proc delete*(self: QMimeDatabase) =
  fcQMimeDatabase_delete(self.h)
