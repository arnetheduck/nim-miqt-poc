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
{.compile("gen_qsurface.cpp", cflags).}


type QSurfaceSurfaceClass* = cint
const
  QSurfaceWindow* = 0
  QSurfaceOffscreen* = 1



type QSurfaceSurfaceType* = cint
const
  QSurfaceRasterSurface* = 0
  QSurfaceOpenGLSurface* = 1
  QSurfaceRasterGLSurface* = 2
  QSurfaceOpenVGSurface* = 3
  QSurfaceVulkanSurface* = 4
  QSurfaceMetalSurface* = 5
  QSurfaceDirect3DSurface* = 6



import gen_qsurface_types
export gen_qsurface_types

import
  gen_qobjectdefs,
  gen_qsize,
  gen_qsurfaceformat
export
  gen_qobjectdefs,
  gen_qsize,
  gen_qsurfaceformat

type cQSurface*{.exportc: "QSurface", incompleteStruct.} = object

proc fcQSurface_surfaceClass(self: pointer, ): cint {.importc: "QSurface_surfaceClass".}
proc fcQSurface_format(self: pointer, ): pointer {.importc: "QSurface_format".}
proc fcQSurface_surfaceType(self: pointer, ): cint {.importc: "QSurface_surfaceType".}
proc fcQSurface_supportsOpenGL(self: pointer, ): bool {.importc: "QSurface_supportsOpenGL".}
proc fcQSurface_size(self: pointer, ): pointer {.importc: "QSurface_size".}
proc fcQSurface_staticMetaObject(): pointer {.importc: "QSurface_staticMetaObject".}
proc fcQSurface_delete(self: pointer) {.importc: "QSurface_delete".}


func init*(T: type QSurface, h: ptr cQSurface): QSurface =
  T(h: h)
proc surfaceClass*(self: QSurface, ): QSurfaceSurfaceClass =

  QSurfaceSurfaceClass(fcQSurface_surfaceClass(self.h))

proc format*(self: QSurface, ): gen_qsurfaceformat.QSurfaceFormat =

  gen_qsurfaceformat.QSurfaceFormat(h: fcQSurface_format(self.h))

proc surfaceType*(self: QSurface, ): QSurfaceSurfaceType =

  QSurfaceSurfaceType(fcQSurface_surfaceType(self.h))

proc supportsOpenGL*(self: QSurface, ): bool =

  fcQSurface_supportsOpenGL(self.h)

proc size*(self: QSurface, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSurface_size(self.h))

proc staticMetaObject*(_: type QSurface): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSurface_staticMetaObject())
proc delete*(self: QSurface) =
  fcQSurface_delete(self.h)
