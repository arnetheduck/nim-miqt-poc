import Qt5Svg_libs

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

const cflags = gorge("pkg-config -cflags Qt5Svg")
{.compile("gen_qsvgrenderer.cpp", cflags).}


import gen_qsvgrenderer_types
export gen_qsvgrenderer_types

import
  gen_qcoreevent,
  gen_qmatrix,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qrect,
  gen_qsize,
  gen_qtransform,
  gen_qxmlstream
export
  gen_qcoreevent,
  gen_qmatrix,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qrect,
  gen_qsize,
  gen_qtransform,
  gen_qxmlstream

type cQSvgRenderer*{.exportc: "QSvgRenderer", incompleteStruct.} = object

proc fcQSvgRenderer_new(): ptr cQSvgRenderer {.importc: "QSvgRenderer_new".}
proc fcQSvgRenderer_new2(filename: struct_miqt_string): ptr cQSvgRenderer {.importc: "QSvgRenderer_new2".}
proc fcQSvgRenderer_new3(contents: struct_miqt_string): ptr cQSvgRenderer {.importc: "QSvgRenderer_new3".}
proc fcQSvgRenderer_new4(contents: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new4".}
proc fcQSvgRenderer_new5(parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new5".}
proc fcQSvgRenderer_new6(filename: struct_miqt_string, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new6".}
proc fcQSvgRenderer_new7(contents: struct_miqt_string, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new7".}
proc fcQSvgRenderer_new8(contents: pointer, parent: pointer): ptr cQSvgRenderer {.importc: "QSvgRenderer_new8".}
proc fcQSvgRenderer_metaObject(self: pointer, ): pointer {.importc: "QSvgRenderer_metaObject".}
proc fcQSvgRenderer_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgRenderer_metacast".}
proc fcQSvgRenderer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgRenderer_metacall".}
proc fcQSvgRenderer_tr(s: cstring): struct_miqt_string {.importc: "QSvgRenderer_tr".}
proc fcQSvgRenderer_trUtf8(s: cstring): struct_miqt_string {.importc: "QSvgRenderer_trUtf8".}
proc fcQSvgRenderer_isValid(self: pointer, ): bool {.importc: "QSvgRenderer_isValid".}
proc fcQSvgRenderer_defaultSize(self: pointer, ): pointer {.importc: "QSvgRenderer_defaultSize".}
proc fcQSvgRenderer_viewBox(self: pointer, ): pointer {.importc: "QSvgRenderer_viewBox".}
proc fcQSvgRenderer_viewBoxF(self: pointer, ): pointer {.importc: "QSvgRenderer_viewBoxF".}
proc fcQSvgRenderer_setViewBox(self: pointer, viewbox: pointer): void {.importc: "QSvgRenderer_setViewBox".}
proc fcQSvgRenderer_setViewBoxWithViewbox(self: pointer, viewbox: pointer): void {.importc: "QSvgRenderer_setViewBoxWithViewbox".}
proc fcQSvgRenderer_aspectRatioMode(self: pointer, ): cint {.importc: "QSvgRenderer_aspectRatioMode".}
proc fcQSvgRenderer_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QSvgRenderer_setAspectRatioMode".}
proc fcQSvgRenderer_animated(self: pointer, ): bool {.importc: "QSvgRenderer_animated".}
proc fcQSvgRenderer_framesPerSecond(self: pointer, ): cint {.importc: "QSvgRenderer_framesPerSecond".}
proc fcQSvgRenderer_setFramesPerSecond(self: pointer, num: cint): void {.importc: "QSvgRenderer_setFramesPerSecond".}
proc fcQSvgRenderer_currentFrame(self: pointer, ): cint {.importc: "QSvgRenderer_currentFrame".}
proc fcQSvgRenderer_setCurrentFrame(self: pointer, currentFrame: cint): void {.importc: "QSvgRenderer_setCurrentFrame".}
proc fcQSvgRenderer_animationDuration(self: pointer, ): cint {.importc: "QSvgRenderer_animationDuration".}
proc fcQSvgRenderer_boundsOnElement(self: pointer, id: struct_miqt_string): pointer {.importc: "QSvgRenderer_boundsOnElement".}
proc fcQSvgRenderer_elementExists(self: pointer, id: struct_miqt_string): bool {.importc: "QSvgRenderer_elementExists".}
proc fcQSvgRenderer_matrixForElement(self: pointer, id: struct_miqt_string): pointer {.importc: "QSvgRenderer_matrixForElement".}
proc fcQSvgRenderer_transformForElement(self: pointer, id: struct_miqt_string): pointer {.importc: "QSvgRenderer_transformForElement".}
proc fcQSvgRenderer_load(self: pointer, filename: struct_miqt_string): bool {.importc: "QSvgRenderer_load".}
proc fcQSvgRenderer_loadWithContents(self: pointer, contents: struct_miqt_string): bool {.importc: "QSvgRenderer_loadWithContents".}
proc fcQSvgRenderer_load2(self: pointer, contents: pointer): bool {.importc: "QSvgRenderer_load2".}
proc fcQSvgRenderer_render(self: pointer, p: pointer): void {.importc: "QSvgRenderer_render".}
proc fcQSvgRenderer_render2(self: pointer, p: pointer, bounds: pointer): void {.importc: "QSvgRenderer_render2".}
proc fcQSvgRenderer_render3(self: pointer, p: pointer, elementId: struct_miqt_string): void {.importc: "QSvgRenderer_render3".}
proc fcQSvgRenderer_repaintNeeded(self: pointer, ): void {.importc: "QSvgRenderer_repaintNeeded".}
proc fQSvgRenderer_connect_repaintNeeded(self: pointer, slot: int) {.importc: "QSvgRenderer_connect_repaintNeeded".}
proc fcQSvgRenderer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgRenderer_tr2".}
proc fcQSvgRenderer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgRenderer_tr3".}
proc fcQSvgRenderer_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgRenderer_trUtf82".}
proc fcQSvgRenderer_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgRenderer_trUtf83".}
proc fcQSvgRenderer_render32(self: pointer, p: pointer, elementId: struct_miqt_string, bounds: pointer): void {.importc: "QSvgRenderer_render32".}
proc fQSvgRenderer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSvgRenderer_virtualbase_metaObject".}
proc fcQSvgRenderer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_metaObject".}
proc fQSvgRenderer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSvgRenderer_virtualbase_metacast".}
proc fcQSvgRenderer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_metacast".}
proc fQSvgRenderer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSvgRenderer_virtualbase_metacall".}
proc fcQSvgRenderer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_metacall".}
proc fQSvgRenderer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSvgRenderer_virtualbase_event".}
proc fcQSvgRenderer_override_virtual_event(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_event".}
proc fQSvgRenderer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSvgRenderer_virtualbase_eventFilter".}
proc fcQSvgRenderer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_eventFilter".}
proc fQSvgRenderer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSvgRenderer_virtualbase_timerEvent".}
proc fcQSvgRenderer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_timerEvent".}
proc fQSvgRenderer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSvgRenderer_virtualbase_childEvent".}
proc fcQSvgRenderer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_childEvent".}
proc fQSvgRenderer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSvgRenderer_virtualbase_customEvent".}
proc fcQSvgRenderer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_customEvent".}
proc fQSvgRenderer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSvgRenderer_virtualbase_connectNotify".}
proc fcQSvgRenderer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_connectNotify".}
proc fQSvgRenderer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSvgRenderer_virtualbase_disconnectNotify".}
proc fcQSvgRenderer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSvgRenderer_override_virtual_disconnectNotify".}
proc fcQSvgRenderer_staticMetaObject(): pointer {.importc: "QSvgRenderer_staticMetaObject".}
proc fcQSvgRenderer_delete(self: pointer) {.importc: "QSvgRenderer_delete".}


func init*(T: type QSvgRenderer, h: ptr cQSvgRenderer): QSvgRenderer =
  T(h: h)
proc create*(T: type QSvgRenderer, ): QSvgRenderer =

  QSvgRenderer.init(fcQSvgRenderer_new())
proc create*(T: type QSvgRenderer, filename: string): QSvgRenderer =

  QSvgRenderer.init(fcQSvgRenderer_new2(struct_miqt_string(data: filename, len: csize_t(len(filename)))))
proc create2*(T: type QSvgRenderer, contents: seq[byte]): QSvgRenderer =

  QSvgRenderer.init(fcQSvgRenderer_new3(struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents)))))
proc create*(T: type QSvgRenderer, contents: gen_qxmlstream.QXmlStreamReader): QSvgRenderer =

  QSvgRenderer.init(fcQSvgRenderer_new4(contents.h))
proc create2*(T: type QSvgRenderer, parent: gen_qobject.QObject): QSvgRenderer =

  QSvgRenderer.init(fcQSvgRenderer_new5(parent.h))
proc create*(T: type QSvgRenderer, filename: string, parent: gen_qobject.QObject): QSvgRenderer =

  QSvgRenderer.init(fcQSvgRenderer_new6(struct_miqt_string(data: filename, len: csize_t(len(filename))), parent.h))
proc create2*(T: type QSvgRenderer, contents: seq[byte], parent: gen_qobject.QObject): QSvgRenderer =

  QSvgRenderer.init(fcQSvgRenderer_new7(struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents))), parent.h))
proc create*(T: type QSvgRenderer, contents: gen_qxmlstream.QXmlStreamReader, parent: gen_qobject.QObject): QSvgRenderer =

  QSvgRenderer.init(fcQSvgRenderer_new8(contents.h, parent.h))
proc metaObject*(self: QSvgRenderer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSvgRenderer_metaObject(self.h))

proc metacast*(self: QSvgRenderer, param1: cstring): pointer =

  fcQSvgRenderer_metacast(self.h, param1)

proc metacall*(self: QSvgRenderer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSvgRenderer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSvgRenderer, s: cstring): string =

  let v_ms = fcQSvgRenderer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSvgRenderer, s: cstring): string =

  let v_ms = fcQSvgRenderer_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: QSvgRenderer, ): bool =

  fcQSvgRenderer_isValid(self.h)

proc defaultSize*(self: QSvgRenderer, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSvgRenderer_defaultSize(self.h))

proc viewBox*(self: QSvgRenderer, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQSvgRenderer_viewBox(self.h))

proc viewBoxF*(self: QSvgRenderer, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQSvgRenderer_viewBoxF(self.h))

proc setViewBox*(self: QSvgRenderer, viewbox: gen_qrect.QRect): void =

  fcQSvgRenderer_setViewBox(self.h, viewbox.h)

proc setViewBoxWithViewbox*(self: QSvgRenderer, viewbox: gen_qrect.QRectF): void =

  fcQSvgRenderer_setViewBoxWithViewbox(self.h, viewbox.h)

proc aspectRatioMode*(self: QSvgRenderer, ): gen_qnamespace.AspectRatioMode =

  gen_qnamespace.AspectRatioMode(fcQSvgRenderer_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: QSvgRenderer, mode: gen_qnamespace.AspectRatioMode): void =

  fcQSvgRenderer_setAspectRatioMode(self.h, cint(mode))

proc animated*(self: QSvgRenderer, ): bool =

  fcQSvgRenderer_animated(self.h)

proc framesPerSecond*(self: QSvgRenderer, ): cint =

  fcQSvgRenderer_framesPerSecond(self.h)

proc setFramesPerSecond*(self: QSvgRenderer, num: cint): void =

  fcQSvgRenderer_setFramesPerSecond(self.h, num)

proc currentFrame*(self: QSvgRenderer, ): cint =

  fcQSvgRenderer_currentFrame(self.h)

proc setCurrentFrame*(self: QSvgRenderer, currentFrame: cint): void =

  fcQSvgRenderer_setCurrentFrame(self.h, currentFrame)

proc animationDuration*(self: QSvgRenderer, ): cint =

  fcQSvgRenderer_animationDuration(self.h)

proc boundsOnElement*(self: QSvgRenderer, id: string): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQSvgRenderer_boundsOnElement(self.h, struct_miqt_string(data: id, len: csize_t(len(id)))))

proc elementExists*(self: QSvgRenderer, id: string): bool =

  fcQSvgRenderer_elementExists(self.h, struct_miqt_string(data: id, len: csize_t(len(id))))

proc matrixForElement*(self: QSvgRenderer, id: string): gen_qmatrix.QMatrix =

  gen_qmatrix.QMatrix(h: fcQSvgRenderer_matrixForElement(self.h, struct_miqt_string(data: id, len: csize_t(len(id)))))

proc transformForElement*(self: QSvgRenderer, id: string): gen_qtransform.QTransform =

  gen_qtransform.QTransform(h: fcQSvgRenderer_transformForElement(self.h, struct_miqt_string(data: id, len: csize_t(len(id)))))

proc load*(self: QSvgRenderer, filename: string): bool =

  fcQSvgRenderer_load(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc loadWithContents*(self: QSvgRenderer, contents: seq[byte]): bool =

  fcQSvgRenderer_loadWithContents(self.h, struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents))))

proc load2*(self: QSvgRenderer, contents: gen_qxmlstream.QXmlStreamReader): bool =

  fcQSvgRenderer_load2(self.h, contents.h)

proc render*(self: QSvgRenderer, p: gen_qpainter.QPainter): void =

  fcQSvgRenderer_render(self.h, p.h)

proc render2*(self: QSvgRenderer, p: gen_qpainter.QPainter, bounds: gen_qrect.QRectF): void =

  fcQSvgRenderer_render2(self.h, p.h, bounds.h)

proc render3*(self: QSvgRenderer, p: gen_qpainter.QPainter, elementId: string): void =

  fcQSvgRenderer_render3(self.h, p.h, struct_miqt_string(data: elementId, len: csize_t(len(elementId))))

proc repaintNeeded*(self: QSvgRenderer, ): void =

  fcQSvgRenderer_repaintNeeded(self.h)

proc miqt_exec_callback_QSvgRenderer_repaintNeeded(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onrepaintNeeded*(self: QSvgRenderer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSvgRenderer_connect_repaintNeeded(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QSvgRenderer, s: cstring, c: cstring): string =

  let v_ms = fcQSvgRenderer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSvgRenderer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSvgRenderer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSvgRenderer, s: cstring, c: cstring): string =

  let v_ms = fcQSvgRenderer_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSvgRenderer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSvgRenderer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc render32*(self: QSvgRenderer, p: gen_qpainter.QPainter, elementId: string, bounds: gen_qrect.QRectF): void =

  fcQSvgRenderer_render32(self.h, p.h, struct_miqt_string(data: elementId, len: csize_t(len(elementId))), bounds.h)

proc callVirtualBase_metaObject(self: QSvgRenderer, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQSvgRenderer_virtualbase_metaObject(self.h))

type QSvgRenderermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QSvgRenderer, slot: proc(super: QSvgRenderermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QSvgRenderermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_metaObject(self: ptr cQSvgRenderer, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgRenderer_metaObject ".} =
  type Cb = proc(super: QSvgRenderermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QSvgRenderer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QSvgRenderer, param1: cstring): pointer =


  fQSvgRenderer_virtualbase_metacast(self.h, param1)

type QSvgRenderermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QSvgRenderer, slot: proc(super: QSvgRenderermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QSvgRenderermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_metacast(self: ptr cQSvgRenderer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSvgRenderer_metacast ".} =
  type Cb = proc(super: QSvgRenderermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QSvgRenderer(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QSvgRenderer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSvgRenderer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSvgRenderermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSvgRenderer, slot: proc(super: QSvgRenderermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSvgRenderermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_metacall(self: ptr cQSvgRenderer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSvgRenderer_metacall ".} =
  type Cb = proc(super: QSvgRenderermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSvgRenderer(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSvgRenderer, event: gen_qcoreevent.QEvent): bool =


  fQSvgRenderer_virtualbase_event(self.h, event.h)

type QSvgRenderereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSvgRenderer, slot: proc(super: QSvgRenderereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSvgRenderereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_event(self: ptr cQSvgRenderer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSvgRenderer_event ".} =
  type Cb = proc(super: QSvgRenderereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSvgRenderer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSvgRenderer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSvgRenderer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSvgRenderereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSvgRenderer, slot: proc(super: QSvgRenderereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSvgRenderereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_eventFilter(self: ptr cQSvgRenderer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSvgRenderer_eventFilter ".} =
  type Cb = proc(super: QSvgRenderereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSvgRenderer(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSvgRenderer, event: gen_qcoreevent.QTimerEvent): void =


  fQSvgRenderer_virtualbase_timerEvent(self.h, event.h)

type QSvgRenderertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSvgRenderer, slot: proc(super: QSvgRenderertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgRenderertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_timerEvent(self: ptr cQSvgRenderer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_timerEvent ".} =
  type Cb = proc(super: QSvgRenderertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSvgRenderer(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSvgRenderer, event: gen_qcoreevent.QChildEvent): void =


  fQSvgRenderer_virtualbase_childEvent(self.h, event.h)

type QSvgRendererchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSvgRenderer, slot: proc(super: QSvgRendererchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgRendererchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_childEvent(self: ptr cQSvgRenderer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_childEvent ".} =
  type Cb = proc(super: QSvgRendererchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSvgRenderer(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSvgRenderer, event: gen_qcoreevent.QEvent): void =


  fQSvgRenderer_virtualbase_customEvent(self.h, event.h)

type QSvgRenderercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSvgRenderer, slot: proc(super: QSvgRenderercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgRenderercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_customEvent(self: ptr cQSvgRenderer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_customEvent ".} =
  type Cb = proc(super: QSvgRenderercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSvgRenderer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSvgRenderer, signal: gen_qmetaobject.QMetaMethod): void =


  fQSvgRenderer_virtualbase_connectNotify(self.h, signal.h)

type QSvgRendererconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSvgRenderer, slot: proc(super: QSvgRendererconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgRendererconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_connectNotify(self: ptr cQSvgRenderer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_connectNotify ".} =
  type Cb = proc(super: QSvgRendererconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSvgRenderer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSvgRenderer, signal: gen_qmetaobject.QMetaMethod): void =


  fQSvgRenderer_virtualbase_disconnectNotify(self.h, signal.h)

type QSvgRendererdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSvgRenderer, slot: proc(super: QSvgRendererdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSvgRendererdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgRenderer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgRenderer_disconnectNotify(self: ptr cQSvgRenderer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSvgRenderer_disconnectNotify ".} =
  type Cb = proc(super: QSvgRendererdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSvgRenderer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSvgRenderer): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSvgRenderer_staticMetaObject())
proc delete*(self: QSvgRenderer) =
  fcQSvgRenderer_delete(self.h)
