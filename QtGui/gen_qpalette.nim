import Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")
{.compile("gen_qpalette.cpp", cflags).}


type QPaletteColorGroupEnum* = distinct cint
template Active*(_: type QPaletteColorGroupEnum): untyped = 0
template Disabled*(_: type QPaletteColorGroupEnum): untyped = 1
template Inactive*(_: type QPaletteColorGroupEnum): untyped = 2
template NColorGroups*(_: type QPaletteColorGroupEnum): untyped = 3
template Current*(_: type QPaletteColorGroupEnum): untyped = 4
template All*(_: type QPaletteColorGroupEnum): untyped = 5
template Normal*(_: type QPaletteColorGroupEnum): untyped = 0


type QPaletteColorRoleEnum* = distinct cint
template WindowText*(_: type QPaletteColorRoleEnum): untyped = 0
template Button*(_: type QPaletteColorRoleEnum): untyped = 1
template Light*(_: type QPaletteColorRoleEnum): untyped = 2
template Midlight*(_: type QPaletteColorRoleEnum): untyped = 3
template Dark*(_: type QPaletteColorRoleEnum): untyped = 4
template Mid*(_: type QPaletteColorRoleEnum): untyped = 5
template Text*(_: type QPaletteColorRoleEnum): untyped = 6
template BrightText*(_: type QPaletteColorRoleEnum): untyped = 7
template ButtonText*(_: type QPaletteColorRoleEnum): untyped = 8
template Base*(_: type QPaletteColorRoleEnum): untyped = 9
template Window*(_: type QPaletteColorRoleEnum): untyped = 10
template Shadow*(_: type QPaletteColorRoleEnum): untyped = 11
template Highlight*(_: type QPaletteColorRoleEnum): untyped = 12
template HighlightedText*(_: type QPaletteColorRoleEnum): untyped = 13
template Link*(_: type QPaletteColorRoleEnum): untyped = 14
template LinkVisited*(_: type QPaletteColorRoleEnum): untyped = 15
template AlternateBase*(_: type QPaletteColorRoleEnum): untyped = 16
template NoRole*(_: type QPaletteColorRoleEnum): untyped = 17
template ToolTipBase*(_: type QPaletteColorRoleEnum): untyped = 18
template ToolTipText*(_: type QPaletteColorRoleEnum): untyped = 19
template PlaceholderText*(_: type QPaletteColorRoleEnum): untyped = 20
template NColorRoles*(_: type QPaletteColorRoleEnum): untyped = 21


import gen_qpalette_types
export gen_qpalette_types

import
  gen_qbrush_types,
  gen_qcolor_types,
  gen_qvariant_types
export
  gen_qbrush_types,
  gen_qcolor_types,
  gen_qvariant_types

type cQPalette*{.exportc: "QPalette", incompleteStruct.} = object

proc fcQPalette_new(): ptr cQPalette {.importc: "QPalette_new".}
proc fcQPalette_new2(button: pointer): ptr cQPalette {.importc: "QPalette_new2".}
proc fcQPalette_new3(button: cint): ptr cQPalette {.importc: "QPalette_new3".}
proc fcQPalette_new4(button: pointer, window: pointer): ptr cQPalette {.importc: "QPalette_new4".}
proc fcQPalette_new5(windowText: pointer, button: pointer, light: pointer, dark: pointer, mid: pointer, text: pointer, bright_text: pointer, base: pointer, window: pointer): ptr cQPalette {.importc: "QPalette_new5".}
proc fcQPalette_new6(windowText: pointer, window: pointer, light: pointer, dark: pointer, mid: pointer, text: pointer, base: pointer): ptr cQPalette {.importc: "QPalette_new6".}
proc fcQPalette_new7(palette: pointer): ptr cQPalette {.importc: "QPalette_new7".}
proc fcQPalette_operatorAssign(self: pointer, palette: pointer): void {.importc: "QPalette_operatorAssign".}
proc fcQPalette_swap(self: pointer, other: pointer): void {.importc: "QPalette_swap".}
proc fcQPalette_ToQVariant(self: pointer, ): pointer {.importc: "QPalette_ToQVariant".}
proc fcQPalette_currentColorGroup(self: pointer, ): cint {.importc: "QPalette_currentColorGroup".}
proc fcQPalette_setCurrentColorGroup(self: pointer, cg: cint): void {.importc: "QPalette_setCurrentColorGroup".}
proc fcQPalette_color(self: pointer, cg: cint, cr: cint): pointer {.importc: "QPalette_color".}
proc fcQPalette_brush(self: pointer, cg: cint, cr: cint): pointer {.importc: "QPalette_brush".}
proc fcQPalette_setColor(self: pointer, cg: cint, cr: cint, color: pointer): void {.importc: "QPalette_setColor".}
proc fcQPalette_setColor2(self: pointer, cr: cint, color: pointer): void {.importc: "QPalette_setColor2".}
proc fcQPalette_setBrush(self: pointer, cr: cint, brush: pointer): void {.importc: "QPalette_setBrush".}
proc fcQPalette_isBrushSet(self: pointer, cg: cint, cr: cint): bool {.importc: "QPalette_isBrushSet".}
proc fcQPalette_setBrush2(self: pointer, cg: cint, cr: cint, brush: pointer): void {.importc: "QPalette_setBrush2".}
proc fcQPalette_setColorGroup(self: pointer, cr: cint, windowText: pointer, button: pointer, light: pointer, dark: pointer, mid: pointer, text: pointer, bright_text: pointer, base: pointer, window: pointer): void {.importc: "QPalette_setColorGroup".}
proc fcQPalette_isEqual(self: pointer, cr1: cint, cr2: cint): bool {.importc: "QPalette_isEqual".}
proc fcQPalette_colorWithCr(self: pointer, cr: cint): pointer {.importc: "QPalette_colorWithCr".}
proc fcQPalette_brushWithCr(self: pointer, cr: cint): pointer {.importc: "QPalette_brushWithCr".}
proc fcQPalette_windowText(self: pointer, ): pointer {.importc: "QPalette_windowText".}
proc fcQPalette_button(self: pointer, ): pointer {.importc: "QPalette_button".}
proc fcQPalette_light(self: pointer, ): pointer {.importc: "QPalette_light".}
proc fcQPalette_dark(self: pointer, ): pointer {.importc: "QPalette_dark".}
proc fcQPalette_mid(self: pointer, ): pointer {.importc: "QPalette_mid".}
proc fcQPalette_text(self: pointer, ): pointer {.importc: "QPalette_text".}
proc fcQPalette_base(self: pointer, ): pointer {.importc: "QPalette_base".}
proc fcQPalette_alternateBase(self: pointer, ): pointer {.importc: "QPalette_alternateBase".}
proc fcQPalette_toolTipBase(self: pointer, ): pointer {.importc: "QPalette_toolTipBase".}
proc fcQPalette_toolTipText(self: pointer, ): pointer {.importc: "QPalette_toolTipText".}
proc fcQPalette_window(self: pointer, ): pointer {.importc: "QPalette_window".}
proc fcQPalette_midlight(self: pointer, ): pointer {.importc: "QPalette_midlight".}
proc fcQPalette_brightText(self: pointer, ): pointer {.importc: "QPalette_brightText".}
proc fcQPalette_buttonText(self: pointer, ): pointer {.importc: "QPalette_buttonText".}
proc fcQPalette_shadow(self: pointer, ): pointer {.importc: "QPalette_shadow".}
proc fcQPalette_highlight(self: pointer, ): pointer {.importc: "QPalette_highlight".}
proc fcQPalette_highlightedText(self: pointer, ): pointer {.importc: "QPalette_highlightedText".}
proc fcQPalette_link(self: pointer, ): pointer {.importc: "QPalette_link".}
proc fcQPalette_linkVisited(self: pointer, ): pointer {.importc: "QPalette_linkVisited".}
proc fcQPalette_placeholderText(self: pointer, ): pointer {.importc: "QPalette_placeholderText".}
proc fcQPalette_operatorEqual(self: pointer, p: pointer): bool {.importc: "QPalette_operatorEqual".}
proc fcQPalette_operatorNotEqual(self: pointer, p: pointer): bool {.importc: "QPalette_operatorNotEqual".}
proc fcQPalette_isCopyOf(self: pointer, p: pointer): bool {.importc: "QPalette_isCopyOf".}
proc fcQPalette_cacheKey(self: pointer, ): clonglong {.importc: "QPalette_cacheKey".}
proc fcQPalette_resolve(self: pointer, other: pointer): pointer {.importc: "QPalette_resolve".}
proc fcQPalette_resolveMask(self: pointer, ): culonglong {.importc: "QPalette_resolveMask".}
proc fcQPalette_setResolveMask(self: pointer, mask: culonglong): void {.importc: "QPalette_setResolveMask".}
proc fcQPalette_delete(self: pointer) {.importc: "QPalette_delete".}


func init*(T: type gen_qpalette_types.QPalette, h: ptr cQPalette): gen_qpalette_types.QPalette =
  T(h: h)
proc create*(T: type gen_qpalette_types.QPalette, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette.init(fcQPalette_new())

proc create*(T: type gen_qpalette_types.QPalette, button: gen_qcolor_types.QColor): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette.init(fcQPalette_new2(button.h))

proc create*(T: type gen_qpalette_types.QPalette, button: cint): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette.init(fcQPalette_new3(cint(button)))

proc create*(T: type gen_qpalette_types.QPalette, button: gen_qcolor_types.QColor, window: gen_qcolor_types.QColor): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette.init(fcQPalette_new4(button.h, window.h))

proc create*(T: type gen_qpalette_types.QPalette, windowText: gen_qbrush_types.QBrush, button: gen_qbrush_types.QBrush, light: gen_qbrush_types.QBrush, dark: gen_qbrush_types.QBrush, mid: gen_qbrush_types.QBrush, text: gen_qbrush_types.QBrush, bright_text: gen_qbrush_types.QBrush, base: gen_qbrush_types.QBrush, window: gen_qbrush_types.QBrush): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette.init(fcQPalette_new5(windowText.h, button.h, light.h, dark.h, mid.h, text.h, bright_text.h, base.h, window.h))

proc create*(T: type gen_qpalette_types.QPalette, windowText: gen_qcolor_types.QColor, window: gen_qcolor_types.QColor, light: gen_qcolor_types.QColor, dark: gen_qcolor_types.QColor, mid: gen_qcolor_types.QColor, text: gen_qcolor_types.QColor, base: gen_qcolor_types.QColor): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette.init(fcQPalette_new6(windowText.h, window.h, light.h, dark.h, mid.h, text.h, base.h))

proc create*(T: type gen_qpalette_types.QPalette, palette: gen_qpalette_types.QPalette): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette.init(fcQPalette_new7(palette.h))

proc operatorAssign*(self: gen_qpalette_types.QPalette, palette: gen_qpalette_types.QPalette): void =
  fcQPalette_operatorAssign(self.h, palette.h)

proc swap*(self: gen_qpalette_types.QPalette, other: gen_qpalette_types.QPalette): void =
  fcQPalette_swap(self.h, other.h)

proc ToQVariant*(self: gen_qpalette_types.QPalette, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPalette_ToQVariant(self.h))

proc currentColorGroup*(self: gen_qpalette_types.QPalette, ): cint =
  cint(fcQPalette_currentColorGroup(self.h))

proc setCurrentColorGroup*(self: gen_qpalette_types.QPalette, cg: cint): void =
  fcQPalette_setCurrentColorGroup(self.h, cint(cg))

proc color*(self: gen_qpalette_types.QPalette, cg: cint, cr: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQPalette_color(self.h, cint(cg), cint(cr)))

proc brush*(self: gen_qpalette_types.QPalette, cg: cint, cr: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_brush(self.h, cint(cg), cint(cr)))

proc setColor*(self: gen_qpalette_types.QPalette, cg: cint, cr: cint, color: gen_qcolor_types.QColor): void =
  fcQPalette_setColor(self.h, cint(cg), cint(cr), color.h)

proc setColor*(self: gen_qpalette_types.QPalette, cr: cint, color: gen_qcolor_types.QColor): void =
  fcQPalette_setColor2(self.h, cint(cr), color.h)

proc setBrush*(self: gen_qpalette_types.QPalette, cr: cint, brush: gen_qbrush_types.QBrush): void =
  fcQPalette_setBrush(self.h, cint(cr), brush.h)

proc isBrushSet*(self: gen_qpalette_types.QPalette, cg: cint, cr: cint): bool =
  fcQPalette_isBrushSet(self.h, cint(cg), cint(cr))

proc setBrush*(self: gen_qpalette_types.QPalette, cg: cint, cr: cint, brush: gen_qbrush_types.QBrush): void =
  fcQPalette_setBrush2(self.h, cint(cg), cint(cr), brush.h)

proc setColorGroup*(self: gen_qpalette_types.QPalette, cr: cint, windowText: gen_qbrush_types.QBrush, button: gen_qbrush_types.QBrush, light: gen_qbrush_types.QBrush, dark: gen_qbrush_types.QBrush, mid: gen_qbrush_types.QBrush, text: gen_qbrush_types.QBrush, bright_text: gen_qbrush_types.QBrush, base: gen_qbrush_types.QBrush, window: gen_qbrush_types.QBrush): void =
  fcQPalette_setColorGroup(self.h, cint(cr), windowText.h, button.h, light.h, dark.h, mid.h, text.h, bright_text.h, base.h, window.h)

proc isEqual*(self: gen_qpalette_types.QPalette, cr1: cint, cr2: cint): bool =
  fcQPalette_isEqual(self.h, cint(cr1), cint(cr2))

proc color*(self: gen_qpalette_types.QPalette, cr: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQPalette_colorWithCr(self.h, cint(cr)))

proc brush*(self: gen_qpalette_types.QPalette, cr: cint): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_brushWithCr(self.h, cint(cr)))

proc windowText*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_windowText(self.h))

proc button*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_button(self.h))

proc light*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_light(self.h))

proc dark*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_dark(self.h))

proc mid*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_mid(self.h))

proc text*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_text(self.h))

proc base*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_base(self.h))

proc alternateBase*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_alternateBase(self.h))

proc toolTipBase*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_toolTipBase(self.h))

proc toolTipText*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_toolTipText(self.h))

proc window*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_window(self.h))

proc midlight*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_midlight(self.h))

proc brightText*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_brightText(self.h))

proc buttonText*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_buttonText(self.h))

proc shadow*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_shadow(self.h))

proc highlight*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_highlight(self.h))

proc highlightedText*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_highlightedText(self.h))

proc link*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_link(self.h))

proc linkVisited*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_linkVisited(self.h))

proc placeholderText*(self: gen_qpalette_types.QPalette, ): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQPalette_placeholderText(self.h))

proc operatorEqual*(self: gen_qpalette_types.QPalette, p: gen_qpalette_types.QPalette): bool =
  fcQPalette_operatorEqual(self.h, p.h)

proc operatorNotEqual*(self: gen_qpalette_types.QPalette, p: gen_qpalette_types.QPalette): bool =
  fcQPalette_operatorNotEqual(self.h, p.h)

proc isCopyOf*(self: gen_qpalette_types.QPalette, p: gen_qpalette_types.QPalette): bool =
  fcQPalette_isCopyOf(self.h, p.h)

proc cacheKey*(self: gen_qpalette_types.QPalette, ): clonglong =
  fcQPalette_cacheKey(self.h)

proc resolve*(self: gen_qpalette_types.QPalette, other: gen_qpalette_types.QPalette): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQPalette_resolve(self.h, other.h))

proc resolveMask*(self: gen_qpalette_types.QPalette, ): culonglong =
  fcQPalette_resolveMask(self.h)

proc setResolveMask*(self: gen_qpalette_types.QPalette, mask: culonglong): void =
  fcQPalette_setResolveMask(self.h, mask)

proc delete*(self: gen_qpalette_types.QPalette) =
  fcQPalette_delete(self.h)
