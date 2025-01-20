import Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config -cflags Qt5PrintSupport")
{.compile("gen_qscistyle.cpp", cflags).}


type QsciStyleTextCaseEnum* = distinct cint
template OriginalCase*(_: type QsciStyleTextCaseEnum): untyped = 0
template UpperCase*(_: type QsciStyleTextCaseEnum): untyped = 1
template LowerCase*(_: type QsciStyleTextCaseEnum): untyped = 2


import gen_qscistyle_types
export gen_qscistyle_types

import
  gen_qcolor,
  gen_qfont,
  gen_qsciscintillabase
export
  gen_qcolor,
  gen_qfont,
  gen_qsciscintillabase

type cQsciStyle*{.exportc: "QsciStyle", incompleteStruct.} = object

proc fcQsciStyle_new(): ptr cQsciStyle {.importc: "QsciStyle_new".}
proc fcQsciStyle_new2(style: cint, description: struct_miqt_string, color: pointer, paper: pointer, font: pointer): ptr cQsciStyle {.importc: "QsciStyle_new2".}
proc fcQsciStyle_new3(param1: pointer): ptr cQsciStyle {.importc: "QsciStyle_new3".}
proc fcQsciStyle_new4(style: cint): ptr cQsciStyle {.importc: "QsciStyle_new4".}
proc fcQsciStyle_new5(style: cint, description: struct_miqt_string, color: pointer, paper: pointer, font: pointer, eolFill: bool): ptr cQsciStyle {.importc: "QsciStyle_new5".}
proc fcQsciStyle_apply(self: pointer, sci: pointer): void {.importc: "QsciStyle_apply".}
proc fcQsciStyle_setStyle(self: pointer, style: cint): void {.importc: "QsciStyle_setStyle".}
proc fcQsciStyle_style(self: pointer, ): cint {.importc: "QsciStyle_style".}
proc fcQsciStyle_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QsciStyle_setDescription".}
proc fcQsciStyle_description(self: pointer, ): struct_miqt_string {.importc: "QsciStyle_description".}
proc fcQsciStyle_setColor(self: pointer, color: pointer): void {.importc: "QsciStyle_setColor".}
proc fcQsciStyle_color(self: pointer, ): pointer {.importc: "QsciStyle_color".}
proc fcQsciStyle_setPaper(self: pointer, paper: pointer): void {.importc: "QsciStyle_setPaper".}
proc fcQsciStyle_paper(self: pointer, ): pointer {.importc: "QsciStyle_paper".}
proc fcQsciStyle_setFont(self: pointer, font: pointer): void {.importc: "QsciStyle_setFont".}
proc fcQsciStyle_font(self: pointer, ): pointer {.importc: "QsciStyle_font".}
proc fcQsciStyle_setEolFill(self: pointer, fill: bool): void {.importc: "QsciStyle_setEolFill".}
proc fcQsciStyle_eolFill(self: pointer, ): bool {.importc: "QsciStyle_eolFill".}
proc fcQsciStyle_setTextCase(self: pointer, text_case: cint): void {.importc: "QsciStyle_setTextCase".}
proc fcQsciStyle_textCase(self: pointer, ): cint {.importc: "QsciStyle_textCase".}
proc fcQsciStyle_setVisible(self: pointer, visible: bool): void {.importc: "QsciStyle_setVisible".}
proc fcQsciStyle_visible(self: pointer, ): bool {.importc: "QsciStyle_visible".}
proc fcQsciStyle_setChangeable(self: pointer, changeable: bool): void {.importc: "QsciStyle_setChangeable".}
proc fcQsciStyle_changeable(self: pointer, ): bool {.importc: "QsciStyle_changeable".}
proc fcQsciStyle_setHotspot(self: pointer, hotspot: bool): void {.importc: "QsciStyle_setHotspot".}
proc fcQsciStyle_hotspot(self: pointer, ): bool {.importc: "QsciStyle_hotspot".}
proc fcQsciStyle_refresh(self: pointer, ): void {.importc: "QsciStyle_refresh".}
proc fcQsciStyle_delete(self: pointer) {.importc: "QsciStyle_delete".}


func init*(T: type gen_qscistyle_types.QsciStyle, h: ptr cQsciStyle): gen_qscistyle_types.QsciStyle =
  T(h: h)
proc create*(T: type gen_qscistyle_types.QsciStyle, ): gen_qscistyle_types.QsciStyle =

  gen_qscistyle_types.QsciStyle.init(fcQsciStyle_new())
proc create*(T: type gen_qscistyle_types.QsciStyle, style: cint, description: string, color: gen_qcolor.QColor, paper: gen_qcolor.QColor, font: gen_qfont.QFont): gen_qscistyle_types.QsciStyle =

  gen_qscistyle_types.QsciStyle.init(fcQsciStyle_new2(style, struct_miqt_string(data: description, len: csize_t(len(description))), color.h, paper.h, font.h))
proc create*(T: type gen_qscistyle_types.QsciStyle, param1: gen_qscistyle_types.QsciStyle): gen_qscistyle_types.QsciStyle =

  gen_qscistyle_types.QsciStyle.init(fcQsciStyle_new3(param1.h))
proc create*(T: type gen_qscistyle_types.QsciStyle, style: cint): gen_qscistyle_types.QsciStyle =

  gen_qscistyle_types.QsciStyle.init(fcQsciStyle_new4(style))
proc create*(T: type gen_qscistyle_types.QsciStyle, style: cint, description: string, color: gen_qcolor.QColor, paper: gen_qcolor.QColor, font: gen_qfont.QFont, eolFill: bool): gen_qscistyle_types.QsciStyle =

  gen_qscistyle_types.QsciStyle.init(fcQsciStyle_new5(style, struct_miqt_string(data: description, len: csize_t(len(description))), color.h, paper.h, font.h, eolFill))
proc apply*(self: gen_qscistyle_types.QsciStyle, sci: gen_qsciscintillabase.QsciScintillaBase): void =

  fcQsciStyle_apply(self.h, sci.h)

proc setStyle*(self: gen_qscistyle_types.QsciStyle, style: cint): void =

  fcQsciStyle_setStyle(self.h, style)

proc style*(self: gen_qscistyle_types.QsciStyle, ): cint =

  fcQsciStyle_style(self.h)

proc setDescription*(self: gen_qscistyle_types.QsciStyle, description: string): void =

  fcQsciStyle_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc description*(self: gen_qscistyle_types.QsciStyle, ): string =

  let v_ms = fcQsciStyle_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setColor*(self: gen_qscistyle_types.QsciStyle, color: gen_qcolor.QColor): void =

  fcQsciStyle_setColor(self.h, color.h)

proc color*(self: gen_qscistyle_types.QsciStyle, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciStyle_color(self.h))

proc setPaper*(self: gen_qscistyle_types.QsciStyle, paper: gen_qcolor.QColor): void =

  fcQsciStyle_setPaper(self.h, paper.h)

proc paper*(self: gen_qscistyle_types.QsciStyle, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQsciStyle_paper(self.h))

proc setFont*(self: gen_qscistyle_types.QsciStyle, font: gen_qfont.QFont): void =

  fcQsciStyle_setFont(self.h, font.h)

proc font*(self: gen_qscistyle_types.QsciStyle, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQsciStyle_font(self.h))

proc setEolFill*(self: gen_qscistyle_types.QsciStyle, fill: bool): void =

  fcQsciStyle_setEolFill(self.h, fill)

proc eolFill*(self: gen_qscistyle_types.QsciStyle, ): bool =

  fcQsciStyle_eolFill(self.h)

proc setTextCase*(self: gen_qscistyle_types.QsciStyle, text_case: cint): void =

  fcQsciStyle_setTextCase(self.h, cint(text_case))

proc textCase*(self: gen_qscistyle_types.QsciStyle, ): cint =

  cint(fcQsciStyle_textCase(self.h))

proc setVisible*(self: gen_qscistyle_types.QsciStyle, visible: bool): void =

  fcQsciStyle_setVisible(self.h, visible)

proc visible*(self: gen_qscistyle_types.QsciStyle, ): bool =

  fcQsciStyle_visible(self.h)

proc setChangeable*(self: gen_qscistyle_types.QsciStyle, changeable: bool): void =

  fcQsciStyle_setChangeable(self.h, changeable)

proc changeable*(self: gen_qscistyle_types.QsciStyle, ): bool =

  fcQsciStyle_changeable(self.h)

proc setHotspot*(self: gen_qscistyle_types.QsciStyle, hotspot: bool): void =

  fcQsciStyle_setHotspot(self.h, hotspot)

proc hotspot*(self: gen_qscistyle_types.QsciStyle, ): bool =

  fcQsciStyle_hotspot(self.h)

proc refresh*(self: gen_qscistyle_types.QsciStyle, ): void =

  fcQsciStyle_refresh(self.h)

proc delete*(self: gen_qscistyle_types.QsciStyle) =
  fcQsciStyle_delete(self.h)
