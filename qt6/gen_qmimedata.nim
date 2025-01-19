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
{.compile("gen_qmimedata.cpp", cflags).}


import gen_qmimedata_types
export gen_qmimedata_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qmetatype,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qmetatype,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvariant

type cQMimeData*{.exportc: "QMimeData", incompleteStruct.} = object

proc fcQMimeData_new(): ptr cQMimeData {.importc: "QMimeData_new".}
proc fcQMimeData_metaObject(self: pointer, ): pointer {.importc: "QMimeData_metaObject".}
proc fcQMimeData_metacast(self: pointer, param1: cstring): pointer {.importc: "QMimeData_metacast".}
proc fcQMimeData_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMimeData_metacall".}
proc fcQMimeData_tr(s: cstring): struct_miqt_string {.importc: "QMimeData_tr".}
proc fcQMimeData_urls(self: pointer, ): struct_miqt_array {.importc: "QMimeData_urls".}
proc fcQMimeData_setUrls(self: pointer, urls: struct_miqt_array): void {.importc: "QMimeData_setUrls".}
proc fcQMimeData_hasUrls(self: pointer, ): bool {.importc: "QMimeData_hasUrls".}
proc fcQMimeData_text(self: pointer, ): struct_miqt_string {.importc: "QMimeData_text".}
proc fcQMimeData_setText(self: pointer, text: struct_miqt_string): void {.importc: "QMimeData_setText".}
proc fcQMimeData_hasText(self: pointer, ): bool {.importc: "QMimeData_hasText".}
proc fcQMimeData_html(self: pointer, ): struct_miqt_string {.importc: "QMimeData_html".}
proc fcQMimeData_setHtml(self: pointer, html: struct_miqt_string): void {.importc: "QMimeData_setHtml".}
proc fcQMimeData_hasHtml(self: pointer, ): bool {.importc: "QMimeData_hasHtml".}
proc fcQMimeData_imageData(self: pointer, ): pointer {.importc: "QMimeData_imageData".}
proc fcQMimeData_setImageData(self: pointer, image: pointer): void {.importc: "QMimeData_setImageData".}
proc fcQMimeData_hasImage(self: pointer, ): bool {.importc: "QMimeData_hasImage".}
proc fcQMimeData_colorData(self: pointer, ): pointer {.importc: "QMimeData_colorData".}
proc fcQMimeData_setColorData(self: pointer, color: pointer): void {.importc: "QMimeData_setColorData".}
proc fcQMimeData_hasColor(self: pointer, ): bool {.importc: "QMimeData_hasColor".}
proc fcQMimeData_data(self: pointer, mimetype: struct_miqt_string): struct_miqt_string {.importc: "QMimeData_data".}
proc fcQMimeData_setData(self: pointer, mimetype: struct_miqt_string, data: struct_miqt_string): void {.importc: "QMimeData_setData".}
proc fcQMimeData_removeFormat(self: pointer, mimetype: struct_miqt_string): void {.importc: "QMimeData_removeFormat".}
proc fcQMimeData_hasFormat(self: pointer, mimetype: struct_miqt_string): bool {.importc: "QMimeData_hasFormat".}
proc fcQMimeData_formats(self: pointer, ): struct_miqt_array {.importc: "QMimeData_formats".}
proc fcQMimeData_clear(self: pointer, ): void {.importc: "QMimeData_clear".}
proc fcQMimeData_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMimeData_tr2".}
proc fcQMimeData_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMimeData_tr3".}
proc fQMimeData_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMimeData_virtualbase_metacall".}
proc fcQMimeData_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_metacall".}
proc fQMimeData_virtualbase_hasFormat(self: pointer, mimetype: struct_miqt_string): bool{.importc: "QMimeData_virtualbase_hasFormat".}
proc fcQMimeData_override_virtual_hasFormat(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_hasFormat".}
proc fQMimeData_virtualbase_formats(self: pointer, ): struct_miqt_array{.importc: "QMimeData_virtualbase_formats".}
proc fcQMimeData_override_virtual_formats(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_formats".}
proc fQMimeData_virtualbase_retrieveData(self: pointer, mimetype: struct_miqt_string, preferredType: pointer): pointer{.importc: "QMimeData_virtualbase_retrieveData".}
proc fcQMimeData_override_virtual_retrieveData(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_retrieveData".}
proc fQMimeData_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMimeData_virtualbase_event".}
proc fcQMimeData_override_virtual_event(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_event".}
proc fQMimeData_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMimeData_virtualbase_eventFilter".}
proc fcQMimeData_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_eventFilter".}
proc fQMimeData_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMimeData_virtualbase_timerEvent".}
proc fcQMimeData_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_timerEvent".}
proc fQMimeData_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMimeData_virtualbase_childEvent".}
proc fcQMimeData_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_childEvent".}
proc fQMimeData_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMimeData_virtualbase_customEvent".}
proc fcQMimeData_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_customEvent".}
proc fQMimeData_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMimeData_virtualbase_connectNotify".}
proc fcQMimeData_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_connectNotify".}
proc fQMimeData_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMimeData_virtualbase_disconnectNotify".}
proc fcQMimeData_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMimeData_override_virtual_disconnectNotify".}
proc fcQMimeData_staticMetaObject(): pointer {.importc: "QMimeData_staticMetaObject".}
proc fcQMimeData_delete(self: pointer) {.importc: "QMimeData_delete".}


func init*(T: type QMimeData, h: ptr cQMimeData): QMimeData =
  T(h: h)
proc create*(T: type QMimeData, ): QMimeData =

  QMimeData.init(fcQMimeData_new())
proc metaObject*(self: QMimeData, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMimeData_metaObject(self.h))

proc metacast*(self: QMimeData, param1: cstring): pointer =

  fcQMimeData_metacast(self.h, param1)

proc metacall*(self: QMimeData, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMimeData_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMimeData, s: cstring): string =

  let v_ms = fcQMimeData_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc urls*(self: QMimeData, ): seq[gen_qurl.QUrl] =

  var v_ma = fcQMimeData_urls(self.h)
  var vx_ret = newSeq[gen_qurl.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl.QUrl(h: v_outCast[i])
  vx_ret

proc setUrls*(self: QMimeData, urls: seq[gen_qurl.QUrl]): void =

  var urls_CArray = newSeq[pointer](len(urls))
  for i in 0..<len(urls):
    urls_CArray[i] = urls[i].h

  fcQMimeData_setUrls(self.h, struct_miqt_array(len: csize_t(len(urls)), data: if len(urls) == 0: nil else: addr(urls_CArray[0])))

proc hasUrls*(self: QMimeData, ): bool =

  fcQMimeData_hasUrls(self.h)

proc text*(self: QMimeData, ): string =

  let v_ms = fcQMimeData_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QMimeData, text: string): void =

  fcQMimeData_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc hasText*(self: QMimeData, ): bool =

  fcQMimeData_hasText(self.h)

proc html*(self: QMimeData, ): string =

  let v_ms = fcQMimeData_html(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHtml*(self: QMimeData, html: string): void =

  fcQMimeData_setHtml(self.h, struct_miqt_string(data: html, len: csize_t(len(html))))

proc hasHtml*(self: QMimeData, ): bool =

  fcQMimeData_hasHtml(self.h)

proc imageData*(self: QMimeData, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMimeData_imageData(self.h))

proc setImageData*(self: QMimeData, image: gen_qvariant.QVariant): void =

  fcQMimeData_setImageData(self.h, image.h)

proc hasImage*(self: QMimeData, ): bool =

  fcQMimeData_hasImage(self.h)

proc colorData*(self: QMimeData, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQMimeData_colorData(self.h))

proc setColorData*(self: QMimeData, color: gen_qvariant.QVariant): void =

  fcQMimeData_setColorData(self.h, color.h)

proc hasColor*(self: QMimeData, ): bool =

  fcQMimeData_hasColor(self.h)

proc data*(self: QMimeData, mimetype: string): seq[byte] =

  var v_bytearray = fcQMimeData_data(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setData*(self: QMimeData, mimetype: string, data: seq[byte]): void =

  fcQMimeData_setData(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))), struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc removeFormat*(self: QMimeData, mimetype: string): void =

  fcQMimeData_removeFormat(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))))

proc hasFormat*(self: QMimeData, mimetype: string): bool =

  fcQMimeData_hasFormat(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))))

proc formats*(self: QMimeData, ): seq[string] =

  var v_ma = fcQMimeData_formats(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc clear*(self: QMimeData, ): void =

  fcQMimeData_clear(self.h)

proc tr2*(_: type QMimeData, s: cstring, c: cstring): string =

  let v_ms = fcQMimeData_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMimeData, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMimeData_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QMimeData, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMimeData_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMimeDatametacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMimeData, slot: proc(super: QMimeDatametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMimeDatametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_metacall(self: ptr cQMimeData, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMimeData_metacall ".} =
  type Cb = proc(super: QMimeDatametacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMimeData(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_hasFormat(self: QMimeData, mimetype: string): bool =


  fQMimeData_virtualbase_hasFormat(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))))

type QMimeDatahasFormatBase* = proc(mimetype: string): bool
proc onhasFormat*(self: QMimeData, slot: proc(super: QMimeDatahasFormatBase, mimetype: string): bool) =
  # TODO check subclass
  type Cb = proc(super: QMimeDatahasFormatBase, mimetype: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_hasFormat(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_hasFormat(self: ptr cQMimeData, slot: int, mimetype: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QMimeData_hasFormat ".} =
  type Cb = proc(super: QMimeDatahasFormatBase, mimetype: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mimetype: string): auto =
    callVirtualBase_hasFormat(QMimeData(h: self), mimetype)
  let vmimetype_ms = mimetype
  let vmimetypex_ret = string.fromBytes(toOpenArrayByte(vmimetype_ms.data, 0, int(vmimetype_ms.len)-1))
  c_free(vmimetype_ms.data)
  let slotval1 = vmimetypex_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_formats(self: QMimeData, ): seq[string] =


  var v_ma = fQMimeData_virtualbase_formats(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QMimeDataformatsBase* = proc(): seq[string]
proc onformats*(self: QMimeData, slot: proc(super: QMimeDataformatsBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QMimeDataformatsBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_formats(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_formats(self: ptr cQMimeData, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QMimeData_formats ".} =
  type Cb = proc(super: QMimeDataformatsBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_formats(QMimeData(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_retrieveData(self: QMimeData, mimetype: string, preferredType: gen_qmetatype.QMetaType): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQMimeData_virtualbase_retrieveData(self.h, struct_miqt_string(data: mimetype, len: csize_t(len(mimetype))), preferredType.h))

type QMimeDataretrieveDataBase* = proc(mimetype: string, preferredType: gen_qmetatype.QMetaType): gen_qvariant.QVariant
proc onretrieveData*(self: QMimeData, slot: proc(super: QMimeDataretrieveDataBase, mimetype: string, preferredType: gen_qmetatype.QMetaType): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QMimeDataretrieveDataBase, mimetype: string, preferredType: gen_qmetatype.QMetaType): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_retrieveData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_retrieveData(self: ptr cQMimeData, slot: int, mimetype: struct_miqt_string, preferredType: pointer): pointer {.exportc: "miqt_exec_callback_QMimeData_retrieveData ".} =
  type Cb = proc(super: QMimeDataretrieveDataBase, mimetype: string, preferredType: gen_qmetatype.QMetaType): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mimetype: string, preferredType: gen_qmetatype.QMetaType): auto =
    callVirtualBase_retrieveData(QMimeData(h: self), mimetype, preferredType)
  let vmimetype_ms = mimetype
  let vmimetypex_ret = string.fromBytes(toOpenArrayByte(vmimetype_ms.data, 0, int(vmimetype_ms.len)-1))
  c_free(vmimetype_ms.data)
  let slotval1 = vmimetypex_ret

  let slotval2 = gen_qmetatype.QMetaType(h: preferredType)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_event(self: QMimeData, event: gen_qcoreevent.QEvent): bool =


  fQMimeData_virtualbase_event(self.h, event.h)

type QMimeDataeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMimeData, slot: proc(super: QMimeDataeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMimeDataeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_event(self: ptr cQMimeData, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMimeData_event ".} =
  type Cb = proc(super: QMimeDataeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMimeData(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QMimeData, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMimeData_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMimeDataeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMimeData, slot: proc(super: QMimeDataeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMimeDataeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_eventFilter(self: ptr cQMimeData, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMimeData_eventFilter ".} =
  type Cb = proc(super: QMimeDataeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMimeData(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QMimeData, event: gen_qcoreevent.QTimerEvent): void =


  fQMimeData_virtualbase_timerEvent(self.h, event.h)

type QMimeDatatimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMimeData, slot: proc(super: QMimeDatatimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMimeDatatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_timerEvent(self: ptr cQMimeData, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMimeData_timerEvent ".} =
  type Cb = proc(super: QMimeDatatimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMimeData(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMimeData, event: gen_qcoreevent.QChildEvent): void =


  fQMimeData_virtualbase_childEvent(self.h, event.h)

type QMimeDatachildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMimeData, slot: proc(super: QMimeDatachildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMimeDatachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_childEvent(self: ptr cQMimeData, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMimeData_childEvent ".} =
  type Cb = proc(super: QMimeDatachildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMimeData(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMimeData, event: gen_qcoreevent.QEvent): void =


  fQMimeData_virtualbase_customEvent(self.h, event.h)

type QMimeDatacustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMimeData, slot: proc(super: QMimeDatacustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMimeDatacustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_customEvent(self: ptr cQMimeData, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMimeData_customEvent ".} =
  type Cb = proc(super: QMimeDatacustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMimeData(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMimeData, signal: gen_qmetaobject.QMetaMethod): void =


  fQMimeData_virtualbase_connectNotify(self.h, signal.h)

type QMimeDataconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMimeData, slot: proc(super: QMimeDataconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMimeDataconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_connectNotify(self: ptr cQMimeData, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMimeData_connectNotify ".} =
  type Cb = proc(super: QMimeDataconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMimeData(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMimeData, signal: gen_qmetaobject.QMetaMethod): void =


  fQMimeData_virtualbase_disconnectNotify(self.h, signal.h)

type QMimeDatadisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMimeData, slot: proc(super: QMimeDatadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMimeDatadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMimeData_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMimeData_disconnectNotify(self: ptr cQMimeData, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMimeData_disconnectNotify ".} =
  type Cb = proc(super: QMimeDatadisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMimeData(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMimeData): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMimeData_staticMetaObject())
proc delete*(self: QMimeData) =
  fcQMimeData_delete(self.h)
