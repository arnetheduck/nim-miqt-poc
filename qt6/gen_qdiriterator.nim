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
{.compile("gen_qdiriterator.cpp", cflags).}


type QDirIteratorIteratorFlag* = cint
const
  QDirIteratorNoIteratorFlags* = 0
  QDirIteratorFollowSymlinks* = 1
  QDirIteratorSubdirectories* = 2



import gen_qdiriterator_types
export gen_qdiriterator_types

import
  gen_qdir,
  gen_qfileinfo
export
  gen_qdir,
  gen_qfileinfo

type cQDirIterator*{.exportc: "QDirIterator", incompleteStruct.} = object

proc fcQDirIterator_new(dir: pointer): ptr cQDirIterator {.importc: "QDirIterator_new".}
proc fcQDirIterator_new2(path: struct_miqt_string): ptr cQDirIterator {.importc: "QDirIterator_new2".}
proc fcQDirIterator_new3(path: struct_miqt_string, filter: cint): ptr cQDirIterator {.importc: "QDirIterator_new3".}
proc fcQDirIterator_new4(path: struct_miqt_string, nameFilters: struct_miqt_array): ptr cQDirIterator {.importc: "QDirIterator_new4".}
proc fcQDirIterator_new5(dir: pointer, flags: cint): ptr cQDirIterator {.importc: "QDirIterator_new5".}
proc fcQDirIterator_new6(path: struct_miqt_string, flags: cint): ptr cQDirIterator {.importc: "QDirIterator_new6".}
proc fcQDirIterator_new7(path: struct_miqt_string, filter: cint, flags: cint): ptr cQDirIterator {.importc: "QDirIterator_new7".}
proc fcQDirIterator_new8(path: struct_miqt_string, nameFilters: struct_miqt_array, filters: cint): ptr cQDirIterator {.importc: "QDirIterator_new8".}
proc fcQDirIterator_new9(path: struct_miqt_string, nameFilters: struct_miqt_array, filters: cint, flags: cint): ptr cQDirIterator {.importc: "QDirIterator_new9".}
proc fcQDirIterator_next(self: pointer, ): struct_miqt_string {.importc: "QDirIterator_next".}
proc fcQDirIterator_nextFileInfo(self: pointer, ): pointer {.importc: "QDirIterator_nextFileInfo".}
proc fcQDirIterator_hasNext(self: pointer, ): bool {.importc: "QDirIterator_hasNext".}
proc fcQDirIterator_fileName(self: pointer, ): struct_miqt_string {.importc: "QDirIterator_fileName".}
proc fcQDirIterator_filePath(self: pointer, ): struct_miqt_string {.importc: "QDirIterator_filePath".}
proc fcQDirIterator_fileInfo(self: pointer, ): pointer {.importc: "QDirIterator_fileInfo".}
proc fcQDirIterator_path(self: pointer, ): struct_miqt_string {.importc: "QDirIterator_path".}
proc fcQDirIterator_delete(self: pointer) {.importc: "QDirIterator_delete".}


func init*(T: type QDirIterator, h: ptr cQDirIterator): QDirIterator =
  T(h: h)
proc create*(T: type QDirIterator, dir: gen_qdir.QDir): QDirIterator =

  QDirIterator.init(fcQDirIterator_new(dir.h))
proc create*(T: type QDirIterator, path: string): QDirIterator =

  QDirIterator.init(fcQDirIterator_new2(struct_miqt_string(data: path, len: csize_t(len(path)))))
proc create*(T: type QDirIterator, path: string, filter: gen_qdir.QDirFilter): QDirIterator =

  QDirIterator.init(fcQDirIterator_new3(struct_miqt_string(data: path, len: csize_t(len(path))), cint(filter)))
proc create*(T: type QDirIterator, path: string, nameFilters: seq[string]): QDirIterator =

  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  QDirIterator.init(fcQDirIterator_new4(struct_miqt_string(data: path, len: csize_t(len(path))), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0]))))
proc create*(T: type QDirIterator, dir: gen_qdir.QDir, flags: QDirIteratorIteratorFlag): QDirIterator =

  QDirIterator.init(fcQDirIterator_new5(dir.h, cint(flags)))
proc create2*(T: type QDirIterator, path: string, flags: QDirIteratorIteratorFlag): QDirIterator =

  QDirIterator.init(fcQDirIterator_new6(struct_miqt_string(data: path, len: csize_t(len(path))), cint(flags)))
proc create*(T: type QDirIterator, path: string, filter: gen_qdir.QDirFilter, flags: QDirIteratorIteratorFlag): QDirIterator =

  QDirIterator.init(fcQDirIterator_new7(struct_miqt_string(data: path, len: csize_t(len(path))), cint(filter), cint(flags)))
proc create*(T: type QDirIterator, path: string, nameFilters: seq[string], filters: gen_qdir.QDirFilter): QDirIterator =

  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  QDirIterator.init(fcQDirIterator_new8(struct_miqt_string(data: path, len: csize_t(len(path))), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters)))
proc create*(T: type QDirIterator, path: string, nameFilters: seq[string], filters: gen_qdir.QDirFilter, flags: QDirIteratorIteratorFlag): QDirIterator =

  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  QDirIterator.init(fcQDirIterator_new9(struct_miqt_string(data: path, len: csize_t(len(path))), struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(flags)))
proc next*(self: QDirIterator, ): string =

  let v_ms = fcQDirIterator_next(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nextFileInfo*(self: QDirIterator, ): gen_qfileinfo.QFileInfo =

  gen_qfileinfo.QFileInfo(h: fcQDirIterator_nextFileInfo(self.h))

proc hasNext*(self: QDirIterator, ): bool =

  fcQDirIterator_hasNext(self.h)

proc fileName*(self: QDirIterator, ): string =

  let v_ms = fcQDirIterator_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: QDirIterator, ): string =

  let v_ms = fcQDirIterator_filePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileInfo*(self: QDirIterator, ): gen_qfileinfo.QFileInfo =

  gen_qfileinfo.QFileInfo(h: fcQDirIterator_fileInfo(self.h))

proc path*(self: QDirIterator, ): string =

  let v_ms = fcQDirIterator_path(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QDirIterator) =
  fcQDirIterator_delete(self.h)
