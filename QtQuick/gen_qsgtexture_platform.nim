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

proc fcQNativeInterfaceQSGOpenGLTexture_new(): ptr cQNativeInterfaceQSGOpenGLTexture {.importc: "QNativeInterface__QSGOpenGLTexture_new".}
proc fcQNativeInterfaceQSGOpenGLTexture_nativeTexture(self: pointer, ): cGLuint {.importc: "QNativeInterface__QSGOpenGLTexture_nativeTexture".}
proc fcQNativeInterfaceQSGOpenGLTexture_fromNative(textureId: cGLuint, window: pointer, size: pointer): pointer {.importc: "QNativeInterface__QSGOpenGLTexture_fromNative".}
proc fcQNativeInterfaceQSGOpenGLTexture_fromNativeExternalOES(textureId: cGLuint, window: pointer, size: pointer): pointer {.importc: "QNativeInterface__QSGOpenGLTexture_fromNativeExternalOES".}
proc fcQNativeInterfaceQSGOpenGLTexture_fromNative4(textureId: cGLuint, window: pointer, size: pointer, options: cint): pointer {.importc: "QNativeInterface__QSGOpenGLTexture_fromNative4".}
proc fcQNativeInterfaceQSGOpenGLTexture_fromNativeExternalOES4(textureId: cGLuint, window: pointer, size: pointer, options: cint): pointer {.importc: "QNativeInterface__QSGOpenGLTexture_fromNativeExternalOES4".}
proc fcQNativeInterfaceQSGOpenGLTexture_override_virtual_nativeTexture(self: pointer, slot: int) {.importc: "QNativeInterface__QSGOpenGLTexture_override_virtual_nativeTexture".}
proc fcQNativeInterfaceQSGVulkanTexture_new(): ptr cQNativeInterfaceQSGVulkanTexture {.importc: "QNativeInterface__QSGVulkanTexture_new".}
proc fcQNativeInterfaceQSGVulkanTexture_nativeImage(self: pointer, ): cVkImage {.importc: "QNativeInterface__QSGVulkanTexture_nativeImage".}
proc fcQNativeInterfaceQSGVulkanTexture_nativeImageLayout(self: pointer, ): cVkImageLayout {.importc: "QNativeInterface__QSGVulkanTexture_nativeImageLayout".}
proc fcQNativeInterfaceQSGVulkanTexture_fromNative(image: cVkImage, layout: cVkImageLayout, window: pointer, size: pointer): pointer {.importc: "QNativeInterface__QSGVulkanTexture_fromNative".}
proc fcQNativeInterfaceQSGVulkanTexture_fromNative5(image: cVkImage, layout: cVkImageLayout, window: pointer, size: pointer, options: cint): pointer {.importc: "QNativeInterface__QSGVulkanTexture_fromNative5".}
proc fcQNativeInterfaceQSGVulkanTexture_override_virtual_nativeImage(self: pointer, slot: int) {.importc: "QNativeInterface__QSGVulkanTexture_override_virtual_nativeImage".}
proc fcQNativeInterfaceQSGVulkanTexture_override_virtual_nativeImageLayout(self: pointer, slot: int) {.importc: "QNativeInterface__QSGVulkanTexture_override_virtual_nativeImageLayout".}


func init*(T: type gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture, h: ptr cQNativeInterfaceQSGOpenGLTexture): gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture =
  T(h: h)
proc create*(T: type gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture, ): gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture =
  gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture.init(fcQNativeInterfaceQSGOpenGLTexture_new())

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

type QNativeInterfaceQSGOpenGLTexturenativeTextureProc* = proc(): GLuint
proc onnativeTexture*(self: gen_qsgtexture_platform_types.QNativeInterfaceQSGOpenGLTexture, slot: QNativeInterfaceQSGOpenGLTexturenativeTextureProc) =
  # TODO check subclass
  var tmp = new QNativeInterfaceQSGOpenGLTexturenativeTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeInterfaceQSGOpenGLTexture_override_virtual_nativeTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeInterface__QSGOpenGLTexture_nativeTexture(self: ptr cQNativeInterfaceQSGOpenGLTexture, slot: int): cGLuint {.exportc: "miqt_exec_callback_QNativeInterface__QSGOpenGLTexture_nativeTexture ".} =
  var nimfunc = cast[ptr QNativeInterfaceQSGOpenGLTexturenativeTextureProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn

func init*(T: type gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, h: ptr cQNativeInterfaceQSGVulkanTexture): gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture =
  T(h: h)
proc create*(T: type gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, ): gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture =
  gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture.init(fcQNativeInterfaceQSGVulkanTexture_new())

proc nativeImage*(self: gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, ): VkImage =
TODO VkImage
proc nativeImageLayout*(self: gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, ): VkImageLayout =
TODO VkImageLayout
proc fromNative*(_: type gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, image: VkImage, layout: VkImageLayout, window: gen_qquickwindow_types.QQuickWindow, size: gen_qsize_types.QSize): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQNativeInterfaceQSGVulkanTexture_fromNative(image, layout, window.h, size.h))

proc fromNative*(_: type gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, image: VkImage, layout: VkImageLayout, window: gen_qquickwindow_types.QQuickWindow, size: gen_qsize_types.QSize, options: cint): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQNativeInterfaceQSGVulkanTexture_fromNative5(image, layout, window.h, size.h, cint(options)))

type QNativeInterfaceQSGVulkanTexturenativeImageProc* = proc(): VkImage
proc onnativeImage*(self: gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, slot: QNativeInterfaceQSGVulkanTexturenativeImageProc) =
  # TODO check subclass
  var tmp = new QNativeInterfaceQSGVulkanTexturenativeImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeInterfaceQSGVulkanTexture_override_virtual_nativeImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeInterface__QSGVulkanTexture_nativeImage(self: ptr cQNativeInterfaceQSGVulkanTexture, slot: int): cVkImage {.exportc: "miqt_exec_callback_QNativeInterface__QSGVulkanTexture_nativeImage ".} =
  var nimfunc = cast[ptr QNativeInterfaceQSGVulkanTexturenativeImageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QNativeInterfaceQSGVulkanTexturenativeImageLayoutProc* = proc(): VkImageLayout
proc onnativeImageLayout*(self: gen_qsgtexture_platform_types.QNativeInterfaceQSGVulkanTexture, slot: QNativeInterfaceQSGVulkanTexturenativeImageLayoutProc) =
  # TODO check subclass
  var tmp = new QNativeInterfaceQSGVulkanTexturenativeImageLayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNativeInterfaceQSGVulkanTexture_override_virtual_nativeImageLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNativeInterface__QSGVulkanTexture_nativeImageLayout(self: ptr cQNativeInterfaceQSGVulkanTexture, slot: int): cVkImageLayout {.exportc: "miqt_exec_callback_QNativeInterface__QSGVulkanTexture_nativeImageLayout ".} =
  var nimfunc = cast[ptr QNativeInterfaceQSGVulkanTexturenativeImageLayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
