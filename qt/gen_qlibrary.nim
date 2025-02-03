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
{.compile("gen_qlibrary.cpp", cflags).}


type QLibraryLoadHint* = cint
const
  QLibraryResolveAllSymbolsHint* = 1
  QLibraryExportExternalSymbolsHint* = 2
  QLibraryLoadArchiveMemberHint* = 4
  QLibraryPreventUnloadHint* = 8
  QLibraryDeepBindHint* = 16



import gen_qlibrary_types
export gen_qlibrary_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQLibrary*{.exportc: "QLibrary", incompleteStruct.} = object

proc fcQLibrary_new(): ptr cQLibrary {.importc: "QLibrary_new".}
proc fcQLibrary_new2(fileName: struct_miqt_string): ptr cQLibrary {.importc: "QLibrary_new2".}
proc fcQLibrary_new3(fileName: struct_miqt_string, verNum: cint): ptr cQLibrary {.importc: "QLibrary_new3".}
proc fcQLibrary_new4(fileName: struct_miqt_string, version: struct_miqt_string): ptr cQLibrary {.importc: "QLibrary_new4".}
proc fcQLibrary_new5(parent: pointer): ptr cQLibrary {.importc: "QLibrary_new5".}
proc fcQLibrary_new6(fileName: struct_miqt_string, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new6".}
proc fcQLibrary_new7(fileName: struct_miqt_string, verNum: cint, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new7".}
proc fcQLibrary_new8(fileName: struct_miqt_string, version: struct_miqt_string, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new8".}
proc fcQLibrary_metaObject(self: pointer, ): pointer {.importc: "QLibrary_metaObject".}
proc fcQLibrary_metacast(self: pointer, param1: cstring): pointer {.importc: "QLibrary_metacast".}
proc fcQLibrary_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLibrary_metacall".}
proc fcQLibrary_tr(s: cstring): struct_miqt_string {.importc: "QLibrary_tr".}
proc fcQLibrary_trUtf8(s: cstring): struct_miqt_string {.importc: "QLibrary_trUtf8".}
proc fcQLibrary_load(self: pointer, ): bool {.importc: "QLibrary_load".}
proc fcQLibrary_unload(self: pointer, ): bool {.importc: "QLibrary_unload".}
proc fcQLibrary_isLoaded(self: pointer, ): bool {.importc: "QLibrary_isLoaded".}
proc fcQLibrary_isLibrary(fileName: struct_miqt_string): bool {.importc: "QLibrary_isLibrary".}
proc fcQLibrary_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QLibrary_setFileName".}
proc fcQLibrary_fileName(self: pointer, ): struct_miqt_string {.importc: "QLibrary_fileName".}
proc fcQLibrary_setFileNameAndVersion(self: pointer, fileName: struct_miqt_string, verNum: cint): void {.importc: "QLibrary_setFileNameAndVersion".}
proc fcQLibrary_setFileNameAndVersion2(self: pointer, fileName: struct_miqt_string, version: struct_miqt_string): void {.importc: "QLibrary_setFileNameAndVersion2".}
proc fcQLibrary_errorString(self: pointer, ): struct_miqt_string {.importc: "QLibrary_errorString".}
proc fcQLibrary_setLoadHints(self: pointer, hints: cint): void {.importc: "QLibrary_setLoadHints".}
proc fcQLibrary_loadHints(self: pointer, ): cint {.importc: "QLibrary_loadHints".}
proc fcQLibrary_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLibrary_tr2".}
proc fcQLibrary_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLibrary_tr3".}
proc fcQLibrary_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QLibrary_trUtf82".}
proc fcQLibrary_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLibrary_trUtf83".}
proc fQLibrary_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLibrary_virtualbase_metacall".}
proc fcQLibrary_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_metacall".}
proc fQLibrary_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QLibrary_virtualbase_event".}
proc fcQLibrary_override_virtual_event(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_event".}
proc fQLibrary_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLibrary_virtualbase_eventFilter".}
proc fcQLibrary_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_eventFilter".}
proc fQLibrary_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLibrary_virtualbase_timerEvent".}
proc fcQLibrary_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_timerEvent".}
proc fQLibrary_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLibrary_virtualbase_childEvent".}
proc fcQLibrary_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_childEvent".}
proc fQLibrary_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLibrary_virtualbase_customEvent".}
proc fcQLibrary_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_customEvent".}
proc fQLibrary_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLibrary_virtualbase_connectNotify".}
proc fcQLibrary_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_connectNotify".}
proc fQLibrary_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLibrary_virtualbase_disconnectNotify".}
proc fcQLibrary_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLibrary_override_virtual_disconnectNotify".}
proc fcQLibrary_delete(self: pointer) {.importc: "QLibrary_delete".}


func init*(T: type QLibrary, h: ptr cQLibrary): QLibrary =
  T(h: h)
proc create*(T: type QLibrary, ): QLibrary =

  QLibrary.init(fcQLibrary_new())
proc create*(T: type QLibrary, fileName: string): QLibrary =

  QLibrary.init(fcQLibrary_new2(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))
proc create*(T: type QLibrary, fileName: string, verNum: cint): QLibrary =

  QLibrary.init(fcQLibrary_new3(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum))
proc create*(T: type QLibrary, fileName: string, version: string): QLibrary =

  QLibrary.init(fcQLibrary_new4(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version)))))
proc create*(T: type QLibrary, parent: gen_qobject.QObject): QLibrary =

  QLibrary.init(fcQLibrary_new5(parent.h))
proc create*(T: type QLibrary, fileName: string, parent: gen_qobject.QObject): QLibrary =

  QLibrary.init(fcQLibrary_new6(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h))
proc create*(T: type QLibrary, fileName: string, verNum: cint, parent: gen_qobject.QObject): QLibrary =

  QLibrary.init(fcQLibrary_new7(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum, parent.h))
proc create*(T: type QLibrary, fileName: string, version: string, parent: gen_qobject.QObject): QLibrary =

  QLibrary.init(fcQLibrary_new8(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version))), parent.h))
proc metaObject*(self: QLibrary, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQLibrary_metaObject(self.h))

proc metacast*(self: QLibrary, param1: cstring): pointer =

  fcQLibrary_metacast(self.h, param1)

proc metacall*(self: QLibrary, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQLibrary_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QLibrary, s: cstring): string =

  let v_ms = fcQLibrary_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QLibrary, s: cstring): string =

  let v_ms = fcQLibrary_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load*(self: QLibrary, ): bool =

  fcQLibrary_load(self.h)

proc unload*(self: QLibrary, ): bool =

  fcQLibrary_unload(self.h)

proc isLoaded*(self: QLibrary, ): bool =

  fcQLibrary_isLoaded(self.h)

proc isLibrary*(_: type QLibrary, fileName: string): bool =

  fcQLibrary_isLibrary(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setFileName*(self: QLibrary, fileName: string): void =

  fcQLibrary_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc fileName*(self: QLibrary, ): string =

  let v_ms = fcQLibrary_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileNameAndVersion*(self: QLibrary, fileName: string, verNum: cint): void =

  fcQLibrary_setFileNameAndVersion(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum)

proc setFileNameAndVersion2*(self: QLibrary, fileName: string, version: string): void =

  fcQLibrary_setFileNameAndVersion2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version))))

proc errorString*(self: QLibrary, ): string =

  let v_ms = fcQLibrary_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLoadHints*(self: QLibrary, hints: QLibraryLoadHint): void =

  fcQLibrary_setLoadHints(self.h, cint(hints))

proc loadHints*(self: QLibrary, ): QLibraryLoadHint =

  QLibraryLoadHint(fcQLibrary_loadHints(self.h))

proc tr2*(_: type QLibrary, s: cstring, c: cstring): string =

  let v_ms = fcQLibrary_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QLibrary, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQLibrary_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QLibrary, s: cstring, c: cstring): string =

  let v_ms = fcQLibrary_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QLibrary, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQLibrary_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QLibrary, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQLibrary_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLibrarymetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QLibrary, slot: proc(super: QLibrarymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QLibrarymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_metacall(self: ptr cQLibrary, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLibrary_metacall ".} =
  type Cb = proc(super: QLibrarymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QLibrary(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QLibrary, event: gen_qcoreevent.QEvent): bool =


  fQLibrary_virtualbase_event(self.h, event.h)

type QLibraryeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QLibrary, slot: proc(super: QLibraryeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLibraryeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_event(self: ptr cQLibrary, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QLibrary_event ".} =
  type Cb = proc(super: QLibraryeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QLibrary(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QLibrary, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQLibrary_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLibraryeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QLibrary, slot: proc(super: QLibraryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLibraryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_eventFilter(self: ptr cQLibrary, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLibrary_eventFilter ".} =
  type Cb = proc(super: QLibraryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QLibrary(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QLibrary, event: gen_qcoreevent.QTimerEvent): void =


  fQLibrary_virtualbase_timerEvent(self.h, event.h)

type QLibrarytimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QLibrary, slot: proc(super: QLibrarytimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLibrarytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_timerEvent(self: ptr cQLibrary, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLibrary_timerEvent ".} =
  type Cb = proc(super: QLibrarytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QLibrary(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QLibrary, event: gen_qcoreevent.QChildEvent): void =


  fQLibrary_virtualbase_childEvent(self.h, event.h)

type QLibrarychildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QLibrary, slot: proc(super: QLibrarychildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLibrarychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_childEvent(self: ptr cQLibrary, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLibrary_childEvent ".} =
  type Cb = proc(super: QLibrarychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QLibrary(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QLibrary, event: gen_qcoreevent.QEvent): void =


  fQLibrary_virtualbase_customEvent(self.h, event.h)

type QLibrarycustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QLibrary, slot: proc(super: QLibrarycustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLibrarycustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_customEvent(self: ptr cQLibrary, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLibrary_customEvent ".} =
  type Cb = proc(super: QLibrarycustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QLibrary(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QLibrary, signal: gen_qmetaobject.QMetaMethod): void =


  fQLibrary_virtualbase_connectNotify(self.h, signal.h)

type QLibraryconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QLibrary, slot: proc(super: QLibraryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLibraryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_connectNotify(self: ptr cQLibrary, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLibrary_connectNotify ".} =
  type Cb = proc(super: QLibraryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QLibrary(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QLibrary, signal: gen_qmetaobject.QMetaMethod): void =


  fQLibrary_virtualbase_disconnectNotify(self.h, signal.h)

type QLibrarydisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QLibrary, slot: proc(super: QLibrarydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLibrarydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLibrary_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLibrary_disconnectNotify(self: ptr cQLibrary, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLibrary_disconnectNotify ".} =
  type Cb = proc(super: QLibrarydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QLibrary(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QLibrary) =
  fcQLibrary_delete(self.h)
