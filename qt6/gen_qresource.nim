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
{.compile("gen_qresource.cpp", cflags).}


type QResourceCompression* = cint
const
  QResourceNoCompression* = 0
  QResourceZlibCompression* = 1
  QResourceZstdCompression* = 2



import gen_qresource_types
export gen_qresource_types

import
  gen_qdatetime,
  gen_qlocale
export
  gen_qdatetime,
  gen_qlocale

type cQResource*{.exportc: "QResource", incompleteStruct.} = object

proc fcQResource_new(): ptr cQResource {.importc: "QResource_new".}
proc fcQResource_new2(file: struct_miqt_string): ptr cQResource {.importc: "QResource_new2".}
proc fcQResource_new3(file: struct_miqt_string, locale: pointer): ptr cQResource {.importc: "QResource_new3".}
proc fcQResource_setFileName(self: pointer, file: struct_miqt_string): void {.importc: "QResource_setFileName".}
proc fcQResource_fileName(self: pointer, ): struct_miqt_string {.importc: "QResource_fileName".}
proc fcQResource_absoluteFilePath(self: pointer, ): struct_miqt_string {.importc: "QResource_absoluteFilePath".}
proc fcQResource_setLocale(self: pointer, locale: pointer): void {.importc: "QResource_setLocale".}
proc fcQResource_locale(self: pointer, ): pointer {.importc: "QResource_locale".}
proc fcQResource_isValid(self: pointer, ): bool {.importc: "QResource_isValid".}
proc fcQResource_compressionAlgorithm(self: pointer, ): cint {.importc: "QResource_compressionAlgorithm".}
proc fcQResource_size(self: pointer, ): clonglong {.importc: "QResource_size".}
proc fcQResource_data(self: pointer, ): ptr uint8 {.importc: "QResource_data".}
proc fcQResource_uncompressedSize(self: pointer, ): clonglong {.importc: "QResource_uncompressedSize".}
proc fcQResource_uncompressedData(self: pointer, ): struct_miqt_string {.importc: "QResource_uncompressedData".}
proc fcQResource_lastModified(self: pointer, ): pointer {.importc: "QResource_lastModified".}
proc fcQResource_registerResource(rccFilename: struct_miqt_string): bool {.importc: "QResource_registerResource".}
proc fcQResource_unregisterResource(rccFilename: struct_miqt_string): bool {.importc: "QResource_unregisterResource".}
proc fcQResource_registerResourceWithRccData(rccData: ptr uint8): bool {.importc: "QResource_registerResourceWithRccData".}
proc fcQResource_unregisterResourceWithRccData(rccData: ptr uint8): bool {.importc: "QResource_unregisterResourceWithRccData".}
proc fcQResource_registerResource2(rccFilename: struct_miqt_string, resourceRoot: struct_miqt_string): bool {.importc: "QResource_registerResource2".}
proc fcQResource_unregisterResource2(rccFilename: struct_miqt_string, resourceRoot: struct_miqt_string): bool {.importc: "QResource_unregisterResource2".}
proc fcQResource_registerResource22(rccData: ptr uint8, resourceRoot: struct_miqt_string): bool {.importc: "QResource_registerResource22".}
proc fcQResource_unregisterResource22(rccData: ptr uint8, resourceRoot: struct_miqt_string): bool {.importc: "QResource_unregisterResource22".}
proc fcQResource_delete(self: pointer) {.importc: "QResource_delete".}


func init*(T: type QResource, h: ptr cQResource): QResource =
  T(h: h)
proc create*(T: type QResource, ): QResource =

  QResource.init(fcQResource_new())
proc create*(T: type QResource, file: string): QResource =

  QResource.init(fcQResource_new2(struct_miqt_string(data: file, len: csize_t(len(file)))))
proc create*(T: type QResource, file: string, locale: gen_qlocale.QLocale): QResource =

  QResource.init(fcQResource_new3(struct_miqt_string(data: file, len: csize_t(len(file))), locale.h))
proc setFileName*(self: QResource, file: string): void =

  fcQResource_setFileName(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc fileName*(self: QResource, ): string =

  let v_ms = fcQResource_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc absoluteFilePath*(self: QResource, ): string =

  let v_ms = fcQResource_absoluteFilePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLocale*(self: QResource, locale: gen_qlocale.QLocale): void =

  fcQResource_setLocale(self.h, locale.h)

proc locale*(self: QResource, ): gen_qlocale.QLocale =

  gen_qlocale.QLocale(h: fcQResource_locale(self.h))

proc isValid*(self: QResource, ): bool =

  fcQResource_isValid(self.h)

proc compressionAlgorithm*(self: QResource, ): QResourceCompression =

  QResourceCompression(fcQResource_compressionAlgorithm(self.h))

proc size*(self: QResource, ): clonglong =

  fcQResource_size(self.h)

proc data*(self: QResource, ): ptr uint8 =

  fcQResource_data(self.h)

proc uncompressedSize*(self: QResource, ): clonglong =

  fcQResource_uncompressedSize(self.h)

proc uncompressedData*(self: QResource, ): seq[byte] =

  var v_bytearray = fcQResource_uncompressedData(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc lastModified*(self: QResource, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQResource_lastModified(self.h))

proc registerResource*(_: type QResource, rccFilename: string): bool =

  fcQResource_registerResource(struct_miqt_string(data: rccFilename, len: csize_t(len(rccFilename))))

proc unregisterResource*(_: type QResource, rccFilename: string): bool =

  fcQResource_unregisterResource(struct_miqt_string(data: rccFilename, len: csize_t(len(rccFilename))))

proc registerResourceWithRccData*(_: type QResource, rccData: ptr uint8): bool =

  fcQResource_registerResourceWithRccData(rccData)

proc unregisterResourceWithRccData*(_: type QResource, rccData: ptr uint8): bool =

  fcQResource_unregisterResourceWithRccData(rccData)

proc registerResource2*(_: type QResource, rccFilename: string, resourceRoot: string): bool =

  fcQResource_registerResource2(struct_miqt_string(data: rccFilename, len: csize_t(len(rccFilename))), struct_miqt_string(data: resourceRoot, len: csize_t(len(resourceRoot))))

proc unregisterResource2*(_: type QResource, rccFilename: string, resourceRoot: string): bool =

  fcQResource_unregisterResource2(struct_miqt_string(data: rccFilename, len: csize_t(len(rccFilename))), struct_miqt_string(data: resourceRoot, len: csize_t(len(resourceRoot))))

proc registerResource22*(_: type QResource, rccData: ptr uint8, resourceRoot: string): bool =

  fcQResource_registerResource22(rccData, struct_miqt_string(data: resourceRoot, len: csize_t(len(resourceRoot))))

proc unregisterResource22*(_: type QResource, rccData: ptr uint8, resourceRoot: string): bool =

  fcQResource_unregisterResource22(rccData, struct_miqt_string(data: resourceRoot, len: csize_t(len(resourceRoot))))

proc delete*(self: QResource) =
  fcQResource_delete(self.h)
