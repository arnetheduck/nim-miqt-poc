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
{.compile("gen_qpalette.cpp", cflags).}


type QPaletteColorGroup* = cint
const
  QPaletteActive* = 0
  QPaletteDisabled* = 1
  QPaletteInactive* = 2
  QPaletteNColorGroups* = 3
  QPaletteCurrent* = 4
  QPaletteAll* = 5
  QPaletteNormal* = 0



type QPaletteColorRole* = cint
const
  QPaletteWindowText* = 0
  QPaletteButton* = 1
  QPaletteLight* = 2
  QPaletteMidlight* = 3
  QPaletteDark* = 4
  QPaletteMid* = 5
  QPaletteText* = 6
  QPaletteBrightText* = 7
  QPaletteButtonText* = 8
  QPaletteBase* = 9
  QPaletteWindow* = 10
  QPaletteShadow* = 11
  QPaletteHighlight* = 12
  QPaletteHighlightedText* = 13
  QPaletteLink* = 14
  QPaletteLinkVisited* = 15
  QPaletteAlternateBase* = 16
  QPaletteNoRole* = 17
  QPaletteToolTipBase* = 18
  QPaletteToolTipText* = 19
  QPalettePlaceholderText* = 20
  QPaletteNColorRoles* = 21



import gen_qpalette_types
export gen_qpalette_types

import
  gen_qbrush,
  gen_qcolor,
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qbrush,
  gen_qcolor,
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qvariant

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
proc fcQPalette_staticMetaObject(): pointer {.importc: "QPalette_staticMetaObject".}
proc fcQPalette_delete(self: pointer) {.importc: "QPalette_delete".}


func init*(T: type QPalette, h: ptr cQPalette): QPalette =
  T(h: h)
proc create*(T: type QPalette, ): QPalette =

  QPalette.init(fcQPalette_new())
proc create*(T: type QPalette, button: gen_qcolor.QColor): QPalette =

  QPalette.init(fcQPalette_new2(button.h))
proc create*(T: type QPalette, button: gen_qnamespace.GlobalColor): QPalette =

  QPalette.init(fcQPalette_new3(cint(button)))
proc create*(T: type QPalette, button: gen_qcolor.QColor, window: gen_qcolor.QColor): QPalette =

  QPalette.init(fcQPalette_new4(button.h, window.h))
proc create*(T: type QPalette, windowText: gen_qbrush.QBrush, button: gen_qbrush.QBrush, light: gen_qbrush.QBrush, dark: gen_qbrush.QBrush, mid: gen_qbrush.QBrush, text: gen_qbrush.QBrush, bright_text: gen_qbrush.QBrush, base: gen_qbrush.QBrush, window: gen_qbrush.QBrush): QPalette =

  QPalette.init(fcQPalette_new5(windowText.h, button.h, light.h, dark.h, mid.h, text.h, bright_text.h, base.h, window.h))
proc create*(T: type QPalette, windowText: gen_qcolor.QColor, window: gen_qcolor.QColor, light: gen_qcolor.QColor, dark: gen_qcolor.QColor, mid: gen_qcolor.QColor, text: gen_qcolor.QColor, base: gen_qcolor.QColor): QPalette =

  QPalette.init(fcQPalette_new6(windowText.h, window.h, light.h, dark.h, mid.h, text.h, base.h))
proc create2*(T: type QPalette, palette: QPalette): QPalette =

  QPalette.init(fcQPalette_new7(palette.h))
proc operatorAssign*(self: QPalette, palette: QPalette): void =

  fcQPalette_operatorAssign(self.h, palette.h)

proc swap*(self: QPalette, other: QPalette): void =

  fcQPalette_swap(self.h, other.h)

proc ToQVariant*(self: QPalette, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQPalette_ToQVariant(self.h))

proc currentColorGroup*(self: QPalette, ): QPaletteColorGroup =

  QPaletteColorGroup(fcQPalette_currentColorGroup(self.h))

proc setCurrentColorGroup*(self: QPalette, cg: QPaletteColorGroup): void =

  fcQPalette_setCurrentColorGroup(self.h, cint(cg))

proc color*(self: QPalette, cg: QPaletteColorGroup, cr: QPaletteColorRole): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQPalette_color(self.h, cint(cg), cint(cr)))

proc brush*(self: QPalette, cg: QPaletteColorGroup, cr: QPaletteColorRole): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_brush(self.h, cint(cg), cint(cr)))

proc setColor*(self: QPalette, cg: QPaletteColorGroup, cr: QPaletteColorRole, color: gen_qcolor.QColor): void =

  fcQPalette_setColor(self.h, cint(cg), cint(cr), color.h)

proc setColor2*(self: QPalette, cr: QPaletteColorRole, color: gen_qcolor.QColor): void =

  fcQPalette_setColor2(self.h, cint(cr), color.h)

proc setBrush*(self: QPalette, cr: QPaletteColorRole, brush: gen_qbrush.QBrush): void =

  fcQPalette_setBrush(self.h, cint(cr), brush.h)

proc isBrushSet*(self: QPalette, cg: QPaletteColorGroup, cr: QPaletteColorRole): bool =

  fcQPalette_isBrushSet(self.h, cint(cg), cint(cr))

proc setBrush2*(self: QPalette, cg: QPaletteColorGroup, cr: QPaletteColorRole, brush: gen_qbrush.QBrush): void =

  fcQPalette_setBrush2(self.h, cint(cg), cint(cr), brush.h)

proc setColorGroup*(self: QPalette, cr: QPaletteColorGroup, windowText: gen_qbrush.QBrush, button: gen_qbrush.QBrush, light: gen_qbrush.QBrush, dark: gen_qbrush.QBrush, mid: gen_qbrush.QBrush, text: gen_qbrush.QBrush, bright_text: gen_qbrush.QBrush, base: gen_qbrush.QBrush, window: gen_qbrush.QBrush): void =

  fcQPalette_setColorGroup(self.h, cint(cr), windowText.h, button.h, light.h, dark.h, mid.h, text.h, bright_text.h, base.h, window.h)

proc isEqual*(self: QPalette, cr1: QPaletteColorGroup, cr2: QPaletteColorGroup): bool =

  fcQPalette_isEqual(self.h, cint(cr1), cint(cr2))

proc colorWithCr*(self: QPalette, cr: QPaletteColorRole): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQPalette_colorWithCr(self.h, cint(cr)))

proc brushWithCr*(self: QPalette, cr: QPaletteColorRole): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_brushWithCr(self.h, cint(cr)))

proc windowText*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_windowText(self.h))

proc button*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_button(self.h))

proc light*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_light(self.h))

proc dark*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_dark(self.h))

proc mid*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_mid(self.h))

proc text*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_text(self.h))

proc base*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_base(self.h))

proc alternateBase*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_alternateBase(self.h))

proc toolTipBase*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_toolTipBase(self.h))

proc toolTipText*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_toolTipText(self.h))

proc window*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_window(self.h))

proc midlight*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_midlight(self.h))

proc brightText*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_brightText(self.h))

proc buttonText*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_buttonText(self.h))

proc shadow*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_shadow(self.h))

proc highlight*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_highlight(self.h))

proc highlightedText*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_highlightedText(self.h))

proc link*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_link(self.h))

proc linkVisited*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_linkVisited(self.h))

proc placeholderText*(self: QPalette, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQPalette_placeholderText(self.h))

proc operatorEqual*(self: QPalette, p: QPalette): bool =

  fcQPalette_operatorEqual(self.h, p.h)

proc operatorNotEqual*(self: QPalette, p: QPalette): bool =

  fcQPalette_operatorNotEqual(self.h, p.h)

proc isCopyOf*(self: QPalette, p: QPalette): bool =

  fcQPalette_isCopyOf(self.h, p.h)

proc cacheKey*(self: QPalette, ): clonglong =

  fcQPalette_cacheKey(self.h)

proc resolve*(self: QPalette, other: QPalette): QPalette =

  QPalette(h: fcQPalette_resolve(self.h, other.h))

proc resolveMask*(self: QPalette, ): culonglong =

  fcQPalette_resolveMask(self.h)

proc setResolveMask*(self: QPalette, mask: culonglong): void =

  fcQPalette_setResolveMask(self.h, mask)

proc staticMetaObject*(_: type QPalette): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPalette_staticMetaObject())
proc delete*(self: QPalette) =
  fcQPalette_delete(self.h)
