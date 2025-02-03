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
{.compile("gen_qplugin.cpp", cflags).}


import gen_qplugin_types
export gen_qplugin_types

import
  gen_qjsonobject
export
  gen_qjsonobject

type cQPluginMetaData*{.exportc: "QPluginMetaData", incompleteStruct.} = object
type cQStaticPlugin*{.exportc: "QStaticPlugin", incompleteStruct.} = object
type cQPluginMetaDataHeader*{.exportc: "QPluginMetaData__Header", incompleteStruct.} = object
type cQPluginMetaDataMagicHeader*{.exportc: "QPluginMetaData__MagicHeader", incompleteStruct.} = object
type cQPluginMetaDataElfNoteHeader*{.exportc: "QPluginMetaData__ElfNoteHeader", incompleteStruct.} = object

proc fcQPluginMetaData_archRequirements(): uint8 {.importc: "QPluginMetaData_archRequirements".}
proc fcQPluginMetaData_delete(self: pointer) {.importc: "QPluginMetaData_delete".}
proc fcQStaticPlugin_metaData(self: pointer, ): pointer {.importc: "QStaticPlugin_metaData".}
proc fcQStaticPlugin_delete(self: pointer) {.importc: "QStaticPlugin_delete".}
proc fcQPluginMetaDataHeader_new(param1: pointer): ptr cQPluginMetaDataHeader {.importc: "QPluginMetaData__Header_new".}
proc fcQPluginMetaDataHeader_delete(self: pointer) {.importc: "QPluginMetaData__Header_delete".}
proc fcQPluginMetaDataMagicHeader_new(): ptr cQPluginMetaDataMagicHeader {.importc: "QPluginMetaData__MagicHeader_new".}
proc fcQPluginMetaDataMagicHeader_delete(self: pointer) {.importc: "QPluginMetaData__MagicHeader_delete".}
proc fcQPluginMetaDataElfNoteHeader_new(payloadSize: cuint): ptr cQPluginMetaDataElfNoteHeader {.importc: "QPluginMetaData__ElfNoteHeader_new".}
proc fcQPluginMetaDataElfNoteHeader_new2(param1: pointer): ptr cQPluginMetaDataElfNoteHeader {.importc: "QPluginMetaData__ElfNoteHeader_new2".}
proc fcQPluginMetaDataElfNoteHeader_delete(self: pointer) {.importc: "QPluginMetaData__ElfNoteHeader_delete".}


func init*(T: type QPluginMetaData, h: ptr cQPluginMetaData): QPluginMetaData =
  T(h: h)
proc archRequirements*(_: type QPluginMetaData, ): uint8 =

  fcQPluginMetaData_archRequirements()

proc delete*(self: QPluginMetaData) =
  fcQPluginMetaData_delete(self.h)

func init*(T: type QStaticPlugin, h: ptr cQStaticPlugin): QStaticPlugin =
  T(h: h)
proc metaData*(self: QStaticPlugin, ): gen_qjsonobject.QJsonObject =

  gen_qjsonobject.QJsonObject(h: fcQStaticPlugin_metaData(self.h))

proc delete*(self: QStaticPlugin) =
  fcQStaticPlugin_delete(self.h)

func init*(T: type QPluginMetaDataHeader, h: ptr cQPluginMetaDataHeader): QPluginMetaDataHeader =
  T(h: h)
proc create*(T: type QPluginMetaDataHeader, param1: QPluginMetaDataHeader): QPluginMetaDataHeader =

  QPluginMetaDataHeader.init(fcQPluginMetaDataHeader_new(param1.h))
proc delete*(self: QPluginMetaDataHeader) =
  fcQPluginMetaDataHeader_delete(self.h)

func init*(T: type QPluginMetaDataMagicHeader, h: ptr cQPluginMetaDataMagicHeader): QPluginMetaDataMagicHeader =
  T(h: h)
proc create*(T: type QPluginMetaDataMagicHeader, ): QPluginMetaDataMagicHeader =

  QPluginMetaDataMagicHeader.init(fcQPluginMetaDataMagicHeader_new())
proc delete*(self: QPluginMetaDataMagicHeader) =
  fcQPluginMetaDataMagicHeader_delete(self.h)

func init*(T: type QPluginMetaDataElfNoteHeader, h: ptr cQPluginMetaDataElfNoteHeader): QPluginMetaDataElfNoteHeader =
  T(h: h)
proc create*(T: type QPluginMetaDataElfNoteHeader, payloadSize: cuint): QPluginMetaDataElfNoteHeader =

  QPluginMetaDataElfNoteHeader.init(fcQPluginMetaDataElfNoteHeader_new(payloadSize))
proc create*(T: type QPluginMetaDataElfNoteHeader, param1: QPluginMetaDataElfNoteHeader): QPluginMetaDataElfNoteHeader =

  QPluginMetaDataElfNoteHeader.init(fcQPluginMetaDataElfNoteHeader_new2(param1.h))
proc delete*(self: QPluginMetaDataElfNoteHeader) =
  fcQPluginMetaDataElfNoteHeader_delete(self.h)
