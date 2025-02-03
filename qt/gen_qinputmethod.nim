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
{.compile("gen_qinputmethod.cpp", cflags).}


type QInputMethodAction* = cint
const
  QInputMethodClick* = 0
  QInputMethodContextMenu* = 1



import gen_qinputmethod_types
export gen_qinputmethod_types

import
  gen_qlocale,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qtransform,
  gen_qvariant
export
  gen_qlocale,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qtransform,
  gen_qvariant

type cQInputMethod*{.exportc: "QInputMethod", incompleteStruct.} = object

proc fcQInputMethod_metaObject(self: pointer, ): pointer {.importc: "QInputMethod_metaObject".}
proc fcQInputMethod_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputMethod_metacast".}
proc fcQInputMethod_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputMethod_metacall".}
proc fcQInputMethod_tr(s: cstring): struct_miqt_string {.importc: "QInputMethod_tr".}
proc fcQInputMethod_trUtf8(s: cstring): struct_miqt_string {.importc: "QInputMethod_trUtf8".}
proc fcQInputMethod_inputItemTransform(self: pointer, ): pointer {.importc: "QInputMethod_inputItemTransform".}
proc fcQInputMethod_setInputItemTransform(self: pointer, transform: pointer): void {.importc: "QInputMethod_setInputItemTransform".}
proc fcQInputMethod_inputItemRectangle(self: pointer, ): pointer {.importc: "QInputMethod_inputItemRectangle".}
proc fcQInputMethod_setInputItemRectangle(self: pointer, rect: pointer): void {.importc: "QInputMethod_setInputItemRectangle".}
proc fcQInputMethod_cursorRectangle(self: pointer, ): pointer {.importc: "QInputMethod_cursorRectangle".}
proc fcQInputMethod_anchorRectangle(self: pointer, ): pointer {.importc: "QInputMethod_anchorRectangle".}
proc fcQInputMethod_keyboardRectangle(self: pointer, ): pointer {.importc: "QInputMethod_keyboardRectangle".}
proc fcQInputMethod_inputItemClipRectangle(self: pointer, ): pointer {.importc: "QInputMethod_inputItemClipRectangle".}
proc fcQInputMethod_isVisible(self: pointer, ): bool {.importc: "QInputMethod_isVisible".}
proc fcQInputMethod_setVisible(self: pointer, visible: bool): void {.importc: "QInputMethod_setVisible".}
proc fcQInputMethod_isAnimating(self: pointer, ): bool {.importc: "QInputMethod_isAnimating".}
proc fcQInputMethod_locale(self: pointer, ): pointer {.importc: "QInputMethod_locale".}
proc fcQInputMethod_inputDirection(self: pointer, ): cint {.importc: "QInputMethod_inputDirection".}
proc fcQInputMethod_queryFocusObject(query: cint, argument: pointer): pointer {.importc: "QInputMethod_queryFocusObject".}
proc fcQInputMethod_show(self: pointer, ): void {.importc: "QInputMethod_show".}
proc fcQInputMethod_hide(self: pointer, ): void {.importc: "QInputMethod_hide".}
proc fcQInputMethod_update(self: pointer, queries: cint): void {.importc: "QInputMethod_update".}
proc fcQInputMethod_reset(self: pointer, ): void {.importc: "QInputMethod_reset".}
proc fcQInputMethod_commit(self: pointer, ): void {.importc: "QInputMethod_commit".}
proc fcQInputMethod_invokeAction(self: pointer, a: cint, cursorPosition: cint): void {.importc: "QInputMethod_invokeAction".}
proc fcQInputMethod_cursorRectangleChanged(self: pointer, ): void {.importc: "QInputMethod_cursorRectangleChanged".}
proc fQInputMethod_connect_cursorRectangleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_cursorRectangleChanged".}
proc fcQInputMethod_anchorRectangleChanged(self: pointer, ): void {.importc: "QInputMethod_anchorRectangleChanged".}
proc fQInputMethod_connect_anchorRectangleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_anchorRectangleChanged".}
proc fcQInputMethod_keyboardRectangleChanged(self: pointer, ): void {.importc: "QInputMethod_keyboardRectangleChanged".}
proc fQInputMethod_connect_keyboardRectangleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_keyboardRectangleChanged".}
proc fcQInputMethod_inputItemClipRectangleChanged(self: pointer, ): void {.importc: "QInputMethod_inputItemClipRectangleChanged".}
proc fQInputMethod_connect_inputItemClipRectangleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_inputItemClipRectangleChanged".}
proc fcQInputMethod_visibleChanged(self: pointer, ): void {.importc: "QInputMethod_visibleChanged".}
proc fQInputMethod_connect_visibleChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_visibleChanged".}
proc fcQInputMethod_animatingChanged(self: pointer, ): void {.importc: "QInputMethod_animatingChanged".}
proc fQInputMethod_connect_animatingChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_animatingChanged".}
proc fcQInputMethod_localeChanged(self: pointer, ): void {.importc: "QInputMethod_localeChanged".}
proc fQInputMethod_connect_localeChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_localeChanged".}
proc fcQInputMethod_inputDirectionChanged(self: pointer, newDirection: cint): void {.importc: "QInputMethod_inputDirectionChanged".}
proc fQInputMethod_connect_inputDirectionChanged(self: pointer, slot: int) {.importc: "QInputMethod_connect_inputDirectionChanged".}
proc fcQInputMethod_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputMethod_tr2".}
proc fcQInputMethod_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputMethod_tr3".}
proc fcQInputMethod_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputMethod_trUtf82".}
proc fcQInputMethod_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputMethod_trUtf83".}


func init*(T: type QInputMethod, h: ptr cQInputMethod): QInputMethod =
  T(h: h)
proc metaObject*(self: QInputMethod, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQInputMethod_metaObject(self.h))

proc metacast*(self: QInputMethod, param1: cstring): pointer =

  fcQInputMethod_metacast(self.h, param1)

proc metacall*(self: QInputMethod, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQInputMethod_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QInputMethod, s: cstring): string =

  let v_ms = fcQInputMethod_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QInputMethod, s: cstring): string =

  let v_ms = fcQInputMethod_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc inputItemTransform*(self: QInputMethod, ): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQInputMethod_inputItemTransform(self.h))

proc setInputItemTransform*(self: QInputMethod, transform: gen_qtransform.QTransform): void =

  fcQInputMethod_setInputItemTransform(self.h, transform.h)

proc inputItemRectangle*(self: QInputMethod, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQInputMethod_inputItemRectangle(self.h))

proc setInputItemRectangle*(self: QInputMethod, rect: gen_qrect.QRectF): void =

  fcQInputMethod_setInputItemRectangle(self.h, rect.h)

proc cursorRectangle*(self: QInputMethod, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQInputMethod_cursorRectangle(self.h))

proc anchorRectangle*(self: QInputMethod, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQInputMethod_anchorRectangle(self.h))

proc keyboardRectangle*(self: QInputMethod, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQInputMethod_keyboardRectangle(self.h))

proc inputItemClipRectangle*(self: QInputMethod, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQInputMethod_inputItemClipRectangle(self.h))

proc isVisible*(self: QInputMethod, ): bool =

  fcQInputMethod_isVisible(self.h)

proc setVisible*(self: QInputMethod, visible: bool): void =

  fcQInputMethod_setVisible(self.h, visible)

proc isAnimating*(self: QInputMethod, ): bool =

  fcQInputMethod_isAnimating(self.h)

proc locale*(self: QInputMethod, ): gen_qlocale.QLocale =

  gen_qlocale.QLocale(h: fcQInputMethod_locale(self.h))

proc inputDirection*(self: QInputMethod, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQInputMethod_inputDirection(self.h))

proc queryFocusObject*(_: type QInputMethod, query: gen_qnamespace.InputMethodQuery, argument: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQInputMethod_queryFocusObject(cint(query), argument.h))

proc show*(self: QInputMethod, ): void =

  fcQInputMethod_show(self.h)

proc hide*(self: QInputMethod, ): void =

  fcQInputMethod_hide(self.h)

proc update*(self: QInputMethod, queries: gen_qnamespace.InputMethodQuery): void =

  fcQInputMethod_update(self.h, cint(queries))

proc reset*(self: QInputMethod, ): void =

  fcQInputMethod_reset(self.h)

proc commit*(self: QInputMethod, ): void =

  fcQInputMethod_commit(self.h)

proc invokeAction*(self: QInputMethod, a: QInputMethodAction, cursorPosition: cint): void =

  fcQInputMethod_invokeAction(self.h, cint(a), cursorPosition)

proc cursorRectangleChanged*(self: QInputMethod, ): void =

  fcQInputMethod_cursorRectangleChanged(self.h)

proc miqt_exec_callback_QInputMethod_cursorRectangleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oncursorRectangleChanged*(self: QInputMethod, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputMethod_connect_cursorRectangleChanged(self.h, cast[int](addr tmp[]))
proc anchorRectangleChanged*(self: QInputMethod, ): void =

  fcQInputMethod_anchorRectangleChanged(self.h)

proc miqt_exec_callback_QInputMethod_anchorRectangleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onanchorRectangleChanged*(self: QInputMethod, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputMethod_connect_anchorRectangleChanged(self.h, cast[int](addr tmp[]))
proc keyboardRectangleChanged*(self: QInputMethod, ): void =

  fcQInputMethod_keyboardRectangleChanged(self.h)

proc miqt_exec_callback_QInputMethod_keyboardRectangleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onkeyboardRectangleChanged*(self: QInputMethod, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputMethod_connect_keyboardRectangleChanged(self.h, cast[int](addr tmp[]))
proc inputItemClipRectangleChanged*(self: QInputMethod, ): void =

  fcQInputMethod_inputItemClipRectangleChanged(self.h)

proc miqt_exec_callback_QInputMethod_inputItemClipRectangleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc oninputItemClipRectangleChanged*(self: QInputMethod, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputMethod_connect_inputItemClipRectangleChanged(self.h, cast[int](addr tmp[]))
proc visibleChanged*(self: QInputMethod, ): void =

  fcQInputMethod_visibleChanged(self.h)

proc miqt_exec_callback_QInputMethod_visibleChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvisibleChanged*(self: QInputMethod, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputMethod_connect_visibleChanged(self.h, cast[int](addr tmp[]))
proc animatingChanged*(self: QInputMethod, ): void =

  fcQInputMethod_animatingChanged(self.h)

proc miqt_exec_callback_QInputMethod_animatingChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onanimatingChanged*(self: QInputMethod, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputMethod_connect_animatingChanged(self.h, cast[int](addr tmp[]))
proc localeChanged*(self: QInputMethod, ): void =

  fcQInputMethod_localeChanged(self.h)

proc miqt_exec_callback_QInputMethod_localeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onlocaleChanged*(self: QInputMethod, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputMethod_connect_localeChanged(self.h, cast[int](addr tmp[]))
proc inputDirectionChanged*(self: QInputMethod, newDirection: gen_qnamespace.LayoutDirection): void =

  fcQInputMethod_inputDirectionChanged(self.h, cint(newDirection))

proc miqt_exec_callback_QInputMethod_inputDirectionChanged(slot: int, newDirection: cint) {.exportc.} =
  type Cb = proc(newDirection: gen_qnamespace.LayoutDirection)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.LayoutDirection(newDirection)


  nimfunc[](slotval1)

proc oninputDirectionChanged*(self: QInputMethod, slot: proc(newDirection: gen_qnamespace.LayoutDirection)) =
  type Cb = proc(newDirection: gen_qnamespace.LayoutDirection)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQInputMethod_connect_inputDirectionChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QInputMethod, s: cstring, c: cstring): string =

  let v_ms = fcQInputMethod_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QInputMethod, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQInputMethod_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QInputMethod, s: cstring, c: cstring): string =

  let v_ms = fcQInputMethod_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QInputMethod, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQInputMethod_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

