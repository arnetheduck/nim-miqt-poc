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
{.compile("gen_qsurfaceformat.cpp", cflags).}


type QSurfaceFormatFormatOption* = cint
const
  QSurfaceFormatStereoBuffers* = 1
  QSurfaceFormatDebugContext* = 2
  QSurfaceFormatDeprecatedFunctions* = 4
  QSurfaceFormatResetNotification* = 8



type QSurfaceFormatSwapBehavior* = cint
const
  QSurfaceFormatDefaultSwapBehavior* = 0
  QSurfaceFormatSingleBuffer* = 1
  QSurfaceFormatDoubleBuffer* = 2
  QSurfaceFormatTripleBuffer* = 3



type QSurfaceFormatRenderableType* = cint
const
  QSurfaceFormatDefaultRenderableType* = 0
  QSurfaceFormatOpenGL* = 1
  QSurfaceFormatOpenGLES* = 2
  QSurfaceFormatOpenVG* = 4



type QSurfaceFormatOpenGLContextProfile* = cint
const
  QSurfaceFormatNoProfile* = 0
  QSurfaceFormatCoreProfile* = 1
  QSurfaceFormatCompatibilityProfile* = 2



type QSurfaceFormatColorSpace* = cint
const
  QSurfaceFormatDefaultColorSpace* = 0
  QSurfaceFormatsRGBColorSpace* = 1



import gen_qsurfaceformat_types
export gen_qsurfaceformat_types

import
  gen_qobjectdefs
export
  gen_qobjectdefs

type cQSurfaceFormat*{.exportc: "QSurfaceFormat", incompleteStruct.} = object

proc fcQSurfaceFormat_new(): ptr cQSurfaceFormat {.importc: "QSurfaceFormat_new".}
proc fcQSurfaceFormat_new2(options: cint): ptr cQSurfaceFormat {.importc: "QSurfaceFormat_new2".}
proc fcQSurfaceFormat_new3(other: pointer): ptr cQSurfaceFormat {.importc: "QSurfaceFormat_new3".}
proc fcQSurfaceFormat_operatorAssign(self: pointer, other: pointer): void {.importc: "QSurfaceFormat_operatorAssign".}
proc fcQSurfaceFormat_setDepthBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setDepthBufferSize".}
proc fcQSurfaceFormat_depthBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_depthBufferSize".}
proc fcQSurfaceFormat_setStencilBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setStencilBufferSize".}
proc fcQSurfaceFormat_stencilBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_stencilBufferSize".}
proc fcQSurfaceFormat_setRedBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setRedBufferSize".}
proc fcQSurfaceFormat_redBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_redBufferSize".}
proc fcQSurfaceFormat_setGreenBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setGreenBufferSize".}
proc fcQSurfaceFormat_greenBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_greenBufferSize".}
proc fcQSurfaceFormat_setBlueBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setBlueBufferSize".}
proc fcQSurfaceFormat_blueBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_blueBufferSize".}
proc fcQSurfaceFormat_setAlphaBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setAlphaBufferSize".}
proc fcQSurfaceFormat_alphaBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_alphaBufferSize".}
proc fcQSurfaceFormat_setSamples(self: pointer, numSamples: cint): void {.importc: "QSurfaceFormat_setSamples".}
proc fcQSurfaceFormat_samples(self: pointer, ): cint {.importc: "QSurfaceFormat_samples".}
proc fcQSurfaceFormat_setSwapBehavior(self: pointer, behavior: cint): void {.importc: "QSurfaceFormat_setSwapBehavior".}
proc fcQSurfaceFormat_swapBehavior(self: pointer, ): cint {.importc: "QSurfaceFormat_swapBehavior".}
proc fcQSurfaceFormat_hasAlpha(self: pointer, ): bool {.importc: "QSurfaceFormat_hasAlpha".}
proc fcQSurfaceFormat_setProfile(self: pointer, profile: cint): void {.importc: "QSurfaceFormat_setProfile".}
proc fcQSurfaceFormat_profile(self: pointer, ): cint {.importc: "QSurfaceFormat_profile".}
proc fcQSurfaceFormat_setRenderableType(self: pointer, typeVal: cint): void {.importc: "QSurfaceFormat_setRenderableType".}
proc fcQSurfaceFormat_renderableType(self: pointer, ): cint {.importc: "QSurfaceFormat_renderableType".}
proc fcQSurfaceFormat_setMajorVersion(self: pointer, majorVersion: cint): void {.importc: "QSurfaceFormat_setMajorVersion".}
proc fcQSurfaceFormat_majorVersion(self: pointer, ): cint {.importc: "QSurfaceFormat_majorVersion".}
proc fcQSurfaceFormat_setMinorVersion(self: pointer, minorVersion: cint): void {.importc: "QSurfaceFormat_setMinorVersion".}
proc fcQSurfaceFormat_minorVersion(self: pointer, ): cint {.importc: "QSurfaceFormat_minorVersion".}
proc fcQSurfaceFormat_version(self: pointer, ): struct_miqt_map {.importc: "QSurfaceFormat_version".}
proc fcQSurfaceFormat_setVersion(self: pointer, major: cint, minor: cint): void {.importc: "QSurfaceFormat_setVersion".}
proc fcQSurfaceFormat_stereo(self: pointer, ): bool {.importc: "QSurfaceFormat_stereo".}
proc fcQSurfaceFormat_setStereo(self: pointer, enable: bool): void {.importc: "QSurfaceFormat_setStereo".}
proc fcQSurfaceFormat_setOption(self: pointer, opt: cint): void {.importc: "QSurfaceFormat_setOption".}
proc fcQSurfaceFormat_testOption(self: pointer, opt: cint): bool {.importc: "QSurfaceFormat_testOption".}
proc fcQSurfaceFormat_setOptions(self: pointer, options: cint): void {.importc: "QSurfaceFormat_setOptions".}
proc fcQSurfaceFormat_setOptionWithOption(self: pointer, option: cint): void {.importc: "QSurfaceFormat_setOptionWithOption".}
proc fcQSurfaceFormat_testOptionWithOption(self: pointer, option: cint): bool {.importc: "QSurfaceFormat_testOptionWithOption".}
proc fcQSurfaceFormat_options(self: pointer, ): cint {.importc: "QSurfaceFormat_options".}
proc fcQSurfaceFormat_swapInterval(self: pointer, ): cint {.importc: "QSurfaceFormat_swapInterval".}
proc fcQSurfaceFormat_setSwapInterval(self: pointer, interval: cint): void {.importc: "QSurfaceFormat_setSwapInterval".}
proc fcQSurfaceFormat_colorSpace(self: pointer, ): cint {.importc: "QSurfaceFormat_colorSpace".}
proc fcQSurfaceFormat_setColorSpace(self: pointer, colorSpace: cint): void {.importc: "QSurfaceFormat_setColorSpace".}
proc fcQSurfaceFormat_setDefaultFormat(format: pointer): void {.importc: "QSurfaceFormat_setDefaultFormat".}
proc fcQSurfaceFormat_defaultFormat(): pointer {.importc: "QSurfaceFormat_defaultFormat".}
proc fcQSurfaceFormat_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QSurfaceFormat_setOption2".}
proc fcQSurfaceFormat_staticMetaObject(): pointer {.importc: "QSurfaceFormat_staticMetaObject".}
proc fcQSurfaceFormat_delete(self: pointer) {.importc: "QSurfaceFormat_delete".}


func init*(T: type QSurfaceFormat, h: ptr cQSurfaceFormat): QSurfaceFormat =
  T(h: h)
proc create*(T: type QSurfaceFormat, ): QSurfaceFormat =

  QSurfaceFormat.init(fcQSurfaceFormat_new())
proc create*(T: type QSurfaceFormat, options: QSurfaceFormatFormatOption): QSurfaceFormat =

  QSurfaceFormat.init(fcQSurfaceFormat_new2(cint(options)))
proc create*(T: type QSurfaceFormat, other: QSurfaceFormat): QSurfaceFormat =

  QSurfaceFormat.init(fcQSurfaceFormat_new3(other.h))
proc operatorAssign*(self: QSurfaceFormat, other: QSurfaceFormat): void =

  fcQSurfaceFormat_operatorAssign(self.h, other.h)

proc setDepthBufferSize*(self: QSurfaceFormat, size: cint): void =

  fcQSurfaceFormat_setDepthBufferSize(self.h, size)

proc depthBufferSize*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_depthBufferSize(self.h)

proc setStencilBufferSize*(self: QSurfaceFormat, size: cint): void =

  fcQSurfaceFormat_setStencilBufferSize(self.h, size)

proc stencilBufferSize*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_stencilBufferSize(self.h)

proc setRedBufferSize*(self: QSurfaceFormat, size: cint): void =

  fcQSurfaceFormat_setRedBufferSize(self.h, size)

proc redBufferSize*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_redBufferSize(self.h)

proc setGreenBufferSize*(self: QSurfaceFormat, size: cint): void =

  fcQSurfaceFormat_setGreenBufferSize(self.h, size)

proc greenBufferSize*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_greenBufferSize(self.h)

proc setBlueBufferSize*(self: QSurfaceFormat, size: cint): void =

  fcQSurfaceFormat_setBlueBufferSize(self.h, size)

proc blueBufferSize*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_blueBufferSize(self.h)

proc setAlphaBufferSize*(self: QSurfaceFormat, size: cint): void =

  fcQSurfaceFormat_setAlphaBufferSize(self.h, size)

proc alphaBufferSize*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_alphaBufferSize(self.h)

proc setSamples*(self: QSurfaceFormat, numSamples: cint): void =

  fcQSurfaceFormat_setSamples(self.h, numSamples)

proc samples*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_samples(self.h)

proc setSwapBehavior*(self: QSurfaceFormat, behavior: QSurfaceFormatSwapBehavior): void =

  fcQSurfaceFormat_setSwapBehavior(self.h, cint(behavior))

proc swapBehavior*(self: QSurfaceFormat, ): QSurfaceFormatSwapBehavior =

  QSurfaceFormatSwapBehavior(fcQSurfaceFormat_swapBehavior(self.h))

proc hasAlpha*(self: QSurfaceFormat, ): bool =

  fcQSurfaceFormat_hasAlpha(self.h)

proc setProfile*(self: QSurfaceFormat, profile: QSurfaceFormatOpenGLContextProfile): void =

  fcQSurfaceFormat_setProfile(self.h, cint(profile))

proc profile*(self: QSurfaceFormat, ): QSurfaceFormatOpenGLContextProfile =

  QSurfaceFormatOpenGLContextProfile(fcQSurfaceFormat_profile(self.h))

proc setRenderableType*(self: QSurfaceFormat, typeVal: QSurfaceFormatRenderableType): void =

  fcQSurfaceFormat_setRenderableType(self.h, cint(typeVal))

proc renderableType*(self: QSurfaceFormat, ): QSurfaceFormatRenderableType =

  QSurfaceFormatRenderableType(fcQSurfaceFormat_renderableType(self.h))

proc setMajorVersion*(self: QSurfaceFormat, majorVersion: cint): void =

  fcQSurfaceFormat_setMajorVersion(self.h, majorVersion)

proc majorVersion*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_majorVersion(self.h)

proc setMinorVersion*(self: QSurfaceFormat, minorVersion: cint): void =

  fcQSurfaceFormat_setMinorVersion(self.h, minorVersion)

proc minorVersion*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_minorVersion(self.h)

proc version*(self: QSurfaceFormat, ): tuple[first: cint, second: cint] =

  var v_mm = fcQSurfaceFormat_version(self.h)
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc setVersion*(self: QSurfaceFormat, major: cint, minor: cint): void =

  fcQSurfaceFormat_setVersion(self.h, major, minor)

proc stereo*(self: QSurfaceFormat, ): bool =

  fcQSurfaceFormat_stereo(self.h)

proc setStereo*(self: QSurfaceFormat, enable: bool): void =

  fcQSurfaceFormat_setStereo(self.h, enable)

proc setOption*(self: QSurfaceFormat, opt: QSurfaceFormatFormatOption): void =

  fcQSurfaceFormat_setOption(self.h, cint(opt))

proc testOption*(self: QSurfaceFormat, opt: QSurfaceFormatFormatOption): bool =

  fcQSurfaceFormat_testOption(self.h, cint(opt))

proc setOptions*(self: QSurfaceFormat, options: QSurfaceFormatFormatOption): void =

  fcQSurfaceFormat_setOptions(self.h, cint(options))

proc setOptionWithOption*(self: QSurfaceFormat, option: QSurfaceFormatFormatOption): void =

  fcQSurfaceFormat_setOptionWithOption(self.h, cint(option))

proc testOptionWithOption*(self: QSurfaceFormat, option: QSurfaceFormatFormatOption): bool =

  fcQSurfaceFormat_testOptionWithOption(self.h, cint(option))

proc options*(self: QSurfaceFormat, ): QSurfaceFormatFormatOption =

  QSurfaceFormatFormatOption(fcQSurfaceFormat_options(self.h))

proc swapInterval*(self: QSurfaceFormat, ): cint =

  fcQSurfaceFormat_swapInterval(self.h)

proc setSwapInterval*(self: QSurfaceFormat, interval: cint): void =

  fcQSurfaceFormat_setSwapInterval(self.h, interval)

proc colorSpace*(self: QSurfaceFormat, ): QSurfaceFormatColorSpace =

  QSurfaceFormatColorSpace(fcQSurfaceFormat_colorSpace(self.h))

proc setColorSpace*(self: QSurfaceFormat, colorSpace: QSurfaceFormatColorSpace): void =

  fcQSurfaceFormat_setColorSpace(self.h, cint(colorSpace))

proc setDefaultFormat*(_: type QSurfaceFormat, format: QSurfaceFormat): void =

  fcQSurfaceFormat_setDefaultFormat(format.h)

proc defaultFormat*(_: type QSurfaceFormat, ): QSurfaceFormat =

  QSurfaceFormat(h: fcQSurfaceFormat_defaultFormat())

proc setOption2*(self: QSurfaceFormat, option: QSurfaceFormatFormatOption, on: bool): void =

  fcQSurfaceFormat_setOption2(self.h, cint(option), on)

proc staticMetaObject*(_: type QSurfaceFormat): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSurfaceFormat_staticMetaObject())
proc delete*(self: QSurfaceFormat) =
  fcQSurfaceFormat_delete(self.h)
