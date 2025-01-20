import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qaudiorecorder.cpp", cflags).}


import gen_qaudiorecorder_types
export gen_qaudiorecorder_types

import
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmediarecorder,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qmediaobject,
  gen_qmediarecorder,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQAudioRecorder*{.exportc: "QAudioRecorder", incompleteStruct.} = object

proc fcQAudioRecorder_new(): ptr cQAudioRecorder {.importc: "QAudioRecorder_new".}
proc fcQAudioRecorder_new2(parent: pointer): ptr cQAudioRecorder {.importc: "QAudioRecorder_new2".}
proc fcQAudioRecorder_metaObject(self: pointer, ): pointer {.importc: "QAudioRecorder_metaObject".}
proc fcQAudioRecorder_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRecorder_metacast".}
proc fcQAudioRecorder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioRecorder_metacall".}
proc fcQAudioRecorder_tr(s: cstring): struct_miqt_string {.importc: "QAudioRecorder_tr".}
proc fcQAudioRecorder_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioRecorder_trUtf8".}
proc fcQAudioRecorder_audioInputs(self: pointer, ): struct_miqt_array {.importc: "QAudioRecorder_audioInputs".}
proc fcQAudioRecorder_defaultAudioInput(self: pointer, ): struct_miqt_string {.importc: "QAudioRecorder_defaultAudioInput".}
proc fcQAudioRecorder_audioInputDescription(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAudioRecorder_audioInputDescription".}
proc fcQAudioRecorder_audioInput(self: pointer, ): struct_miqt_string {.importc: "QAudioRecorder_audioInput".}
proc fcQAudioRecorder_setAudioInput(self: pointer, name: struct_miqt_string): void {.importc: "QAudioRecorder_setAudioInput".}
proc fcQAudioRecorder_audioInputChanged(self: pointer, name: struct_miqt_string): void {.importc: "QAudioRecorder_audioInputChanged".}
proc fQAudioRecorder_connect_audioInputChanged(self: pointer, slot: int) {.importc: "QAudioRecorder_connect_audioInputChanged".}
proc fcQAudioRecorder_availableAudioInputsChanged(self: pointer, ): void {.importc: "QAudioRecorder_availableAudioInputsChanged".}
proc fQAudioRecorder_connect_availableAudioInputsChanged(self: pointer, slot: int) {.importc: "QAudioRecorder_connect_availableAudioInputsChanged".}
proc fcQAudioRecorder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRecorder_tr2".}
proc fcQAudioRecorder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRecorder_tr3".}
proc fcQAudioRecorder_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRecorder_trUtf82".}
proc fcQAudioRecorder_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRecorder_trUtf83".}
proc fQAudioRecorder_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioRecorder_virtualbase_metaObject".}
proc fcQAudioRecorder_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_metaObject".}
proc fQAudioRecorder_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioRecorder_virtualbase_metacast".}
proc fcQAudioRecorder_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_metacast".}
proc fQAudioRecorder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioRecorder_virtualbase_metacall".}
proc fcQAudioRecorder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_metacall".}
proc fQAudioRecorder_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QAudioRecorder_virtualbase_mediaObject".}
proc fcQAudioRecorder_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_mediaObject".}
proc fQAudioRecorder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool{.importc: "QAudioRecorder_virtualbase_setMediaObject".}
proc fcQAudioRecorder_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_setMediaObject".}
proc fQAudioRecorder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioRecorder_virtualbase_event".}
proc fcQAudioRecorder_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_event".}
proc fQAudioRecorder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioRecorder_virtualbase_eventFilter".}
proc fcQAudioRecorder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_eventFilter".}
proc fQAudioRecorder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioRecorder_virtualbase_timerEvent".}
proc fcQAudioRecorder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_timerEvent".}
proc fQAudioRecorder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioRecorder_virtualbase_childEvent".}
proc fcQAudioRecorder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_childEvent".}
proc fQAudioRecorder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioRecorder_virtualbase_customEvent".}
proc fcQAudioRecorder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_customEvent".}
proc fQAudioRecorder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioRecorder_virtualbase_connectNotify".}
proc fcQAudioRecorder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_connectNotify".}
proc fQAudioRecorder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioRecorder_virtualbase_disconnectNotify".}
proc fcQAudioRecorder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_disconnectNotify".}
proc fcQAudioRecorder_staticMetaObject(): pointer {.importc: "QAudioRecorder_staticMetaObject".}
proc fcQAudioRecorder_delete(self: pointer) {.importc: "QAudioRecorder_delete".}


func init*(T: type QAudioRecorder, h: ptr cQAudioRecorder): QAudioRecorder =
  T(h: h)
proc create*(T: type QAudioRecorder, ): QAudioRecorder =

  QAudioRecorder.init(fcQAudioRecorder_new())
proc create*(T: type QAudioRecorder, parent: gen_qobject.QObject): QAudioRecorder =

  QAudioRecorder.init(fcQAudioRecorder_new2(parent.h))
proc metaObject*(self: QAudioRecorder, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioRecorder_metaObject(self.h))

proc metacast*(self: QAudioRecorder, param1: cstring): pointer =

  fcQAudioRecorder_metacast(self.h, param1)

proc metacall*(self: QAudioRecorder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioRecorder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioRecorder, s: cstring): string =

  let v_ms = fcQAudioRecorder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAudioRecorder, s: cstring): string =

  let v_ms = fcQAudioRecorder_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInputs*(self: QAudioRecorder, ): seq[string] =

  var v_ma = fcQAudioRecorder_audioInputs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc defaultAudioInput*(self: QAudioRecorder, ): string =

  let v_ms = fcQAudioRecorder_defaultAudioInput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInputDescription*(self: QAudioRecorder, name: string): string =

  let v_ms = fcQAudioRecorder_audioInputDescription(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInput*(self: QAudioRecorder, ): string =

  let v_ms = fcQAudioRecorder_audioInput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAudioInput*(self: QAudioRecorder, name: string): void =

  fcQAudioRecorder_setAudioInput(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc audioInputChanged*(self: QAudioRecorder, name: string): void =

  fcQAudioRecorder_audioInputChanged(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc miqt_exec_callback_QAudioRecorder_audioInputChanged(slot: int, name: struct_miqt_string) {.exportc.} =
  type Cb = proc(name: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret


  nimfunc[](slotval1)

proc onaudioInputChanged*(self: QAudioRecorder, slot: proc(name: string)) =
  type Cb = proc(name: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRecorder_connect_audioInputChanged(self.h, cast[int](addr tmp[]))
proc availableAudioInputsChanged*(self: QAudioRecorder, ): void =

  fcQAudioRecorder_availableAudioInputsChanged(self.h)

proc miqt_exec_callback_QAudioRecorder_availableAudioInputsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onavailableAudioInputsChanged*(self: QAudioRecorder, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioRecorder_connect_availableAudioInputsChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioRecorder, s: cstring, c: cstring): string =

  let v_ms = fcQAudioRecorder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioRecorder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioRecorder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAudioRecorder, s: cstring, c: cstring): string =

  let v_ms = fcQAudioRecorder_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAudioRecorder, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioRecorder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAudioRecorder, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAudioRecorder_virtualbase_metaObject(self.h))

type QAudioRecordermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAudioRecorder, slot: proc(super: QAudioRecordermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecordermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_metaObject(self: ptr cQAudioRecorder, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioRecorder_metaObject ".} =
  type Cb = proc(super: QAudioRecordermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAudioRecorder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAudioRecorder, param1: cstring): pointer =


  fQAudioRecorder_virtualbase_metacast(self.h, param1)

type QAudioRecordermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAudioRecorder, slot: proc(super: QAudioRecordermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecordermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_metacast(self: ptr cQAudioRecorder, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioRecorder_metacast ".} =
  type Cb = proc(super: QAudioRecordermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAudioRecorder(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAudioRecorder, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioRecorder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioRecordermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioRecorder, slot: proc(super: QAudioRecordermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecordermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_metacall(self: ptr cQAudioRecorder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioRecorder_metacall ".} =
  type Cb = proc(super: QAudioRecordermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioRecorder(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_mediaObject(self: QAudioRecorder, ): gen_qmediaobject.QMediaObject =


  gen_qmediaobject.QMediaObject(h: fQAudioRecorder_virtualbase_mediaObject(self.h))

type QAudioRecordermediaObjectBase* = proc(): gen_qmediaobject.QMediaObject
proc onmediaObject*(self: QAudioRecorder, slot: proc(super: QAudioRecordermediaObjectBase): gen_qmediaobject.QMediaObject) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecordermediaObjectBase): gen_qmediaobject.QMediaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_mediaObject(self: ptr cQAudioRecorder, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioRecorder_mediaObject ".} =
  type Cb = proc(super: QAudioRecordermediaObjectBase): gen_qmediaobject.QMediaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mediaObject(QAudioRecorder(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setMediaObject(self: QAudioRecorder, objectVal: gen_qmediaobject.QMediaObject): bool =


  fQAudioRecorder_virtualbase_setMediaObject(self.h, objectVal.h)

type QAudioRecordersetMediaObjectBase* = proc(objectVal: gen_qmediaobject.QMediaObject): bool
proc onsetMediaObject*(self: QAudioRecorder, slot: proc(super: QAudioRecordersetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecordersetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_setMediaObject(self: ptr cQAudioRecorder, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QAudioRecorder_setMediaObject ".} =
  type Cb = proc(super: QAudioRecordersetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qmediaobject.QMediaObject): auto =
    callVirtualBase_setMediaObject(QAudioRecorder(h: self), objectVal)
  let slotval1 = gen_qmediaobject.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QAudioRecorder, event: gen_qcoreevent.QEvent): bool =


  fQAudioRecorder_virtualbase_event(self.h, event.h)

type QAudioRecordereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioRecorder, slot: proc(super: QAudioRecordereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecordereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_event(self: ptr cQAudioRecorder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioRecorder_event ".} =
  type Cb = proc(super: QAudioRecordereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioRecorder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioRecorder, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioRecorder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioRecordereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioRecorder, slot: proc(super: QAudioRecordereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecordereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_eventFilter(self: ptr cQAudioRecorder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioRecorder_eventFilter ".} =
  type Cb = proc(super: QAudioRecordereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioRecorder(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioRecorder, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioRecorder_virtualbase_timerEvent(self.h, event.h)

type QAudioRecordertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioRecorder, slot: proc(super: QAudioRecordertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecordertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_timerEvent(self: ptr cQAudioRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_timerEvent ".} =
  type Cb = proc(super: QAudioRecordertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioRecorder(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioRecorder, event: gen_qcoreevent.QChildEvent): void =


  fQAudioRecorder_virtualbase_childEvent(self.h, event.h)

type QAudioRecorderchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioRecorder, slot: proc(super: QAudioRecorderchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecorderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_childEvent(self: ptr cQAudioRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_childEvent ".} =
  type Cb = proc(super: QAudioRecorderchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioRecorder(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioRecorder, event: gen_qcoreevent.QEvent): void =


  fQAudioRecorder_virtualbase_customEvent(self.h, event.h)

type QAudioRecordercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioRecorder, slot: proc(super: QAudioRecordercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecordercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_customEvent(self: ptr cQAudioRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_customEvent ".} =
  type Cb = proc(super: QAudioRecordercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioRecorder(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioRecorder, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioRecorder_virtualbase_connectNotify(self.h, signal.h)

type QAudioRecorderconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioRecorder, slot: proc(super: QAudioRecorderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecorderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_connectNotify(self: ptr cQAudioRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_connectNotify ".} =
  type Cb = proc(super: QAudioRecorderconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioRecorder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioRecorder, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioRecorder_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioRecorderdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioRecorder, slot: proc(super: QAudioRecorderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioRecorderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_disconnectNotify(self: ptr cQAudioRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_disconnectNotify ".} =
  type Cb = proc(super: QAudioRecorderdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioRecorder(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAudioRecorder): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAudioRecorder_staticMetaObject())
proc delete*(self: QAudioRecorder) =
  fcQAudioRecorder_delete(self.h)
