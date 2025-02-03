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
{.compile("gen_qlibraryinfo.cpp", cflags).}


type QLibraryInfoLibraryLocation* = cint
const
  QLibraryInfoPrefixPath* = 0
  QLibraryInfoDocumentationPath* = 1
  QLibraryInfoHeadersPath* = 2
  QLibraryInfoLibrariesPath* = 3
  QLibraryInfoLibraryExecutablesPath* = 4
  QLibraryInfoBinariesPath* = 5
  QLibraryInfoPluginsPath* = 6
  QLibraryInfoImportsPath* = 7
  QLibraryInfoQml2ImportsPath* = 8
  QLibraryInfoArchDataPath* = 9
  QLibraryInfoDataPath* = 10
  QLibraryInfoTranslationsPath* = 11
  QLibraryInfoExamplesPath* = 12
  QLibraryInfoTestsPath* = 13
  QLibraryInfoSettingsPath* = 100



import gen_qlibraryinfo_types
export gen_qlibraryinfo_types

import
  gen_qdatetime,
  gen_qversionnumber
export
  gen_qdatetime,
  gen_qversionnumber

type cQLibraryInfo*{.exportc: "QLibraryInfo", incompleteStruct.} = object

proc fcQLibraryInfo_licensee(): struct_miqt_string {.importc: "QLibraryInfo_licensee".}
proc fcQLibraryInfo_licensedProducts(): struct_miqt_string {.importc: "QLibraryInfo_licensedProducts".}
proc fcQLibraryInfo_buildDate(): pointer {.importc: "QLibraryInfo_buildDate".}
proc fcQLibraryInfo_build(): cstring {.importc: "QLibraryInfo_build".}
proc fcQLibraryInfo_isDebugBuild(): bool {.importc: "QLibraryInfo_isDebugBuild".}
proc fcQLibraryInfo_version(): pointer {.importc: "QLibraryInfo_version".}
proc fcQLibraryInfo_location(param1: cint): struct_miqt_string {.importc: "QLibraryInfo_location".}
proc fcQLibraryInfo_platformPluginArguments(platformName: struct_miqt_string): struct_miqt_array {.importc: "QLibraryInfo_platformPluginArguments".}
proc fcQLibraryInfo_delete(self: pointer) {.importc: "QLibraryInfo_delete".}


func init*(T: type QLibraryInfo, h: ptr cQLibraryInfo): QLibraryInfo =
  T(h: h)
proc licensee*(_: type QLibraryInfo, ): string =

  let v_ms = fcQLibraryInfo_licensee()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc licensedProducts*(_: type QLibraryInfo, ): string =

  let v_ms = fcQLibraryInfo_licensedProducts()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc buildDate*(_: type QLibraryInfo, ): gen_qdatetime.QDate =

  gen_qdatetime.QDate(h: fcQLibraryInfo_buildDate())

proc build*(_: type QLibraryInfo, ): cstring =

  (fcQLibraryInfo_build())

proc isDebugBuild*(_: type QLibraryInfo, ): bool =

  fcQLibraryInfo_isDebugBuild()

proc version*(_: type QLibraryInfo, ): gen_qversionnumber.QVersionNumber =

  gen_qversionnumber.QVersionNumber(h: fcQLibraryInfo_version())

proc location*(_: type QLibraryInfo, param1: QLibraryInfoLibraryLocation): string =

  let v_ms = fcQLibraryInfo_location(cint(param1))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc platformPluginArguments*(_: type QLibraryInfo, platformName: string): seq[string] =

  var v_ma = fcQLibraryInfo_platformPluginArguments(struct_miqt_string(data: platformName, len: csize_t(len(platformName))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc delete*(self: QLibraryInfo) =
  fcQLibraryInfo_delete(self.h)
