import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qsgrendererinterface.cpp", cflags).}


type QSGRendererInterfaceGraphicsApi* = cint
const
  QSGRendererInterfaceUnknown* = 0
  QSGRendererInterfaceSoftware* = 1
  QSGRendererInterfaceOpenGL* = 2
  QSGRendererInterfaceDirect3D12* = 3
  QSGRendererInterfaceOpenVG* = 4
  QSGRendererInterfaceOpenGLRhi* = 5
  QSGRendererInterfaceDirect3D11Rhi* = 6
  QSGRendererInterfaceVulkanRhi* = 7
  QSGRendererInterfaceMetalRhi* = 8
  QSGRendererInterfaceNullRhi* = 9



type QSGRendererInterfaceResource* = cint
const
  QSGRendererInterfaceDeviceResource* = 0
  QSGRendererInterfaceCommandQueueResource* = 1
  QSGRendererInterfaceCommandListResource* = 2
  QSGRendererInterfacePainterResource* = 3
  QSGRendererInterfaceRhiResource* = 4
  QSGRendererInterfacePhysicalDeviceResource* = 5
  QSGRendererInterfaceOpenGLContextResource* = 6
  QSGRendererInterfaceDeviceContextResource* = 7
  QSGRendererInterfaceCommandEncoderResource* = 8
  QSGRendererInterfaceVulkanInstanceResource* = 9
  QSGRendererInterfaceRenderPassResource* = 10



type QSGRendererInterfaceShaderType* = cint
const
  QSGRendererInterfaceUnknownShadingLanguage* = 0
  QSGRendererInterfaceGLSL* = 1
  QSGRendererInterfaceHLSL* = 2
  QSGRendererInterfaceRhiShader* = 3



type QSGRendererInterfaceShaderCompilationType* = cint
const
  QSGRendererInterfaceRuntimeCompilation* = 1
  QSGRendererInterfaceOfflineCompilation* = 2



type QSGRendererInterfaceShaderSourceType* = cint
const
  QSGRendererInterfaceShaderSourceString* = 1
  QSGRendererInterfaceShaderSourceFile* = 2
  QSGRendererInterfaceShaderByteCode* = 4



import gen_qsgrendererinterface_types
export gen_qsgrendererinterface_types

import
  gen_qquickwindow
export
  gen_qquickwindow

type cQSGRendererInterface*{.exportc: "QSGRendererInterface", incompleteStruct.} = object

proc fcQSGRendererInterface_graphicsApi(self: pointer, ): cint {.importc: "QSGRendererInterface_graphicsApi".}
proc fcQSGRendererInterface_getResource(self: pointer, window: pointer, resource: cint): pointer {.importc: "QSGRendererInterface_getResource".}
proc fcQSGRendererInterface_getResource2(self: pointer, window: pointer, resource: cstring): pointer {.importc: "QSGRendererInterface_getResource2".}
proc fcQSGRendererInterface_shaderType(self: pointer, ): cint {.importc: "QSGRendererInterface_shaderType".}
proc fcQSGRendererInterface_shaderCompilationType(self: pointer, ): cint {.importc: "QSGRendererInterface_shaderCompilationType".}
proc fcQSGRendererInterface_shaderSourceType(self: pointer, ): cint {.importc: "QSGRendererInterface_shaderSourceType".}
proc fcQSGRendererInterface_isApiRhiBased(api: cint): bool {.importc: "QSGRendererInterface_isApiRhiBased".}
proc fcQSGRendererInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGRendererInterface_operatorAssign".}
proc fcQSGRendererInterface_delete(self: pointer) {.importc: "QSGRendererInterface_delete".}


func init*(T: type QSGRendererInterface, h: ptr cQSGRendererInterface): QSGRendererInterface =
  T(h: h)
proc graphicsApi*(self: QSGRendererInterface, ): QSGRendererInterfaceGraphicsApi =

  QSGRendererInterfaceGraphicsApi(fcQSGRendererInterface_graphicsApi(self.h))

proc getResource*(self: QSGRendererInterface, window: gen_qquickwindow.QQuickWindow, resource: QSGRendererInterfaceResource): pointer =

  fcQSGRendererInterface_getResource(self.h, window.h, cint(resource))

proc getResource2*(self: QSGRendererInterface, window: gen_qquickwindow.QQuickWindow, resource: cstring): pointer =

  fcQSGRendererInterface_getResource2(self.h, window.h, resource)

proc shaderType*(self: QSGRendererInterface, ): QSGRendererInterfaceShaderType =

  QSGRendererInterfaceShaderType(fcQSGRendererInterface_shaderType(self.h))

proc shaderCompilationType*(self: QSGRendererInterface, ): QSGRendererInterfaceShaderCompilationType =

  QSGRendererInterfaceShaderCompilationType(fcQSGRendererInterface_shaderCompilationType(self.h))

proc shaderSourceType*(self: QSGRendererInterface, ): QSGRendererInterfaceShaderSourceType =

  QSGRendererInterfaceShaderSourceType(fcQSGRendererInterface_shaderSourceType(self.h))

proc isApiRhiBased*(_: type QSGRendererInterface, api: QSGRendererInterfaceGraphicsApi): bool =

  fcQSGRendererInterface_isApiRhiBased(cint(api))

proc operatorAssign*(self: QSGRendererInterface, param1: QSGRendererInterface): void =

  fcQSGRendererInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QSGRendererInterface) =
  fcQSGRendererInterface_delete(self.h)
