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
{.compile("gen_qwhatsthis.cpp", cflags).}


import gen_qwhatsthis_types
export gen_qwhatsthis_types

import
  gen_qaction,
  gen_qobject,
  gen_qpoint,
  gen_qwidget
export
  gen_qaction,
  gen_qobject,
  gen_qpoint,
  gen_qwidget

type cQWhatsThis*{.exportc: "QWhatsThis", incompleteStruct.} = object

proc fcQWhatsThis_enterWhatsThisMode(): void {.importc: "QWhatsThis_enterWhatsThisMode".}
proc fcQWhatsThis_inWhatsThisMode(): bool {.importc: "QWhatsThis_inWhatsThisMode".}
proc fcQWhatsThis_leaveWhatsThisMode(): void {.importc: "QWhatsThis_leaveWhatsThisMode".}
proc fcQWhatsThis_showText(pos: pointer, text: struct_miqt_string): void {.importc: "QWhatsThis_showText".}
proc fcQWhatsThis_hideText(): void {.importc: "QWhatsThis_hideText".}
proc fcQWhatsThis_createAction(): pointer {.importc: "QWhatsThis_createAction".}
proc fcQWhatsThis_showText3(pos: pointer, text: struct_miqt_string, w: pointer): void {.importc: "QWhatsThis_showText3".}
proc fcQWhatsThis_createAction1(parent: pointer): pointer {.importc: "QWhatsThis_createAction1".}
proc fcQWhatsThis_delete(self: pointer) {.importc: "QWhatsThis_delete".}


func init*(T: type QWhatsThis, h: ptr cQWhatsThis): QWhatsThis =
  T(h: h)
proc enterWhatsThisMode*(_: type QWhatsThis, ): void =

  fcQWhatsThis_enterWhatsThisMode()

proc inWhatsThisMode*(_: type QWhatsThis, ): bool =

  fcQWhatsThis_inWhatsThisMode()

proc leaveWhatsThisMode*(_: type QWhatsThis, ): void =

  fcQWhatsThis_leaveWhatsThisMode()

proc showText*(_: type QWhatsThis, pos: gen_qpoint.QPoint, text: string): void =

  fcQWhatsThis_showText(pos.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc hideText*(_: type QWhatsThis, ): void =

  fcQWhatsThis_hideText()

proc createAction*(_: type QWhatsThis, ): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQWhatsThis_createAction())

proc showText3*(_: type QWhatsThis, pos: gen_qpoint.QPoint, text: string, w: gen_qwidget.QWidget): void =

  fcQWhatsThis_showText3(pos.h, struct_miqt_string(data: text, len: csize_t(len(text))), w.h)

proc createAction1*(_: type QWhatsThis, parent: gen_qobject.QObject): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQWhatsThis_createAction1(parent.h))

proc delete*(self: QWhatsThis) =
  fcQWhatsThis_delete(self.h)
