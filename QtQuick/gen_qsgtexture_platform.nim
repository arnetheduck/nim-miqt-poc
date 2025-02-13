import Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick")
{.compile("gen_qsgtexture_platform.cpp", cflags).}


import gen_qsgtexture_platform_types
export gen_qsgtexture_platform_types

import
  gen_qquickwindow_types,
  gen_qsgtexture_types,
  gen_qsize_types
export
  gen_qquickwindow_types,
  gen_qsgtexture_types,
  gen_qsize_types

type cQNativeInterfaceQSGOpenGLTexture*{.exportc: "QNativeInterface__QSGOpenGLTexture", incompleteStruct.} = object
type cQNativeInterfaceQSGVulkanTexture*{.exportc: "QNativeInterface__QSGVulkanTexture", incompleteStruct.} = object

proc fcQNativeInterfaceQSGOpenGLTexture_nativeTexture(self: pointer, ): cGLuint {.importc: "QNativeInterface__QSGOpenGLTexture_nativeTexture".}
proc fcQNativeInterfaceQSGOpenGLTexture_fromNative(textureId: cGLuint, window: pointer, size: pointer): pointer {.importc: "QNativeInterface__QSGOpenGLTexture_fromNative".}
proc fcQNativeInterfaceQSGOpenGLTexture_fromNativeExternalOES(textureId: cGLuint, window: pointer, size: pointer): pointer {.importc: "QNativeInterface__QSGOpenGLTexture_fromNativeExternalOES".}
proc fcQNativeInterfaceQSGOpenGLTexture_fromNative4(textureId: cGLuint, window: pointer, size: pointer, options: cint): pointer {.importc: "QNativeInterface__QSGOpenGLTexture_fromNative4".}
proc fcQNativeInterfaceQSGOpenGLTexture_fromNativeExternalOES4(textureId: cGLuint, window: pointer, size: pointer, options: cint): pointer {.importc: "QNativeInterface__QSGOpenGLTexture_fromNativeExternalOES4".}
type cQNativeInterfaceQSGOpenGLTextureVTable = object
  destructor*: proc(vtbl: ptr cQNativeInterfaceQSGOpenGLTextureVTable, self: ptr cQNativeInterfaceQSGOpenGLTexture) {.cdecl, raises:[], gcsafe.}
  nativeTexture*: proc(vtbl, self: pointer, ): cGLuint {.cdecl, raises: [], gcsafe.}
proc fcQNativeInterfaceQSGOpenGLTexture_new(vtbl: pointer, ): ptr cQNativeInterfaceQSGOpenGLTexture {.importc: "QNativeInterface__QSGOpenGLTexture_new".}
proc fcQNativeInterfaceQSGVulkanTexture_nativeImage(self: pointer, ): cVkImage {.importc: "QNativeInterface__QSGVulkanTexture_nativeImage".}
proc fcQNativeInterfaceQSGVulkanTexture_nativeImageLayout(self: pointer, ): cVkImageLayout {.importc: "QNativeInterface__QSGVulkanTexture_nativeImageLayout".}
proc fcQNativeInterfaceQSGVulkanTexture_fromNative(image: cVkImage, layout: cVkImageLayout, window: pointer, size: pointer): pointer {.importc: "QNativeInterface__QSGVulkanTexture_fromNative".}
proc fcQNativeInterfaceQSGVulkanTexture_fromNative5(image: cVkImage, layout: cVkImageLayout, window: pointer, size: pointer, options: cint): pointer {.importc: "QNativeInterface__QSGVulkanTexture_fromNative5".}
type cQNativeInterfaceQSGVulkanTextureVTable = object
  destructor*: proc(vtbl: ptr cQNativeInterfaceQSGVulkanTextureVTable, self: ptr cQNativeInterfaceQSGVulkanTexture) {.cdecl, raises:[], gcsafe.}
  nativeImage*: proc(vtbl, self: pointer, ): cVkImage {.cdecl, raises: [], gcsafe.}
  nativeImageLayout*: proc(vtbl, self: pointer, ): cVkImageLayout {.cdecl, raises: [], gcsafe.}
proc fcQNativeInterfaceQSGVulkanTexture_new(vtbl: pointer, ): ptr cQNativeInterfaceQSGVulkanTexture {.importc: "QNativeInterface__QSGVulkanTexture_new".}

proc nativeTexture*(self: gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture, ): GLuint =
TODO GLuint
proc fromNative*(_: type gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture, textureId: GLuint, window: gen_qquickwindow_types.QQuickWindow, size: gen_qsize_types.QSize): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQNativeInterfaceQSGOpenGLTexture_fromNative(textureId, window.h, size.h))

proc fromNativeExternalOES*(_: type gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture, textureId: GLuint, window: gen_qquickwindow_types.QQuickWindow, size: gen_qsize_types.QSize): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQNativeInterfaceQSGOpenGLTexture_fromNativeExternalOES(textureId, window.h, size.h))

proc fromNative*(_: type gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture, textureId: GLuint, window: gen_qquickwindow_types.QQuickWindow, size: gen_qsize_types.QSize, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQNativeInterfaceQSGOpenGLTexture_fromNative4(textureId, window.h, size.h, cint(options)))

proc fromNativeExternalOES*(_: type gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture, textureId: GLuint, window: gen_qquickwindow_types.QQuickWindow, size: gen_qsize_types.QSize, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQNativeInterfaceQSGOpenGLTexture_fromNativeExternalOES4(textureId, window.h, size.h, cint(options)))

type QNativeInterfaceQSGOpenGLTexturenativeTextureProc* = proc(self: QNativeInterfaceQSGOpenGLTexture): GLuint {.raises: [], gcsafe.}
type QNativeInterfaceQSGOpenGLTextureVTable* = object
  vtbl: cQNativeInterfaceQSGOpenGLTextureVTable
  nativeTexture*: QNativeInterfaceQSGOpenGLTexturenativeTextureProc
proc miqt_exec_callback_cQNativeInterfaceQSGOpenGLTexture_nativeTexture(vtbl: pointer, self: pointer): cGLuint {.cdecl.} =
  let vtbl = cast[ptr QNativeInterfaceQSGOpenGLTextureVTable](vtbl)
  let self = QNativeInterfaceQSGOpenGLTexture(h: self)
  let virtualReturn = vtbl[].nativeTexture(self)
  virtualReturn

proc create*(T: type gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture,
    vtbl: ref QNativeInterfaceQSGOpenGLTextureVTable = nil): gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture =
  let vtbl = if vtbl == nil: new QNativeInterfaceQSGOpenGLTextureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNativeInterfaceQSGOpenGLTextureVTable, _: ptr cQNativeInterfaceQSGOpenGLTexture) {.cdecl.} =
    let vtbl = cast[ref QNativeInterfaceQSGOpenGLTextureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.nativeTexture):
    vtbl[].vtbl.nativeTexture = miqt_exec_callback_cQNativeInterfaceQSGOpenGLTexture_nativeTexture
  gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture(h: fcQNativeInterfaceQSGOpenGLTexture_new(addr(vtbl[]), ))

proc nativeImage*(self: gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, ): VkImage =
TODO VkImage
proc nativeImageLayout*(self: gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, ): VkImageLayout =
TODO VkImageLayout
proc fromNative*(_: type gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, image: VkImage, layout: VkImageLayout, window: gen_qquickwindow_types.QQuickWindow, size: gen_qsize_types.QSize): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQNativeInterfaceQSGVulkanTexture_fromNative(image, layout, window.h, size.h))

proc fromNative*(_: type gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, image: VkImage, layout: VkImageLayout, window: gen_qquickwindow_types.QQuickWindow, size: gen_qsize_types.QSize, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQNativeInterfaceQSGVulkanTexture_fromNative5(image, layout, window.h, size.h, cint(options)))

type QNativeInterfaceQSGVulkanTexturenativeImageProc* = proc(self: QNativeInterfaceQSGVulkanTexture): VkImage {.raises: [], gcsafe.}
type QNativeInterfaceQSGVulkanTexturenativeImageLayoutProc* = proc(self: QNativeInterfaceQSGVulkanTexture): VkImageLayout {.raises: [], gcsafe.}
type QNativeInterfaceQSGVulkanTextureVTable* = object
  vtbl: cQNativeInterfaceQSGVulkanTextureVTable
  nativeImage*: QNativeInterfaceQSGVulkanTexturenativeImageProc
  nativeImageLayout*: QNativeInterfaceQSGVulkanTexturenativeImageLayoutProc
proc miqt_exec_callback_cQNativeInterfaceQSGVulkanTexture_nativeImage(vtbl: pointer, self: pointer): cVkImage {.cdecl.} =
  let vtbl = cast[ptr QNativeInterfaceQSGVulkanTextureVTable](vtbl)
  let self = QNativeInterfaceQSGVulkanTexture(h: self)
  let virtualReturn = vtbl[].nativeImage(self)
  virtualReturn

proc miqt_exec_callback_cQNativeInterfaceQSGVulkanTexture_nativeImageLayout(vtbl: pointer, self: pointer): cVkImageLayout {.cdecl.} =
  let vtbl = cast[ptr QNativeInterfaceQSGVulkanTextureVTable](vtbl)
  let self = QNativeInterfaceQSGVulkanTexture(h: self)
  let virtualReturn = vtbl[].nativeImageLayout(self)
  virtualReturn

proc create*(T: type gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture,
    vtbl: ref QNativeInterfaceQSGVulkanTextureVTable = nil): gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture =
  let vtbl = if vtbl == nil: new QNativeInterfaceQSGVulkanTextureVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNativeInterfaceQSGVulkanTextureVTable, _: ptr cQNativeInterfaceQSGVulkanTexture) {.cdecl.} =
    let vtbl = cast[ref QNativeInterfaceQSGVulkanTextureVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.nativeImage):
    vtbl[].vtbl.nativeImage = miqt_exec_callback_cQNativeInterfaceQSGVulkanTexture_nativeImage
  if not isNil(vtbl.nativeImageLayout):
    vtbl[].vtbl.nativeImageLayout = miqt_exec_callback_cQNativeInterfaceQSGVulkanTexture_nativeImageLayout
  gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture(h: fcQNativeInterfaceQSGVulkanTexture_new(addr(vtbl[]), ))

