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
{.compile("gen_qfilesystemwatcher.cpp", cflags).}


import gen_qfilesystemwatcher_types
export gen_qfilesystemwatcher_types

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

type cQFileSystemWatcher*{.exportc: "QFileSystemWatcher", incompleteStruct.} = object

proc fcQFileSystemWatcher_new(): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new".}
proc fcQFileSystemWatcher_new2(paths: struct_miqt_array): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new2".}
proc fcQFileSystemWatcher_new3(parent: pointer): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new3".}
proc fcQFileSystemWatcher_new4(paths: struct_miqt_array, parent: pointer): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new4".}
proc fcQFileSystemWatcher_metaObject(self: pointer, ): pointer {.importc: "QFileSystemWatcher_metaObject".}
proc fcQFileSystemWatcher_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemWatcher_metacast".}
proc fcQFileSystemWatcher_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSystemWatcher_metacall".}
proc fcQFileSystemWatcher_tr(s: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_tr".}
proc fcQFileSystemWatcher_trUtf8(s: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_trUtf8".}
proc fcQFileSystemWatcher_addPath(self: pointer, file: struct_miqt_string): bool {.importc: "QFileSystemWatcher_addPath".}
proc fcQFileSystemWatcher_addPaths(self: pointer, files: struct_miqt_array): struct_miqt_array {.importc: "QFileSystemWatcher_addPaths".}
proc fcQFileSystemWatcher_removePath(self: pointer, file: struct_miqt_string): bool {.importc: "QFileSystemWatcher_removePath".}
proc fcQFileSystemWatcher_removePaths(self: pointer, files: struct_miqt_array): struct_miqt_array {.importc: "QFileSystemWatcher_removePaths".}
proc fcQFileSystemWatcher_files(self: pointer, ): struct_miqt_array {.importc: "QFileSystemWatcher_files".}
proc fcQFileSystemWatcher_directories(self: pointer, ): struct_miqt_array {.importc: "QFileSystemWatcher_directories".}
proc fcQFileSystemWatcher_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_tr2".}
proc fcQFileSystemWatcher_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSystemWatcher_tr3".}
proc fcQFileSystemWatcher_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_trUtf82".}
proc fcQFileSystemWatcher_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSystemWatcher_trUtf83".}
proc fQFileSystemWatcher_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QFileSystemWatcher_virtualbase_metaObject".}
proc fcQFileSystemWatcher_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_metaObject".}
proc fQFileSystemWatcher_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QFileSystemWatcher_virtualbase_metacast".}
proc fcQFileSystemWatcher_override_virtual_metacast(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_metacast".}
proc fQFileSystemWatcher_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFileSystemWatcher_virtualbase_metacall".}
proc fcQFileSystemWatcher_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_metacall".}
proc fQFileSystemWatcher_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFileSystemWatcher_virtualbase_event".}
proc fcQFileSystemWatcher_override_virtual_event(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_event".}
proc fQFileSystemWatcher_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFileSystemWatcher_virtualbase_eventFilter".}
proc fcQFileSystemWatcher_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_eventFilter".}
proc fQFileSystemWatcher_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFileSystemWatcher_virtualbase_timerEvent".}
proc fcQFileSystemWatcher_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_timerEvent".}
proc fQFileSystemWatcher_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFileSystemWatcher_virtualbase_childEvent".}
proc fcQFileSystemWatcher_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_childEvent".}
proc fQFileSystemWatcher_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFileSystemWatcher_virtualbase_customEvent".}
proc fcQFileSystemWatcher_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_customEvent".}
proc fQFileSystemWatcher_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFileSystemWatcher_virtualbase_connectNotify".}
proc fcQFileSystemWatcher_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_connectNotify".}
proc fQFileSystemWatcher_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFileSystemWatcher_virtualbase_disconnectNotify".}
proc fcQFileSystemWatcher_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_disconnectNotify".}
proc fcQFileSystemWatcher_staticMetaObject(): pointer {.importc: "QFileSystemWatcher_staticMetaObject".}
proc fcQFileSystemWatcher_delete(self: pointer) {.importc: "QFileSystemWatcher_delete".}


func init*(T: type QFileSystemWatcher, h: ptr cQFileSystemWatcher): QFileSystemWatcher =
  T(h: h)
proc create*(T: type QFileSystemWatcher, ): QFileSystemWatcher =

  QFileSystemWatcher.init(fcQFileSystemWatcher_new())
proc create*(T: type QFileSystemWatcher, paths: seq[string]): QFileSystemWatcher =

  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  QFileSystemWatcher.init(fcQFileSystemWatcher_new2(struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0]))))
proc create*(T: type QFileSystemWatcher, parent: gen_qobject.QObject): QFileSystemWatcher =

  QFileSystemWatcher.init(fcQFileSystemWatcher_new3(parent.h))
proc create*(T: type QFileSystemWatcher, paths: seq[string], parent: gen_qobject.QObject): QFileSystemWatcher =

  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  QFileSystemWatcher.init(fcQFileSystemWatcher_new4(struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])), parent.h))
proc metaObject*(self: QFileSystemWatcher, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFileSystemWatcher_metaObject(self.h))

proc metacast*(self: QFileSystemWatcher, param1: cstring): pointer =

  fcQFileSystemWatcher_metacast(self.h, param1)

proc metacall*(self: QFileSystemWatcher, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFileSystemWatcher_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFileSystemWatcher, s: cstring): string =

  let v_ms = fcQFileSystemWatcher_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QFileSystemWatcher, s: cstring): string =

  let v_ms = fcQFileSystemWatcher_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPath*(self: QFileSystemWatcher, file: string): bool =

  fcQFileSystemWatcher_addPath(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc addPaths*(self: QFileSystemWatcher, files: seq[string]): seq[string] =

  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: files[i], len: csize_t(len(files[i])))

  var v_ma = fcQFileSystemWatcher_addPaths(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc removePath*(self: QFileSystemWatcher, file: string): bool =

  fcQFileSystemWatcher_removePath(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc removePaths*(self: QFileSystemWatcher, files: seq[string]): seq[string] =

  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: files[i], len: csize_t(len(files[i])))

  var v_ma = fcQFileSystemWatcher_removePaths(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc files*(self: QFileSystemWatcher, ): seq[string] =

  var v_ma = fcQFileSystemWatcher_files(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc directories*(self: QFileSystemWatcher, ): seq[string] =

  var v_ma = fcQFileSystemWatcher_directories(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc tr2*(_: type QFileSystemWatcher, s: cstring, c: cstring): string =

  let v_ms = fcQFileSystemWatcher_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFileSystemWatcher, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFileSystemWatcher_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QFileSystemWatcher, s: cstring, c: cstring): string =

  let v_ms = fcQFileSystemWatcher_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QFileSystemWatcher, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFileSystemWatcher_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QFileSystemWatcher, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQFileSystemWatcher_virtualbase_metaObject(self.h))

type QFileSystemWatchermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatchermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatchermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_metaObject(self: ptr cQFileSystemWatcher, slot: int): pointer {.exportc: "miqt_exec_callback_QFileSystemWatcher_metaObject ".} =
  type Cb = proc(super: QFileSystemWatchermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QFileSystemWatcher(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QFileSystemWatcher, param1: cstring): pointer =


  fQFileSystemWatcher_virtualbase_metacast(self.h, param1)

type QFileSystemWatchermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatchermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatchermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_metacast(self: ptr cQFileSystemWatcher, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QFileSystemWatcher_metacast ".} =
  type Cb = proc(super: QFileSystemWatchermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QFileSystemWatcher(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QFileSystemWatcher, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFileSystemWatcher_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFileSystemWatchermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatchermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatchermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_metacall(self: ptr cQFileSystemWatcher, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFileSystemWatcher_metacall ".} =
  type Cb = proc(super: QFileSystemWatchermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFileSystemWatcher(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QFileSystemWatcher, event: gen_qcoreevent.QEvent): bool =


  fQFileSystemWatcher_virtualbase_event(self.h, event.h)

type QFileSystemWatchereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatchereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatchereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_event(self: ptr cQFileSystemWatcher, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemWatcher_event ".} =
  type Cb = proc(super: QFileSystemWatchereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFileSystemWatcher(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QFileSystemWatcher, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQFileSystemWatcher_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFileSystemWatchereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatchereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatchereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_eventFilter(self: ptr cQFileSystemWatcher, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemWatcher_eventFilter ".} =
  type Cb = proc(super: QFileSystemWatchereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFileSystemWatcher(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFileSystemWatcher, event: gen_qcoreevent.QTimerEvent): void =


  fQFileSystemWatcher_virtualbase_timerEvent(self.h, event.h)

type QFileSystemWatchertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatchertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatchertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_timerEvent(self: ptr cQFileSystemWatcher, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_timerEvent ".} =
  type Cb = proc(super: QFileSystemWatchertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFileSystemWatcher(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QFileSystemWatcher, event: gen_qcoreevent.QChildEvent): void =


  fQFileSystemWatcher_virtualbase_childEvent(self.h, event.h)

type QFileSystemWatcherchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatcherchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatcherchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_childEvent(self: ptr cQFileSystemWatcher, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_childEvent ".} =
  type Cb = proc(super: QFileSystemWatcherchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFileSystemWatcher(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFileSystemWatcher, event: gen_qcoreevent.QEvent): void =


  fQFileSystemWatcher_virtualbase_customEvent(self.h, event.h)

type QFileSystemWatchercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatchercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatchercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_customEvent(self: ptr cQFileSystemWatcher, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_customEvent ".} =
  type Cb = proc(super: QFileSystemWatchercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFileSystemWatcher(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFileSystemWatcher, signal: gen_qmetaobject.QMetaMethod): void =


  fQFileSystemWatcher_virtualbase_connectNotify(self.h, signal.h)

type QFileSystemWatcherconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatcherconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatcherconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_connectNotify(self: ptr cQFileSystemWatcher, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_connectNotify ".} =
  type Cb = proc(super: QFileSystemWatcherconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFileSystemWatcher(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFileSystemWatcher, signal: gen_qmetaobject.QMetaMethod): void =


  fQFileSystemWatcher_virtualbase_disconnectNotify(self.h, signal.h)

type QFileSystemWatcherdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFileSystemWatcher, slot: proc(super: QFileSystemWatcherdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemWatcherdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_disconnectNotify(self: ptr cQFileSystemWatcher, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_disconnectNotify ".} =
  type Cb = proc(super: QFileSystemWatcherdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFileSystemWatcher(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QFileSystemWatcher): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQFileSystemWatcher_staticMetaObject())
proc delete*(self: QFileSystemWatcher) =
  fcQFileSystemWatcher_delete(self.h)
