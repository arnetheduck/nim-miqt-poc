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
{.compile("gen_qaccessiblewidget.cpp", cflags).}


import gen_qaccessiblewidget_types
export gen_qaccessiblewidget_types

import
  gen_qaccessible,
  gen_qaccessible_base,
  gen_qaccessibleobject,
  gen_qcolor,
  gen_qrect,
  gen_qwidget,
  gen_qwindow
export
  gen_qaccessible,
  gen_qaccessible_base,
  gen_qaccessibleobject,
  gen_qcolor,
  gen_qrect,
  gen_qwidget,
  gen_qwindow

type cQAccessibleWidget*{.exportc: "QAccessibleWidget", incompleteStruct.} = object

proc fcQAccessibleWidget_new(o: pointer): ptr cQAccessibleWidget {.importc: "QAccessibleWidget_new".}
proc fcQAccessibleWidget_new2(o: pointer, r: cint): ptr cQAccessibleWidget {.importc: "QAccessibleWidget_new2".}
proc fcQAccessibleWidget_new3(o: pointer, r: cint, name: struct_miqt_string): ptr cQAccessibleWidget {.importc: "QAccessibleWidget_new3".}
proc fcQAccessibleWidget_isValid(self: pointer, ): bool {.importc: "QAccessibleWidget_isValid".}
proc fcQAccessibleWidget_window(self: pointer, ): pointer {.importc: "QAccessibleWidget_window".}
proc fcQAccessibleWidget_childCount(self: pointer, ): cint {.importc: "QAccessibleWidget_childCount".}
proc fcQAccessibleWidget_indexOfChild(self: pointer, child: pointer): cint {.importc: "QAccessibleWidget_indexOfChild".}
proc fcQAccessibleWidget_relations(self: pointer, match: cint): struct_miqt_array {.importc: "QAccessibleWidget_relations".}
proc fcQAccessibleWidget_focusChild(self: pointer, ): pointer {.importc: "QAccessibleWidget_focusChild".}
proc fcQAccessibleWidget_rect(self: pointer, ): pointer {.importc: "QAccessibleWidget_rect".}
proc fcQAccessibleWidget_parent(self: pointer, ): pointer {.importc: "QAccessibleWidget_parent".}
proc fcQAccessibleWidget_child(self: pointer, index: cint): pointer {.importc: "QAccessibleWidget_child".}
proc fcQAccessibleWidget_text(self: pointer, t: cint): struct_miqt_string {.importc: "QAccessibleWidget_text".}
proc fcQAccessibleWidget_role(self: pointer, ): cint {.importc: "QAccessibleWidget_role".}
proc fcQAccessibleWidget_state(self: pointer, ): pointer {.importc: "QAccessibleWidget_state".}
proc fcQAccessibleWidget_foregroundColor(self: pointer, ): pointer {.importc: "QAccessibleWidget_foregroundColor".}
proc fcQAccessibleWidget_backgroundColor(self: pointer, ): pointer {.importc: "QAccessibleWidget_backgroundColor".}
proc fcQAccessibleWidget_interfaceCast(self: pointer, t: cint): pointer {.importc: "QAccessibleWidget_interfaceCast".}
proc fcQAccessibleWidget_actionNames(self: pointer, ): struct_miqt_array {.importc: "QAccessibleWidget_actionNames".}
proc fcQAccessibleWidget_doAction(self: pointer, actionName: struct_miqt_string): void {.importc: "QAccessibleWidget_doAction".}
proc fcQAccessibleWidget_keyBindingsForAction(self: pointer, actionName: struct_miqt_string): struct_miqt_array {.importc: "QAccessibleWidget_keyBindingsForAction".}


func init*(T: type QAccessibleWidget, h: ptr cQAccessibleWidget): QAccessibleWidget =
  T(h: h)
proc create*(T: type QAccessibleWidget, o: gen_qwidget.QWidget): QAccessibleWidget =

  QAccessibleWidget.init(fcQAccessibleWidget_new(o.h))
proc create*(T: type QAccessibleWidget, o: gen_qwidget.QWidget, r: gen_qaccessible_base.QAccessibleRole): QAccessibleWidget =

  QAccessibleWidget.init(fcQAccessibleWidget_new2(o.h, cint(r)))
proc create*(T: type QAccessibleWidget, o: gen_qwidget.QWidget, r: gen_qaccessible_base.QAccessibleRole, name: string): QAccessibleWidget =

  QAccessibleWidget.init(fcQAccessibleWidget_new3(o.h, cint(r), struct_miqt_string(data: name, len: csize_t(len(name)))))
proc isValid*(self: QAccessibleWidget, ): bool =

  fcQAccessibleWidget_isValid(self.h)

proc window*(self: QAccessibleWidget, ): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQAccessibleWidget_window(self.h))

proc childCount*(self: QAccessibleWidget, ): cint =

  fcQAccessibleWidget_childCount(self.h)

proc indexOfChild*(self: QAccessibleWidget, child: gen_qaccessible.QAccessibleInterface): cint =

  fcQAccessibleWidget_indexOfChild(self.h, child.h)

proc relations*(self: QAccessibleWidget, match: gen_qaccessible_base.QAccessibleRelationFlag): seq[tuple[first: gen_qaccessible.QAccessibleInterface, second: gen_qaccessible_base.QAccessibleRelationFlag]] =

  var v_ma = fcQAccessibleWidget_relations(self.h, cint(match))
  var vx_ret = newSeq[tuple[first: gen_qaccessible.QAccessibleInterface, second: gen_qaccessible_base.QAccessibleRelationFlag]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[cint]](vx_lv_mm.values)
    var vx_lv_entry_First = gen_qaccessible.QAccessibleInterface(h: vx_lv_First_CArray[0])

    var vx_lv_entry_Second = gen_qaccessible_base.QAccessibleRelationFlag(vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc focusChild*(self: QAccessibleWidget, ): gen_qaccessible.QAccessibleInterface =

  gen_qaccessible.QAccessibleInterface(h: fcQAccessibleWidget_focusChild(self.h))

proc rect*(self: QAccessibleWidget, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQAccessibleWidget_rect(self.h))

proc parent*(self: QAccessibleWidget, ): gen_qaccessible.QAccessibleInterface =

  gen_qaccessible.QAccessibleInterface(h: fcQAccessibleWidget_parent(self.h))

proc child*(self: QAccessibleWidget, index: cint): gen_qaccessible.QAccessibleInterface =

  gen_qaccessible.QAccessibleInterface(h: fcQAccessibleWidget_child(self.h, index))

proc text*(self: QAccessibleWidget, t: gen_qaccessible_base.QAccessibleText): string =

  let v_ms = fcQAccessibleWidget_text(self.h, cint(t))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc role*(self: QAccessibleWidget, ): gen_qaccessible_base.QAccessibleRole =

  gen_qaccessible_base.QAccessibleRole(fcQAccessibleWidget_role(self.h))

proc state*(self: QAccessibleWidget, ): gen_qaccessible_base.QAccessibleState =

  gen_qaccessible_base.QAccessibleState(h: fcQAccessibleWidget_state(self.h))

proc foregroundColor*(self: QAccessibleWidget, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQAccessibleWidget_foregroundColor(self.h))

proc backgroundColor*(self: QAccessibleWidget, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQAccessibleWidget_backgroundColor(self.h))

proc interfaceCast*(self: QAccessibleWidget, t: gen_qaccessible_base.QAccessibleInterfaceType): pointer =

  fcQAccessibleWidget_interfaceCast(self.h, cint(t))

proc actionNames*(self: QAccessibleWidget, ): seq[string] =

  var v_ma = fcQAccessibleWidget_actionNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc doAction*(self: QAccessibleWidget, actionName: string): void =

  fcQAccessibleWidget_doAction(self.h, struct_miqt_string(data: actionName, len: csize_t(len(actionName))))

proc keyBindingsForAction*(self: QAccessibleWidget, actionName: string): seq[string] =

  var v_ma = fcQAccessibleWidget_keyBindingsForAction(self.h, struct_miqt_string(data: actionName, len: csize_t(len(actionName))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

