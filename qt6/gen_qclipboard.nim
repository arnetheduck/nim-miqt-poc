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
{.compile("gen_qclipboard.cpp", cflags).}


type QClipboardMode* = cint
const
  QClipboardClipboard* = 0
  QClipboardSelection* = 1
  QClipboardFindBuffer* = 2
  QClipboardLastMode* = 2



import gen_qclipboard_types
export gen_qclipboard_types

import
  gen_qimage,
  gen_qmimedata,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap
export
  gen_qimage,
  gen_qmimedata,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap

type cQClipboard*{.exportc: "QClipboard", incompleteStruct.} = object

proc fcQClipboard_metaObject(self: pointer, ): pointer {.importc: "QClipboard_metaObject".}
proc fcQClipboard_metacast(self: pointer, param1: cstring): pointer {.importc: "QClipboard_metacast".}
proc fcQClipboard_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QClipboard_metacall".}
proc fcQClipboard_tr(s: cstring): struct_miqt_string {.importc: "QClipboard_tr".}
proc fcQClipboard_clear(self: pointer, ): void {.importc: "QClipboard_clear".}
proc fcQClipboard_supportsSelection(self: pointer, ): bool {.importc: "QClipboard_supportsSelection".}
proc fcQClipboard_supportsFindBuffer(self: pointer, ): bool {.importc: "QClipboard_supportsFindBuffer".}
proc fcQClipboard_ownsSelection(self: pointer, ): bool {.importc: "QClipboard_ownsSelection".}
proc fcQClipboard_ownsClipboard(self: pointer, ): bool {.importc: "QClipboard_ownsClipboard".}
proc fcQClipboard_ownsFindBuffer(self: pointer, ): bool {.importc: "QClipboard_ownsFindBuffer".}
proc fcQClipboard_text(self: pointer, ): struct_miqt_string {.importc: "QClipboard_text".}
proc fcQClipboard_textWithSubtype(self: pointer, subtype: struct_miqt_string): struct_miqt_string {.importc: "QClipboard_textWithSubtype".}
proc fcQClipboard_setText(self: pointer, param1: struct_miqt_string): void {.importc: "QClipboard_setText".}
proc fcQClipboard_mimeData(self: pointer, ): pointer {.importc: "QClipboard_mimeData".}
proc fcQClipboard_setMimeData(self: pointer, data: pointer): void {.importc: "QClipboard_setMimeData".}
proc fcQClipboard_image(self: pointer, ): pointer {.importc: "QClipboard_image".}
proc fcQClipboard_pixmap(self: pointer, ): pointer {.importc: "QClipboard_pixmap".}
proc fcQClipboard_setImage(self: pointer, param1: pointer): void {.importc: "QClipboard_setImage".}
proc fcQClipboard_setPixmap(self: pointer, param1: pointer): void {.importc: "QClipboard_setPixmap".}
proc fcQClipboard_changed(self: pointer, mode: cint): void {.importc: "QClipboard_changed".}
proc fQClipboard_connect_changed(self: pointer, slot: int) {.importc: "QClipboard_connect_changed".}
proc fcQClipboard_selectionChanged(self: pointer, ): void {.importc: "QClipboard_selectionChanged".}
proc fQClipboard_connect_selectionChanged(self: pointer, slot: int) {.importc: "QClipboard_connect_selectionChanged".}
proc fcQClipboard_findBufferChanged(self: pointer, ): void {.importc: "QClipboard_findBufferChanged".}
proc fQClipboard_connect_findBufferChanged(self: pointer, slot: int) {.importc: "QClipboard_connect_findBufferChanged".}
proc fcQClipboard_dataChanged(self: pointer, ): void {.importc: "QClipboard_dataChanged".}
proc fQClipboard_connect_dataChanged(self: pointer, slot: int) {.importc: "QClipboard_connect_dataChanged".}
proc fcQClipboard_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QClipboard_tr2".}
proc fcQClipboard_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QClipboard_tr3".}
proc fcQClipboard_clear1(self: pointer, mode: cint): void {.importc: "QClipboard_clear1".}
proc fcQClipboard_text1(self: pointer, mode: cint): struct_miqt_string {.importc: "QClipboard_text1".}
proc fcQClipboard_text2(self: pointer, subtype: struct_miqt_string, mode: cint): struct_miqt_string {.importc: "QClipboard_text2".}
proc fcQClipboard_setText2(self: pointer, param1: struct_miqt_string, mode: cint): void {.importc: "QClipboard_setText2".}
proc fcQClipboard_mimeData1(self: pointer, mode: cint): pointer {.importc: "QClipboard_mimeData1".}
proc fcQClipboard_setMimeData2(self: pointer, data: pointer, mode: cint): void {.importc: "QClipboard_setMimeData2".}
proc fcQClipboard_image1(self: pointer, mode: cint): pointer {.importc: "QClipboard_image1".}
proc fcQClipboard_pixmap1(self: pointer, mode: cint): pointer {.importc: "QClipboard_pixmap1".}
proc fcQClipboard_setImage2(self: pointer, param1: pointer, mode: cint): void {.importc: "QClipboard_setImage2".}
proc fcQClipboard_setPixmap2(self: pointer, param1: pointer, mode: cint): void {.importc: "QClipboard_setPixmap2".}


func init*(T: type QClipboard, h: ptr cQClipboard): QClipboard =
  T(h: h)
proc metaObject*(self: QClipboard, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQClipboard_metaObject(self.h))

proc metacast*(self: QClipboard, param1: cstring): pointer =

  fcQClipboard_metacast(self.h, param1)

proc metacall*(self: QClipboard, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQClipboard_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QClipboard, s: cstring): string =

  let v_ms = fcQClipboard_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear*(self: QClipboard, ): void =

  fcQClipboard_clear(self.h)

proc supportsSelection*(self: QClipboard, ): bool =

  fcQClipboard_supportsSelection(self.h)

proc supportsFindBuffer*(self: QClipboard, ): bool =

  fcQClipboard_supportsFindBuffer(self.h)

proc ownsSelection*(self: QClipboard, ): bool =

  fcQClipboard_ownsSelection(self.h)

proc ownsClipboard*(self: QClipboard, ): bool =

  fcQClipboard_ownsClipboard(self.h)

proc ownsFindBuffer*(self: QClipboard, ): bool =

  fcQClipboard_ownsFindBuffer(self.h)

proc text*(self: QClipboard, ): string =

  let v_ms = fcQClipboard_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textWithSubtype*(self: QClipboard, subtype: string): string =

  let v_ms = fcQClipboard_textWithSubtype(self.h, struct_miqt_string(data: subtype, len: csize_t(len(subtype))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QClipboard, param1: string): void =

  fcQClipboard_setText(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc mimeData*(self: QClipboard, ): gen_qmimedata.QMimeData =

  gen_qmimedata.QMimeData(h: fcQClipboard_mimeData(self.h))

proc setMimeData*(self: QClipboard, data: gen_qmimedata.QMimeData): void =

  fcQClipboard_setMimeData(self.h, data.h)

proc image*(self: QClipboard, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQClipboard_image(self.h))

proc pixmap*(self: QClipboard, ): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQClipboard_pixmap(self.h))

proc setImage*(self: QClipboard, param1: gen_qimage.QImage): void =

  fcQClipboard_setImage(self.h, param1.h)

proc setPixmap*(self: QClipboard, param1: gen_qpixmap.QPixmap): void =

  fcQClipboard_setPixmap(self.h, param1.h)

proc changed*(self: QClipboard, mode: QClipboardMode): void =

  fcQClipboard_changed(self.h, cint(mode))

proc miqt_exec_callback_QClipboard_changed(slot: int, mode: cint) {.exportc.} =
  type Cb = proc(mode: QClipboardMode)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QClipboardMode(mode)


  nimfunc[](slotval1)

proc onchanged*(self: QClipboard, slot: proc(mode: QClipboardMode)) =
  type Cb = proc(mode: QClipboardMode)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQClipboard_connect_changed(self.h, cast[int](addr tmp[]))
proc selectionChanged*(self: QClipboard, ): void =

  fcQClipboard_selectionChanged(self.h)

proc miqt_exec_callback_QClipboard_selectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onselectionChanged*(self: QClipboard, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQClipboard_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc findBufferChanged*(self: QClipboard, ): void =

  fcQClipboard_findBufferChanged(self.h)

proc miqt_exec_callback_QClipboard_findBufferChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfindBufferChanged*(self: QClipboard, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQClipboard_connect_findBufferChanged(self.h, cast[int](addr tmp[]))
proc dataChanged*(self: QClipboard, ): void =

  fcQClipboard_dataChanged(self.h)

proc miqt_exec_callback_QClipboard_dataChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondataChanged*(self: QClipboard, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQClipboard_connect_dataChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QClipboard, s: cstring, c: cstring): string =

  let v_ms = fcQClipboard_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QClipboard, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQClipboard_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear1*(self: QClipboard, mode: QClipboardMode): void =

  fcQClipboard_clear1(self.h, cint(mode))

proc text1*(self: QClipboard, mode: QClipboardMode): string =

  let v_ms = fcQClipboard_text1(self.h, cint(mode))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc text2*(self: QClipboard, subtype: string, mode: QClipboardMode): string =

  let v_ms = fcQClipboard_text2(self.h, struct_miqt_string(data: subtype, len: csize_t(len(subtype))), cint(mode))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText2*(self: QClipboard, param1: string, mode: QClipboardMode): void =

  fcQClipboard_setText2(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))), cint(mode))

proc mimeData1*(self: QClipboard, mode: QClipboardMode): gen_qmimedata.QMimeData =

  gen_qmimedata.QMimeData(h: fcQClipboard_mimeData1(self.h, cint(mode)))

proc setMimeData2*(self: QClipboard, data: gen_qmimedata.QMimeData, mode: QClipboardMode): void =

  fcQClipboard_setMimeData2(self.h, data.h, cint(mode))

proc image1*(self: QClipboard, mode: QClipboardMode): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQClipboard_image1(self.h, cint(mode)))

proc pixmap1*(self: QClipboard, mode: QClipboardMode): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQClipboard_pixmap1(self.h, cint(mode)))

proc setImage2*(self: QClipboard, param1: gen_qimage.QImage, mode: QClipboardMode): void =

  fcQClipboard_setImage2(self.h, param1.h, cint(mode))

proc setPixmap2*(self: QClipboard, param1: gen_qpixmap.QPixmap, mode: QClipboardMode): void =

  fcQClipboard_setPixmap2(self.h, param1.h, cint(mode))

