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
{.compile("gen_qfileselector.cpp", cflags).}


import gen_qfileselector_types
export gen_qfileselector_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQFileSelector*{.exportc: "QFileSelector", incompleteStruct.} = object

proc fcQFileSelector_new(): ptr cQFileSelector {.importc: "QFileSelector_new".}
proc fcQFileSelector_new2(parent: pointer): ptr cQFileSelector {.importc: "QFileSelector_new2".}
proc fcQFileSelector_metaObject(self: pointer, ): pointer {.importc: "QFileSelector_metaObject".}
proc fcQFileSelector_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSelector_metacast".}
proc fcQFileSelector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSelector_metacall".}
proc fcQFileSelector_tr(s: cstring): struct_miqt_string {.importc: "QFileSelector_tr".}
proc fcQFileSelector_trUtf8(s: cstring): struct_miqt_string {.importc: "QFileSelector_trUtf8".}
proc fcQFileSelector_select(self: pointer, filePath: struct_miqt_string): struct_miqt_string {.importc: "QFileSelector_select".}
proc fcQFileSelector_selectWithFilePath(self: pointer, filePath: pointer): pointer {.importc: "QFileSelector_selectWithFilePath".}
proc fcQFileSelector_extraSelectors(self: pointer, ): struct_miqt_array {.importc: "QFileSelector_extraSelectors".}
proc fcQFileSelector_setExtraSelectors(self: pointer, list: struct_miqt_array): void {.importc: "QFileSelector_setExtraSelectors".}
proc fcQFileSelector_allSelectors(self: pointer, ): struct_miqt_array {.importc: "QFileSelector_allSelectors".}
proc fcQFileSelector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSelector_tr2".}
proc fcQFileSelector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSelector_tr3".}
proc fcQFileSelector_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSelector_trUtf82".}
proc fcQFileSelector_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSelector_trUtf83".}
proc fQFileSelector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFileSelector_virtualbase_metacall".}
proc fcQFileSelector_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_metacall".}
proc fQFileSelector_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFileSelector_virtualbase_event".}
proc fcQFileSelector_override_virtual_event(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_event".}
proc fQFileSelector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFileSelector_virtualbase_eventFilter".}
proc fcQFileSelector_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_eventFilter".}
proc fQFileSelector_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFileSelector_virtualbase_timerEvent".}
proc fcQFileSelector_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_timerEvent".}
proc fQFileSelector_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFileSelector_virtualbase_childEvent".}
proc fcQFileSelector_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_childEvent".}
proc fQFileSelector_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFileSelector_virtualbase_customEvent".}
proc fcQFileSelector_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_customEvent".}
proc fQFileSelector_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFileSelector_virtualbase_connectNotify".}
proc fcQFileSelector_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_connectNotify".}
proc fQFileSelector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFileSelector_virtualbase_disconnectNotify".}
proc fcQFileSelector_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFileSelector_override_virtual_disconnectNotify".}
proc fcQFileSelector_staticMetaObject(): pointer {.importc: "QFileSelector_staticMetaObject".}
proc fcQFileSelector_delete(self: pointer) {.importc: "QFileSelector_delete".}


func init*(T: type QFileSelector, h: ptr cQFileSelector): QFileSelector =
  T(h: h)
proc create*(T: type QFileSelector, ): QFileSelector =

  QFileSelector.init(fcQFileSelector_new())
proc create*(T: type QFileSelector, parent: gen_qobject.QObject): QFileSelector =

  QFileSelector.init(fcQFileSelector_new2(parent.h))
proc metaObject*(self: QFileSelector, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFileSelector_metaObject(self.h))

proc metacast*(self: QFileSelector, param1: cstring): pointer =

  fcQFileSelector_metacast(self.h, param1)

proc metacall*(self: QFileSelector, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFileSelector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFileSelector, s: cstring): string =

  let v_ms = fcQFileSelector_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QFileSelector, s: cstring): string =

  let v_ms = fcQFileSelector_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc select*(self: QFileSelector, filePath: string): string =

  let v_ms = fcQFileSelector_select(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectWithFilePath*(self: QFileSelector, filePath: gen_qurl.QUrl): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQFileSelector_selectWithFilePath(self.h, filePath.h))

proc extraSelectors*(self: QFileSelector, ): seq[string] =

  var v_ma = fcQFileSelector_extraSelectors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setExtraSelectors*(self: QFileSelector, list: seq[string]): void =

  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: list[i], len: csize_t(len(list[i])))

  fcQFileSelector_setExtraSelectors(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc allSelectors*(self: QFileSelector, ): seq[string] =

  var v_ma = fcQFileSelector_allSelectors(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc tr2*(_: type QFileSelector, s: cstring, c: cstring): string =

  let v_ms = fcQFileSelector_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFileSelector, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFileSelector_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QFileSelector, s: cstring, c: cstring): string =

  let v_ms = fcQFileSelector_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QFileSelector, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFileSelector_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QFileSelector, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFileSelector_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFileSelectormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFileSelector, slot: proc(super: QFileSelectormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileSelectormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_metacall(self: ptr cQFileSelector, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFileSelector_metacall ".} =
  type Cb = proc(super: QFileSelectormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFileSelector(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QFileSelector, event: gen_qcoreevent.QEvent): bool =


  fQFileSelector_virtualbase_event(self.h, event.h)

type QFileSelectoreventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFileSelector, slot: proc(super: QFileSelectoreventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSelectoreventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_event(self: ptr cQFileSelector, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSelector_event ".} =
  type Cb = proc(super: QFileSelectoreventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFileSelector(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QFileSelector, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQFileSelector_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFileSelectoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFileSelector, slot: proc(super: QFileSelectoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSelectoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_eventFilter(self: ptr cQFileSelector, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSelector_eventFilter ".} =
  type Cb = proc(super: QFileSelectoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFileSelector(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFileSelector, event: gen_qcoreevent.QTimerEvent): void =


  fQFileSelector_virtualbase_timerEvent(self.h, event.h)

type QFileSelectortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFileSelector, slot: proc(super: QFileSelectortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSelectortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_timerEvent(self: ptr cQFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_timerEvent ".} =
  type Cb = proc(super: QFileSelectortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFileSelector(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QFileSelector, event: gen_qcoreevent.QChildEvent): void =


  fQFileSelector_virtualbase_childEvent(self.h, event.h)

type QFileSelectorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFileSelector, slot: proc(super: QFileSelectorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSelectorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_childEvent(self: ptr cQFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_childEvent ".} =
  type Cb = proc(super: QFileSelectorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFileSelector(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFileSelector, event: gen_qcoreevent.QEvent): void =


  fQFileSelector_virtualbase_customEvent(self.h, event.h)

type QFileSelectorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFileSelector, slot: proc(super: QFileSelectorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSelectorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_customEvent(self: ptr cQFileSelector, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_customEvent ".} =
  type Cb = proc(super: QFileSelectorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFileSelector(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFileSelector, signal: gen_qmetaobject.QMetaMethod): void =


  fQFileSelector_virtualbase_connectNotify(self.h, signal.h)

type QFileSelectorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFileSelector, slot: proc(super: QFileSelectorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSelectorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_connectNotify(self: ptr cQFileSelector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_connectNotify ".} =
  type Cb = proc(super: QFileSelectorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFileSelector(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFileSelector, signal: gen_qmetaobject.QMetaMethod): void =


  fQFileSelector_virtualbase_disconnectNotify(self.h, signal.h)

type QFileSelectordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFileSelector, slot: proc(super: QFileSelectordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSelectordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSelector_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSelector_disconnectNotify(self: ptr cQFileSelector, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSelector_disconnectNotify ".} =
  type Cb = proc(super: QFileSelectordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFileSelector(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QFileSelector): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQFileSelector_staticMetaObject())
proc delete*(self: QFileSelector) =
  fcQFileSelector_delete(self.h)
