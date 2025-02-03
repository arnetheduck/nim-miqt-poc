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
{.compile("gen_qtemporarydir.cpp", cflags).}


import gen_qtemporarydir_types
export gen_qtemporarydir_types


type cQTemporaryDir*{.exportc: "QTemporaryDir", incompleteStruct.} = object

proc fcQTemporaryDir_new(): ptr cQTemporaryDir {.importc: "QTemporaryDir_new".}
proc fcQTemporaryDir_new2(templateName: struct_miqt_string): ptr cQTemporaryDir {.importc: "QTemporaryDir_new2".}
proc fcQTemporaryDir_isValid(self: pointer, ): bool {.importc: "QTemporaryDir_isValid".}
proc fcQTemporaryDir_errorString(self: pointer, ): struct_miqt_string {.importc: "QTemporaryDir_errorString".}
proc fcQTemporaryDir_autoRemove(self: pointer, ): bool {.importc: "QTemporaryDir_autoRemove".}
proc fcQTemporaryDir_setAutoRemove(self: pointer, b: bool): void {.importc: "QTemporaryDir_setAutoRemove".}
proc fcQTemporaryDir_remove(self: pointer, ): bool {.importc: "QTemporaryDir_remove".}
proc fcQTemporaryDir_path(self: pointer, ): struct_miqt_string {.importc: "QTemporaryDir_path".}
proc fcQTemporaryDir_filePath(self: pointer, fileName: struct_miqt_string): struct_miqt_string {.importc: "QTemporaryDir_filePath".}
proc fcQTemporaryDir_delete(self: pointer) {.importc: "QTemporaryDir_delete".}


func init*(T: type QTemporaryDir, h: ptr cQTemporaryDir): QTemporaryDir =
  T(h: h)
proc create*(T: type QTemporaryDir, ): QTemporaryDir =

  QTemporaryDir.init(fcQTemporaryDir_new())
proc create*(T: type QTemporaryDir, templateName: string): QTemporaryDir =

  QTemporaryDir.init(fcQTemporaryDir_new2(struct_miqt_string(data: templateName, len: csize_t(len(templateName)))))
proc isValid*(self: QTemporaryDir, ): bool =

  fcQTemporaryDir_isValid(self.h)

proc errorString*(self: QTemporaryDir, ): string =

  let v_ms = fcQTemporaryDir_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc autoRemove*(self: QTemporaryDir, ): bool =

  fcQTemporaryDir_autoRemove(self.h)

proc setAutoRemove*(self: QTemporaryDir, b: bool): void =

  fcQTemporaryDir_setAutoRemove(self.h, b)

proc remove*(self: QTemporaryDir, ): bool =

  fcQTemporaryDir_remove(self.h)

proc path*(self: QTemporaryDir, ): string =

  let v_ms = fcQTemporaryDir_path(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: QTemporaryDir, fileName: string): string =

  let v_ms = fcQTemporaryDir_filePath(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QTemporaryDir) =
  fcQTemporaryDir_delete(self.h)
